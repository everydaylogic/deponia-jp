set CMD_MKVMERGE=..\..\bin\mkvmerge.exe
set IN_DIR=.\videos

set OUT_DIR=VIDEOS_NEW

if not exist %OUT_DIR% mkdir %OUT_DIR%

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.000.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv000 --track-order %order% -s !7 %IN_DIR%\video.vv000 --language 0:eng subtitle.000.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,1:0,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.003.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv003 --track-order %order% -s !5 %IN_DIR%\video.vv003 --language 0:eng subtitle.003.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,1:0,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24
if exist subtitle.004.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv004 --track-order %order% -s !5 %IN_DIR%\video.vv004 --language 0:eng subtitle.004.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.005.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv005 --track-order %order% -s !7 %IN_DIR%\video.vv005 --language 0:eng subtitle.005.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.006.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv006 --track-order %order% -s !7 %IN_DIR%\video.vv006 --language 0:eng subtitle.006.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.007.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv007 --track-order %order% -s !7 %IN_DIR%\video.vv007 --language 0:eng subtitle.007.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.008.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv008 --track-order %order% -s !7 %IN_DIR%\video.vv008 --language 0:eng subtitle.008.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.009.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv009 --track-order %order% -s !7 %IN_DIR%\video.vv009 --language 0:eng subtitle.009.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.014.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv014 --track-order %order% -s !7 %IN_DIR%\video.vv014 --language 0:eng subtitle.014.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.015.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv015 --track-order %order% -s !7 %IN_DIR%\video.vv015 --language 0:eng subtitle.015.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.016.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv016 --track-order %order% -s !7 %IN_DIR%\video.vv016 --language 0:eng subtitle.016.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.017.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv017 --track-order %order% -s !7 %IN_DIR%\video.vv017 --language 0:eng subtitle.017.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.018.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv018 --track-order %order% -s !7 %IN_DIR%\video.vv018 --language 0:eng subtitle.018.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.019.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv019 --track-order %order% -s !7 %IN_DIR%\video.vv019 --language 0:eng subtitle.019.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,1:0,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24
if exist subtitle.020.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv020 --track-order %order% -s !5 %IN_DIR%\video.vv020 --language 0:eng subtitle.020.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,1:0,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24
if exist subtitle.021.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv021 --track-order %order% -s !5 %IN_DIR%\video.vv021 --language 0:eng subtitle.021.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,1:0,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24
if exist subtitle.024.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv024 --track-order %order% -s !5 %IN_DIR%\video.vv024 --language 0:eng subtitle.024.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,1:0,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24
if exist subtitle.025.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv025 --track-order %order% -s !5 %IN_DIR%\video.vv025 --language 0:eng subtitle.025.ja.txt
)

set order=0:0,0:1,1:0,0:3,0:4,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.026.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv026 --track-order %order% -s !2 %IN_DIR%\video.vv026 --language 0:eng subtitle.026.ja.txt
)

set order=0:0,0:1,1:0,0:3,0:4,0:5,0:6,0:7,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.027.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv027 --track-order %order% -s !2 %IN_DIR%\video.vv027 --language 0:eng subtitle.027.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.030.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv030 --track-order %order% -s !7 %IN_DIR%\video.vv030 --language 0:eng subtitle.030.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.031.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv031 --track-order %order% -s !7 %IN_DIR%\video.vv031 --language 0:eng subtitle.031.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.032.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv032 --track-order %order% -s !7 %IN_DIR%\video.vv032 --language 0:eng subtitle.032.ja.txt
)

set order=0:0,0:1,0:2,0:3,0:4,0:5,0:6,1:0,0:8,0:9,0:10,0:11,0:12,0:13,0:14,0:15,0:16,0:17,0:18,0:19,0:20,0:21,0:22,0:23,0:24,0:25
if exist subtitle.033.ja.txt (
	%CMD_MKVMERGE% -o %OUT_DIR%\video.vv033 --track-order %order% -s !7 %IN_DIR%\video.vv033 --language 0:eng subtitle.033.ja.txt
)

