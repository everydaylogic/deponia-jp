set CMD_MKVMERGE=..\..\bin\mkvmerge.exe
set IN_DIR=.\videos
set OUT_DIR=VIDEOS_NEW

if not exist %OUT_DIR% mkdir %OUT_DIR%

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.002.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv002 --track-order %order% -s !4 %IN_DIR%\video.vv002 --language 0:eng subtitle.002.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.003.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv003 --track-order %order% -s !4 %IN_DIR%\video.vv003 --language 0:eng subtitle.003.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.004.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv004 --track-order %order% -s !4 %IN_DIR%\video.vv004 --language 0:eng subtitle.004.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.005.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv005 --track-order %order% -s !4 %IN_DIR%\video.vv005 --language 0:eng subtitle.005.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.014.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv014 --track-order %order% -s !4 %IN_DIR%\video.vv014 --language 0:eng subtitle.014.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.015.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv015 --track-order %order% -s !4 %IN_DIR%\video.vv015 --language 0:eng subtitle.015.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.016.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv016 --track-order %order% -s !4 %IN_DIR%\video.vv016 --language 0:eng subtitle.016.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.017.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv017 --track-order %order% -s !4 %IN_DIR%\video.vv017 --language 0:eng subtitle.017.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.020.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv020 --track-order %order% -s !4 %IN_DIR%\video.vv020 --language 0:eng subtitle.020.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.021.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv021 --track-order %order% -s !4 %IN_DIR%\video.vv021 --language 0:eng subtitle.021.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.026.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv026 --track-order %order% -s !4 %IN_DIR%\video.vv026 --language 0:eng subtitle.026.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.027.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv027 --track-order %order% -s !4 %IN_DIR%\video.vv027 --language 0:eng subtitle.027.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.030.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv030 --track-order %order% -s !4 %IN_DIR%\video.vv030 --language 0:eng subtitle.030.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.031.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv031 --track-order %order% -s !4 %IN_DIR%\video.vv031 --language 0:eng subtitle.031.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.032.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv032 --track-order %order% -s !4 %IN_DIR%\video.vv032 --language 0:eng subtitle.032.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.033.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv033 --track-order %order% -s !4 %IN_DIR%\video.vv033 --language 0:eng subtitle.033.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.038.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv038 --track-order %order% -s !4 %IN_DIR%\video.vv038 --language 0:eng subtitle.038.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.039.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv039 --track-order %order% -s !4 %IN_DIR%\video.vv039 --language 0:eng subtitle.039.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.040.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv040 --track-order %order% -s !4 %IN_DIR%\video.vv040 --language 0:eng subtitle.040.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.041.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv041 --track-order %order% -s !4 %IN_DIR%\video.vv041 --language 0:eng subtitle.041.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.042.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv042 --track-order %order% -s !4 %IN_DIR%\video.vv042 --language 0:eng subtitle.042.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.043.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv043 --track-order %order% -s !4 %IN_DIR%\video.vv043 --language 0:eng subtitle.043.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.044.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv044 --track-order %order% -s !4 %IN_DIR%\video.vv044 --language 0:eng subtitle.044.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.045.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv045 --track-order %order% -s !4 %IN_DIR%\video.vv045 --language 0:eng subtitle.045.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.046.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv046 --track-order %order% -s !4 %IN_DIR%\video.vv046 --language 0:eng subtitle.046.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.047.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv047 --track-order %order% -s !4 %IN_DIR%\video.vv047 --language 0:eng subtitle.047.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.050.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv050 --track-order %order% -s !4 %IN_DIR%\video.vv050 --language 0:eng subtitle.050.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.051.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv051 --track-order %order% -s !4 %IN_DIR%\video.vv051 --language 0:eng subtitle.051.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.056.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv056 --track-order %order% -s !4 %IN_DIR%\video.vv056 --language 0:eng subtitle.056.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.057.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv057 --track-order %order% -s !4 %IN_DIR%\video.vv057 --language 0:eng subtitle.057.ja.txt
)

set order=0:0,0:1,0:2,1:0,0:4,0:5
if exist subtitle.060.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv060 --track-order %order% -s !3 %IN_DIR%\video.vv060 --language 0:eng subtitle.060.ja.txt
)

set order=0:0,0:1,0:2,1:0,0:4,0:5
if exist subtitle.061.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv061 --track-order %order% -s !3 %IN_DIR%\video.vv061 --language 0:eng subtitle.061.ja.txt
)

set order=0:0,0:1,0:2,1:0,0:4,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.062.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv062 --track-order %order% -s !3 %IN_DIR%\video.vv062 --language 0:eng subtitle.062.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.063.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv063 --track-order %order% -s !4 %IN_DIR%\video.vv063 --language 0:eng subtitle.063.ja.txt
)

set order=0:0,0:1,0:2,0:3,1:0,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.068.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv068 --track-order %order% -s !4 %IN_DIR%\video.vv068 --language 0:eng subtitle.068.ja.txt
)

set order=0:0,0:1,0:2,1:0,0:4,0:5,0:6,0:7,0:8,0:9,0:10
if exist subtitle.069.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv069 --track-order %order% -s !4 %IN_DIR%\video.vv069 --language 0:eng subtitle.069.ja.txt
)

