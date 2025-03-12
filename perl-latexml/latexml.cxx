#include <filesystem>

#include <windows.h>

#include <shlwapi.h>
#pragma comment(lib, "Shlwapi.lib")

extern "C"
{
    char *quoted(const char *data);
    int create_and_wait_for_subprocess(char *command);
    char *join_executable_and_args(char *executable, char **args, int argc);
}

std::filesystem::path program_path()
{
    std::wstring filename(MAX_PATH, L'\0');
    for (auto i = filename.size(); i >= filename.size();)
    {
        filename.resize(2 * filename.size());
        i = GetModuleFileNameW(NULL, filename.data(), filename.size());
    }

    return std::filesystem::path(filename).parent_path();
}

void add_environment_path(const std::vector<std::filesystem::path> &paths)
{
    std::wstring path{};
    for (auto &i : paths)
        path += i.wstring() + L";";

    std::wstring value(GetEnvironmentVariableW(L"PATH", nullptr, 0), L'\0');
    GetEnvironmentVariableW(L"PATH", value.data(), value.size());
    SetEnvironmentVariableW(L"PATH", (path + value).c_str());
}

#pragma comment(linker, "/subsystem:console")
#pragma comment(linker, "/entry:wmainCRTStartup")
int wmain(int argc, wchar_t *argv[])
{
    const std::filesystem::path prefix(program_path().parent_path() / "Library");

    add_environment_path({
        prefix / "ucrt64" / "bin",
        prefix / "mingw-w64" / "bin",
        prefix / "bin",
    });

    std::string perl((prefix / "bin" / "perl.exe").string());

    std::vector<char *> args{
        quoted(perl.c_str()),
        quoted((prefix / "site" / "bin" / LATEXML).string().c_str()),
        nullptr,
    };

    std::string commandline(join_executable_and_args(perl.data(), args.data(), args.size() - 1));
    commandline += std::string(" ") + PathGetArgsA(GetCommandLineA());

    return create_and_wait_for_subprocess(commandline.data());
}
