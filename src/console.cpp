#include <windows.h>

#pragma warning(push)
#pragma warning(disable: 6001)

extern "C" void* memset(void* s, int c, size_t n) {
  auto p = reinterpret_cast<unsigned char*>(s);
  while (n--) {
    *p++ = static_cast<unsigned char>(c);
  }
  return s;
}

extern "C" void* memcpy(void* dst, const void* src, size_t n) {
  auto sp = reinterpret_cast<const char*>(src);
  auto dp = reinterpret_cast<char*>(dst);
  while (n--) {
    *dp++ = *sp++;
  }
  return dst;
}

#pragma warning(pop)

constexpr size_t g_max_icon_path = 4096;

extern "C" int main() {
  WCHAR icon[g_max_icon_path] = {};
  const auto size = GetModuleFileName(nullptr, icon, g_max_icon_path - 1);
  if (GetLastError() == ERROR_INSUFFICIENT_BUFFER) {
    return 1;
  }
  if (size < 16) {
    return 2;
  }
  if (size >= g_max_icon_path) {
    return 3;
  }
  memcpy(icon + size - 15, L"Console.lnk\0", 24);

  WCHAR file[] = LR"(C:\Windows\System32\cmd.exe /K cls)";

  STARTUPINFO si = {};
  si.cb = sizeof(si);
  si.dwFlags = 0x800;
  si.lpTitle = icon;
  si.wShowWindow = SW_SHOW;
  PROCESS_INFORMATION pi = {};
  if (!CreateProcess(nullptr, file, nullptr, nullptr, FALSE, 0, nullptr, nullptr, &si, &pi)) {
    return 4;
  }

  CloseHandle(pi.hProcess);
  CloseHandle(pi.hThread);
  return 0;
}