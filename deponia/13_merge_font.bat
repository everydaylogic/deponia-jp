set relocate_font_png_cmd=..\bin\relocate_font_png.exe
set mask_webp_cmd=..\bin\mask_webp.exe
set modify_font_info_cmd=..\bin\modify_font_info.exe

set cwebp_cmd=..\bin\cwebp.exe
set cwebp_option=-q 90

set orig_dir=ORIG_DATA_UNMASKED
set in_dir=FONT_WORK
set out_dir=FONT_MERGED
set masked_dir=FONT_NEW

set charset_orig_standard=charset_orig_standard.txt
set charset_ja=charset_ja.txt

set in_font_cfg=font.cfg
set out_font_cfg=font_new.cfg
set list_file=rect_list.txt

if not exist %out_dir% mkdir %out_dir%

%relocate_font_png_cmd% --overwrap  %orig_dir%\00277.system_standard.png  %orig_dir%\00277.txt -a %in_dir%\system_standard.png %in_dir%\system_standard.txt %out_dir%\00277.system_standard.png  %out_dir%\00277.txt --size 2048 1500 --sort --charset %charset_orig_standard%    --charset %charset_ja%


for %%a in ( %out_dir%\00277.*.png ) do (
	%cwebp_cmd% %cwebp_option% %%a -o %out_dir%\%%~na.webp
)

%mask_webp_cmd% %out_dir% %masked_dir%

%modify_font_info_cmd% %in_font_cfg% %list_file% %out_font_cfg%

pause
