set CMD_MKVMERGE=..\..\bin\mkvmerge.exe
set IN_DIR=.\videos
set OUT_DIR=VIDEOS_NEW

if not exist %OUT_DIR% mkdir %OUT_DIR%

set order=0:0,0:1,0:2,0:3,0:4,1:0,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.000.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv000 --track-order %order% -s !5 %IN_DIR%\video.vv000 --language 0:eng subtitle.000.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.001.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv001 --track-order %order% -s !4 %IN_DIR%\video.vv001 --language 0:eng subtitle.001.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.002.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv002 --track-order %order% -s !4 %IN_DIR%\video.vv002 --language 0:eng subtitle.002.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.003.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv003 --track-order %order% -s !4 %IN_DIR%\video.vv003 --language 0:eng subtitle.003.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.004.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv004 --track-order %order% -s !4 %IN_DIR%\video.vv004 --language 0:eng subtitle.004.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,1:0,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.005.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv005 --track-order %order% -s !5 %IN_DIR%\video.vv005 --language 0:eng subtitle.005.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,1:0,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.008.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv008 --track-order %order% -s !5 %IN_DIR%\video.vv008 --language 0:eng subtitle.008.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.009.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv009 --track-order %order% -s !4 %IN_DIR%\video.vv009 --language 0:eng subtitle.009.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.010.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv010 --track-order %order% -s !4 %IN_DIR%\video.vv010 --language 0:eng subtitle.010.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.011.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv011 --track-order %order% -s !4 %IN_DIR%\video.vv011 --language 0:eng subtitle.011.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.012.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv012 --track-order %order% -s !4 %IN_DIR%\video.vv012 --language 0:eng subtitle.012.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.013.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv013 --track-order %order% -s !4 %IN_DIR%\video.vv013 --language 0:eng subtitle.013.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.014.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv014 --track-order %order% -s !4 %IN_DIR%\video.vv014 --language 0:eng subtitle.014.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.015.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv015 --track-order %order% -s !4 %IN_DIR%\video.vv015 --language 0:eng subtitle.015.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.016.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv016 --track-order %order% -s !4 %IN_DIR%\video.vv016 --language 0:eng subtitle.016.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.017.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv017 --track-order %order% -s !4 %IN_DIR%\video.vv017 --language 0:eng subtitle.017.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.018.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv018 --track-order %order% -s !4 %IN_DIR%\video.vv018 --language 0:eng subtitle.018.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.019.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv019 --track-order %order% -s !4 %IN_DIR%\video.vv019 --language 0:eng subtitle.019.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.020.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv020 --track-order %order% -s !4 %IN_DIR%\video.vv020 --language 0:eng subtitle.020.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.021.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv021 --track-order %order% -s !4 %IN_DIR%\video.vv021 --language 0:eng subtitle.021.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.022.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv022 --track-order %order% -s !4 %IN_DIR%\video.vv022 --language 0:eng subtitle.022.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.023.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv023 --track-order %order% -s !4 %IN_DIR%\video.vv023 --language 0:eng subtitle.023.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.024.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv024 --track-order %order% -s !4 %IN_DIR%\video.vv024 --language 0:eng subtitle.024.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.025.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv025 --track-order %order% -s !4 %IN_DIR%\video.vv025 --language 0:eng subtitle.025.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,1:0,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.026.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv026 --track-order %order% -s !5 %IN_DIR%\video.vv026 --language 0:eng subtitle.026.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.027.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv027 --track-order %order% -s !4 %IN_DIR%\video.vv027 --language 0:eng subtitle.027.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,0:7,0:8,0:9,1:0,0:11,0:12,0:13
if exist subtitle.028.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv028 --track-order %order% -s !10 %IN_DIR%\video.vv028 --language 0:eng subtitle.028.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,0:7,0:8,0:9,1:0,0:11,0:12,0:13
if exist subtitle.029.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv029 --track-order %order% -s !10 %IN_DIR%\video.vv029 --language 0:eng subtitle.029.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.034.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv034 --track-order %order% -s !4 %IN_DIR%\video.vv034 --language 0:eng subtitle.034.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.035.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv035 --track-order %order% -s !4 %IN_DIR%\video.vv035 --language 0:eng subtitle.035.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.036.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv036 --track-order %order% -s !4 %IN_DIR%\video.vv036 --language 0:eng subtitle.036.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.037.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv037 --track-order %order% -s !4 %IN_DIR%\video.vv037 --language 0:eng subtitle.037.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.042.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv042 --track-order %order% -s !4 %IN_DIR%\video.vv042 --language 0:eng subtitle.042.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.043.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv043 --track-order %order% -s !4 %IN_DIR%\video.vv043 --language 0:eng subtitle.043.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11
if exist subtitle.044.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv044 --track-order %order% -s !4 %IN_DIR%\video.vv044 --language 0:eng subtitle.044.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11
if exist subtitle.045.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv045 --track-order %order% -s !4 %IN_DIR%\video.vv045 --language 0:eng subtitle.045.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.046.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv046 --track-order %order% -s !4 %IN_DIR%\video.vv046 --language 0:eng subtitle.046.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.047.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv047 --track-order %order% -s !4 %IN_DIR%\video.vv047 --language 0:eng subtitle.047.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.048.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv048 --track-order %order% -s !4 %IN_DIR%\video.vv048 --language 0:eng subtitle.048.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.049.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv049 --track-order %order% -s !4 %IN_DIR%\video.vv049 --language 0:eng subtitle.049.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.050.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv050 --track-order %order% -s !4 %IN_DIR%\video.vv050 --language 0:eng subtitle.050.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13
if exist subtitle.051.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv051 --track-order %order% -s !4 %IN_DIR%\video.vv051 --language 0:eng subtitle.051.ja.txt
)

