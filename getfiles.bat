@echo off
setlocal enabledelayedexpansion

REM Khởi tạo biến mảng
set list=

REM Lặp qua tất cả file .png trong thư mục hiện tại
for %%f in (*.png) do (
    if defined list (
        set list=!list!, "%%f"
    ) else (
        set list=["%%f"
    )
)

REM Đóng mảng
if defined list (
    set list=!list!]
)

REM Ghi ra file result.txt
echo !list! > result.txt

echo Done! File result.txt da duoc tao.
pause