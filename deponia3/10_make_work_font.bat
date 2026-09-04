set relocate_font_png_cmd=..\bin\relocate_font_png.exe
set charset=charset_work.txt
set in_dir=FONT_WORK
set out_dir=FONT_WORK

if not exist %out_dir% mkdir %out_dir%

%relocate_font_png_cmd% %in_dir%\gothic_28.png %in_dir%\gothic_28.txt %out_dir%\system_standard.png %out_dir%\system_standard.txt -c %charset% --size 2048 2048 --padding-top 5 --padding-left 1

pause