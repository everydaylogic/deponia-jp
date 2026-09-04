set make_font_png_cmd=..\bin\make_font_png.exe
set make_font_png_bdf_cmd=..\bin\make_font_png_bdf.exe
set out_dir=FONT_WORK

if not exist %out_dir% mkdir %out_dir%

%make_font_png_cmd% -f param_gothic_28.txt

%make_font_png_cmd% -f param_cinecap_white_29.txt
%make_font_png_cmd% -f param_cinecap_29.txt

%make_font_png_cmd% -f param_gothic_black_17.txt
%make_font_png_cmd% -f param_gothic_17.txt
%make_font_png_cmd% -f param_gothic_21.txt
%make_font_png_cmd% -f param_gothic_bold_25.txt

%make_font_png_bdf_cmd% misaki_gothic.bdf charset_kana.txt %out_dir%\pixel_white.png %out_dir%\pixel_white.txt --scale 3.35 --border-width 4 --dot-width 1.3 --dot-height 1.1 --padding-top 10 --spacing 1 --shadow --force-proportional --size 512 512
%make_font_png_bdf_cmd% misaki_gothic.bdf charset_kana.txt %out_dir%\pixel_black.png %out_dir%\pixel_black.txt --scale 3.35                  --dot-width 1.3 --dot-height 1.1 --padding-top 10 --spacing 1          --force-proportional --size 512 512 -c 0 0 0 255

pause