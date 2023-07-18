#include <windows.h>
#include <cstdio>
#include "headerDonut.h"

void Screen::Screen::GetScreenBufferSize(int& screen_height, int& screen_width) {
    CONSOLE_SCREEN_BUFFER_INFO csbi;
    GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &csbi);
    screen_height = csbi.srWindow.Bottom - csbi.srWindow.Top + 1;
	screen_width = csbi.srWindow.Right - csbi.srWindow.Left + 1;
}
