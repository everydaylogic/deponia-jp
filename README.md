# Deponia 日本語化手順書

## 0. この文書について

Crazy Unit さん（以下クレユニさん）が公開しているツールを使って、
**Deponia: The Complete Journey** と **Deponia Doomsday** を日本語化する手順をまとめたものです。

- ツール配布元: https://www7b.biglobe.ne.jp/~crazyunit/misc.html

基本的な内容はクレユニさんのツールに同梱された README に書かれていますが、
ボリュームがあるため、**実際に手を動かして実行する** ことを重視して噛み砕いて記載しています。
各コマンドが内部で何をしているかは README を参照してください。

### 動作確認環境

| 項目 | 内容 |
|---|---|
| OS | Windows |
| Deponia: The Complete Journey | 3.3.0155 |
| Deponia Doomsday | 1.2.0267 |

> **Doomsday（`deponia4`）は現在作業中です。** 本版の配布データには含まれていません。
> 手順自体は共通なので、記載は残してあります。

> Complete Journey の `3.3.0155` は、クレユニさんのツールが対応表に挙げている
> 単体版のビルド（Goodbye Deponia `3.3.3335` など）とは別のバージョンです。
> VIS KEY も別物のため、自分で抽出する必要があります（[2.1](#21-vis-key-を取得する) 参照）。

---

## 1. 用意するもの

### 1.1 ツール

| 名称 | ファイル | 入手先 | 用途 |
|---|---|---|---|
| Goodbye Deponia 日本語化補助ツール | `deponia3_tools_20161222.zip` | クレユニさんのサイト | 本体ツール一式・文字セット・パラメータ・`font.cfg` |
| Windows 用実行形式ファイル詰め合わせ | `tools_win32bin_20161222.zip` | クレユニさんのサイト | 各種 exe と `vis_key.txt` |
| VIS KEY 解析ツール | `anb.zip` | https://oezmen.eu/gameresources/ | Complete Journey の VIS KEY 取得 |
| libwebp | `libwebp-1.6.0-windows-x64.zip` | https://developers.google.com/speed/webp/docs/precompiled?hl=ja | 「実行形式ファイル詰め合わせ」で使えなかったものの補完 |
| MKVToolNix<br>**Portable (64-bit) 版** | `mkvtoolnix-64-bit-99.0.7z` | https://mkvtoolnix.download/downloads.html | ムービー字幕の差し替え（`mkvextract.exe` / `mkvmerge.exe` を使用） |
| Deponia 日本語化データ | `deponia_ja` | （★入手先を記載） | 翻訳データ・バッチ・スクリプト一式 |

> ★ `deponia_ja` は本手順書に付属する翻訳データ一式です。入手先を記入してください。

### 1.2 フォント

| フォント | バージョン / ファイル | 入手先 | 設置場所 |
|---|---|---|---|
| IPAex ゴシック | Ver.004.01 / `ipaexg00401.zip` | https://moji.or.jp/ipafont/ipaex00401/ | システムにインストール |
| しねきゃぷしょん | `cinecaption2.26.zip` | https://www.vector.co.jp/soft/dl/data/writing/se314690.html | システムにインストール |
| 美咲ゴシック | **2012-06-03 版 BDF**（`misaki_gothic.bdf`） | https://littlelimit.net/misaki.htm#download | 各作業フォルダに配置 |

> **注意:** 美咲ゴシックは最新版だとエラーになります。必ず 2012-06-03 版の BDF を使ってください。

**インストール方法**

IPAex ゴシックとしねきゃぷしょんは、ZIP を展開して中の `.ttf` ファイルを
右クリックし、「インストール」を選びます。

美咲ゴシックは**インストール不要**です。展開して出てくる `misaki_gothic.bdf` を、
`deponia` / `deponia1` / `deponia2` / `deponia3` の各作業フォルダにコピーしてください
（[手順 9](#手順-9-フォントの元になる画像を作成する)で使用します）。

### 1.3 Python 実行環境

途中で自作の Python スクリプトを 2 本使うため、実行環境が必要です。

| スクリプト | 用途 |
|---|---|
| `import_json.py` | 翻訳 JSON を `original.txt` に取り込み、`original_ja.txt` を生成する（[手順 12](#手順-12-翻訳ファイルを用意する)）。バッチから呼ばれます |
| `extract_kanji_all_txt.py` | 翻訳テキストから使用漢字を抽出する。**翻訳を自分で改変する人向けのサブツール**で、通常の導入では使いません（[付録 A](#付録-a-使用漢字の抽出)） |

`py` コマンドが使えない環境では、バッチ内の `py` を `python` に書き換えてください。

---

## 2. 事前準備

### 2.1 VIS KEY を取得する

Complete Journey は Deponia / Chaos on Deponia / Goodbye Deponia の 3 本が 1 つになったバージョンで、
クレユニさんのツールに同梱の `vis_key.txt` にはこのバージョンのキーが載っていません。
そのため、まず自分でキーを抽出します。

ゲームのインストールフォルダには次のファイルがあります。

| ファイル | 中身 |
|---|---|
| `data.vis` | メニューなど共通部分 |
| `data1.vis` | Deponia |
| `data2.vis` | Chaos on Deponia |
| `data3.vis` | Goodbye Deponia |

**キーは 4 つとも共通**なので、ここでは `data.vis` から抽出します。

1. `anb.zip` を展開し、`VISExt\bin\main` の中にある `VIS3Ext.exe` を用意する
2. `VIS3Ext.exe` と `data.vis` を同じフォルダに置く
3. そのフォルダでターミナルを開き、以下を実行する

```
.\VIS3Ext.exe data.vis /force /keyonly
```

> 先頭の `.\` はカレントフォルダを指します。PowerShell はセキュリティ上の理由で
> カレントフォルダを実行パスに含めないため、これが無いと実行できません。

ターミナルに次のように表示されます。

```
Info: Found key xxxxxxxxxxxxxxxx
```

### 2.2 vis_key.txt にキーを追記する

`tools_win32bin_20161222.zip` を展開した中の `vis_key.txt` に、取得したキーを追記します。

```
aaaaaaaaaaaaaaaaaa Goodbye Deponia (3.2.3.3320, 3.3.3335)
bbbbbbbbbbbbbbbb Deponia Doomsday (1.1.0246)
xxxxxxxxxxxxxxxx Deponia The Complete Journey (3.3.0155)
```

> **Doomsday について:** 同梱の `vis_key.txt` に載っているキーは 1.1.0246 用ですが、
> 1.2.0267 でもそのまま使えました。追加のキー抽出は不要です。

### 2.3 作業フォルダを作る

ここでは `workspace` という作業フォルダを作り、以下の構成にします。

```
workspace
├─bin
├─deponia
├─deponia1
├─deponia2
├─deponia3
└─deponia4
```

| フォルダ | 対象 | 元ファイル |
|---|---|---|
| `bin` | 翻訳に必要なツール置き場 | — |
| `deponia` | Complete Journey のメニューなど共通部分 | `data.vis` |
| `deponia1` | Deponia | `data1.vis` |
| `deponia2` | Chaos on Deponia | `data2.vis` |
| `deponia3` | Goodbye Deponia | `data3.vis` |
| `deponia4` | Deponia Doomsday | （Doomsday 側のファイル） |

### 2.4 bin フォルダにツールを集める

以下の順にコピーします。

1. `tools_win32bin_20161222\bin` 内のファイルを `bin` にコピー
   （※ `deponia_tools` フォルダと `deponia3_tools` フォルダは**除く**）
2. `deponia3_tools` フォルダの中の `modify_font_info.exe` を `bin` にコピー
3. `libwebp-1.6.0-windows-x64\bin` 内のファイルを `bin` にコピー
4. `libwebp-1.6.0-windows-x64\lib` 内のファイルを `bin` にコピー
5. MKVToolNix の `mkvextract.exe` と `mkvmerge.exe` を `bin` にコピー（字幕作業で使用）
6. `deponia_ja\bin` 内のファイル（`import_json.py`）を `bin` にコピー

### 2.5 各作業フォルダにファイルを配置する

`deponia` 〜 `deponia4` の各フォルダに、以下のファイルを配置します。

#### クレユニさんのツールから

| コピーするファイル | コピー元 | コピー先 |
|---|---|---|
| `charset_cinecaption.txt`<br>`charset_ja_kana.txt`<br>`charset_jis.txt`<br>`charset_jis_win.txt`<br>`charset_kana.txt`<br>`param_cinecap_29.txt`<br>`param_cinecap_white_29.txt`<br>`param_gothic_17.txt`<br>`param_gothic_21.txt`<br>`param_gothic_28.txt`<br>`param_gothic_black_17.txt`<br>`param_gothic_bold_25.txt` | `deponia3_tools_20161222` | `deponia` 〜 `deponia4` の**全フォルダ** |
| `font.cfg` | `deponia3_tools_20161222\deponia1`<br>`deponia3_tools_20161222\deponia2`<br>`deponia3_tools_20161222\deponia3` | それぞれ対応する<br>`deponia1` / `deponia2` / `deponia3` |
| `charset_orig_pixel_white.txt`<br>`charset_orig_pixel_black.txt` | `deponia3_tools_20161222\deponia2` | `deponia2` のみ |

#### deponia_ja から

配布パッケージは `workspace` と同じフォルダ構成になっています。
**解凍した中身を `workspace` に丸ごと上書きコピーしてください。**個別のコピー作業は不要です。

```
deponia_ja
│  extract_kanji_all_txt.py   … サブツール（付録 A）。コピー不要
│
├─bin                         → workspace\bin へ
│      import_json.py
│
├─deponia                     → workspace\deponia へ
│      02_extract_vis.bat 〜 15_replace_vis.bat
│      charset_ja.txt
│      charset_orig_standard.txt ※
│      charset_work.txt
│      translation.json
│
├─deponia1                    → workspace\deponia1 へ
│  │    （deponia と同じ構成）
│  └─video_work
│         extract_subtitles.bat
│         merge_subtitles.bat
│         subtitle.###.ja.txt（字幕の翻訳テキスト）
│
├─deponia2                    → workspace\deponia2 へ
└─deponia3                    → workspace\deponia3 へ
```

> ※ `charset_orig_standard.txt` は、クレユニさんのツールに同梱されているファイルから
> 使わなさそうな文字（ドイツ語用と思われる文字など）を削除したものです。
> 日本語の漢字を登録する枠を空けるための措置で、理由は[付録 B](#付録-b-トラブルシューティング)を参照。

#### font.cfg についての補足

| フォルダ | font.cfg の入手方法 |
|---|---|
| `deponia` | [手順 3](#手順-3-vbin-ファイルからテキスト一覧パス一覧を抽出する)の `03_read_vbin.bat` 実行時に**自動生成**される（コピー不要） |
| `deponia1` / `deponia2` / `deponia3` | `deponia3_tools_20161222` の同名フォルダからコピー |
| `deponia4` | （Doomsday は現在未対応） |

> `charset_ja.txt` と `charset_work.txt` は翻訳内容に応じた使用漢字の一覧です。
> 配布物には翻訳済みの内容が入っています。
> **自分で翻訳テキストを変更した場合は、`original_ja.txt` とあわせてこの 2 ファイルも更新してください**（[付録 A](#付録-a-使用漢字の抽出)）。

### 2.6 ゲームファイルをバックアップする

作業を始める前に、ゲームインストール先の **`data*.vis` 系ファイル**と
**`videos` フォルダ内の全ファイル**を安全な場所にバックアップしてください。
元に戻したいときは、バックアップをインストール先に上書きコピーします。

---

## 3. 本編テキストの日本語化

ここでは `deponia1`（Deponia 本編）を例に説明します。

各手順は、`deponia_ja` に含まれる**番号付きのバッチファイルをクリック実行するだけ**で進みます。
バッチはフォルダごとに設定済みなので、ファイル名やパラメータを書き換える必要はありません。
`deponia` / `deponia2` / `deponia3` でも、同じ番号のバッチを実行してください。

> バッチが実際に実行しているコマンドは[付録 C](#付録-c-バッチが実行しているコマンド)にまとめてあります。
> エラーで止まったときの切り分けに使ってください。

### WARNING について

`13_merge_font.bat` や `14_modify_vbin.bat` などを実行すると、
`WARNING` で始まるメッセージが表示されることがあります。
**これらは基本的に無視して問題ありません。**処理はそのまま進みます。

処理が途中で止まってしまう場合や、生成されるはずのファイルができていない場合のみ、
[付録 B](#付録-b-トラブルシューティング) を確認してください。

### 手順 1. data1.vis をコピーする

ゲームインストール先から `data1.vis` を `deponia1` フォルダにコピーします。

### 手順 2. data1.vis を展開する

**`02_extract_vis.bat`** を実行します。
`ORIG_DATA` フォルダに vis ファイルの中身が展開されます。

### 手順 3. VBIN ファイルからテキスト一覧・パス一覧を抽出する

**`03_read_vbin.bat`** を実行します。以下の 2 ファイルが作成されます。

| ファイル | 内容 |
|---|---|
| `original.txt` | ゲーム内のテキスト一覧 |
| `path_list.txt` | パス一覧 |

`original.txt` を元に日本語訳を付けたファイルが `original_ja.txt` です（[手順 12](#手順-12-翻訳ファイルを用意する)で生成）。

> **`deponia` フォルダのみ**、このバッチの実行時に `font.cfg` もあわせて生成されます。

### 手順 4. VBIN ファイルからスクリプトを抽出する（割愛）

README には記載がありますが、**この手順は行いません。**
編集を誤るとゲームが正常動作しないことがあり、対象も簡単なメッセージのみとのことなので、
無理に翻訳せず割愛しています。

### 手順 5. WebP 画像のマスクを解除する

**`05_unmask_webp.bat`** を実行します。
`ORIG_DATA_UNMASKED` にマスク解除済みの WebP 画像が作成されます。

### 手順 6. WebP 画像を PNG 画像に変換する

**`06_webp2png.bat`** を実行します。
`ORIG_DATA_UNMASKED` 内の WebP 画像が PNG に変換されます。

### 手順 7. フォント情報から文字座標を抽出する

**`07_font_char_rect.bat`** を実行します。
`ORIG_DATA_UNMASKED` 内に `5桁数字.txt` という名前で座標ファイルが作成されます。

### 手順 8. 文字座標の一覧ファイルを編集する

手順 7 で作成された `rect_list.txt` をテキストエディタで開き、以下の文字列をすべて置換します。

| | |
|---|---|
| 旧 | `ORIG_DATA_UNMASKED` |
| 新 | `FONT_MERGED` |

ファイル名は変更せず、そのまま上書き保存します。
このファイルは、[手順 13](#手順-13-オリジナルのフォントと日本語フォントを結合マスクする)の
`13_merge_font.bat` が `font_new.cfg` を作成するのに使用します。

### 手順 9. フォントの元になる画像を作成する

**`09_make_base_font.bat`** を実行します。
日本語表示に使うフォント画像の元となる画像が `FONT_WORK` ディレクトリに作成されます。

バッチファイル内では [1.2 フォント](#12-フォント) の 3 種を使用します。
実行前に、IPAex ゴシックとしねきゃぷしょんをシステムにインストールし、
`misaki_gothic.bdf` を作業フォルダに置いておいてください。

> `09_make_base_font.bat` は `misaki_gothic.bdf` をカレントフォルダから読み込みます。
> **`deponia` / `deponia1` / `deponia2` / `deponia3` のそれぞれにコピーが必要です。**

### 手順 10. 作業用フォント画像を作成する

**`10_make_work_font.bat`** を実行します。
手順 9 で作成した画像から必要な文字を絞り込み、ゲームごとに調整した画像を作成します。

絞り込みには文字セットファイル `charset_work.txt` を使用します。
配布データには翻訳で使用した漢字を記載済みなので、そのまま実行して構いません。

> 画像サイズのエラーが出た場合は[付録 B](#付録-b-トラブルシューティング)を参照。

#### 翻訳を自分で変更した場合

翻訳テキストを書き換えて使用漢字が変わったときは、**実行前に**
`charset_work.txt` を更新してください。更新のしかたは
[付録 A](#付録-a-使用漢字の抽出)を参照してください。

`charset_ja.txt`（[手順 13](#手順-13-オリジナルのフォントと日本語フォントを結合マスクする)で使用）も
同様に更新が必要です。

### 手順 11. 作業用フォント画像に色をつける（不要）

Deponia シリーズでは不要な作業です。

### 手順 12. 翻訳ファイルを用意する

手順 3 で抽出した `original.txt` に翻訳 JSON を取り込み、
第 3・第 4 項目に翻訳テキストを追加した `original_ja.txt` を生成します。

**`12_import_json.bat`** を実行します。
フォルダ内の `translation.json` が取り込まれ、`original_ja.txt` が作成されます。

> Python の実行環境が必要です（[1.3](#13-python-実行環境)）。

### 手順 13. オリジナルのフォントと日本語フォントを結合・マスクする

**`13_merge_font.bat`** を実行します。実行後、以下が作成されます。

- `FONT_MERGED` … 結合した PNG 画像と、それを変換した WebP 画像
- `FONT_NEW` … マスク済み WebP 画像
- `font_new.cfg` … 新しいフォント情報

> 画像サイズのエラー、および漢字が表示されない場合は[付録 B](#付録-b-トラブルシューティング)を参照。

#### 翻訳を自分で変更した場合

配布データをそのまま使う場合、この項は読み飛ばして構いません。

翻訳テキストを自分で書き換えて使用漢字が変わったときは、**実行前に**
`charset_ja.txt` に使用文字を追加し、不要な文字を削除しておきます。
**ムービー字幕で使用している文字を含めるのを忘れないでください。**

`charset_work.txt`（[手順 10](#手順-10-作業用フォント画像を作成する)で使用）も
同様に更新が必要です。更新のしかたは[付録 A](#付録-a-使用漢字の抽出)を参照してください。

> **文字数の目安:** クレユニさんの README では、登録する文字数を 1500 文字程度に抑えるよう推奨されています。
> 超えるとゲーム画面に表示されない文字が出ます（[付録 B](#付録-b-トラブルシューティング)）。

### 手順 14. VBIN ファイルを変更する

**`14_modify_vbin.bat`** を実行します。
`VBIN_NEW` フォルダに、手順 13 の `font_new.cfg` と `original_ja.txt` を反映した VBIN が作成されます。

### 手順 15. data1.vis の内容を置き替える

**`15_replace_vis.bat`** を実行します。
`data1_new.vis` が作成されます。

### 手順 16. ゲームに戻す

`data1_new.vis` を `data1.vis` にリネームし、ゲームのインストール先に上書きコピーします。

うまくいけば日本語表示されるはずです。

---

## 4. ムービー字幕の日本語化

ムービーの字幕は MKVToolNix を使って日本語化できます。
**日本語ですが、言語設定は「英語」として置き換えます。**

ここでは `deponia1` の字幕置き換えを例に説明します。
`video_work` フォルダの中で作業します。

> 字幕の抽出・差し替えを行うバッチは、クレユニさんのツールに含まれるものをほぼそのまま使っています。
> 処理の詳細は同梱の README.txt を参照してください。

### 手順 0. 元の動画を作業フォルダに用意する

`video_work` の中に `videos` フォルダを作成し、
**ゲームインストール先の `videos` ディレクトリ内の全ファイルをコピーします。**

バッチはこの `video_work\videos` を入力として読むため、
この手順は必須です。同時に、元に戻したくなったときのバックアップも兼ねます。

> `mkvextract.exe` と `mkvmerge.exe` が `workspace\bin` にコピーされていることも確認してください（[2.4](#24-bin-フォルダにツールを集める)）。

### 手順 1. ムービーから字幕を抽出する（実施済み・不要）

```
extract_subtitles.bat
```

実行すると、カレントディレクトリに `subtitle.数字.txt` というファイルが作成されます。

> 手順は記載しますが、**抽出作業はすでに済ませてあるので実行不要です。**

### 手順 2. 字幕を日本語に置き換える（実施済み・不要）

`subtitle.数字.txt` を修正し、`subtitle.数字.ja.txt` という名前で保存します。
文字コードは UTF-8 です。変更してしまった場合は UTF-8 に戻してください。

> 手順は記載しますが、**翻訳作業はすでに済ませてあるので実行不要です。**

### 手順 3. 動画の字幕を日本語にする

```
merge_subtitles.bat
```

実行すると `VIDEOS_NEW` フォルダが作成され、その中に字幕を差し替えた動画が保存されます。

元の字幕トラックを除外し、日本語の字幕を同じ位置に差し込む処理をしています。
トラックの番号や構成は動画ごとに異なりますが、**バッチに設定済みなので書き換えは不要です。**

### 手順 4. ゲームに戻す

`VIDEOS_NEW` の中身を、ゲームのインストール先の `videos` フォルダに上書きコピーします。

うまくいけば日本語表示されるはずです。

### 対象となる動画について

**字幕（セリフ）のある動画のみが処理対象です。**
`videos` フォルダ内のすべての動画が変換されるわけではないため、
`VIDEOS_NEW` のファイル数は元より少なくなります。

`deponia1` の場合、`video.vv000` から `video.vv033` のうち 24 本が対象です。

---

## 5. 残りのタイトルへの展開

[3. 本編テキストの日本語化](#3-本編テキストの日本語化)と
[4. ムービー字幕の日本語化](#4-ムービー字幕の日本語化)の作業を、
`deponia` / `deponia2` / `deponia3` の各フォルダでも同様に行います。

バッチも翻訳データのファイル名もフォルダごとに用意・統一されているため、
**書き換えは一切不要**です。各フォルダで同じ番号のバッチを順に実行してください。

| フォルダ | vis ファイル |
|---|---|
| `deponia` | `data.vis` |
| `deponia1` | `data1.vis` |
| `deponia2` | `data2.vis` |
| `deponia3` | `data3.vis` |

> `deponia4`（Doomsday）は現在作業中のため、本版には含まれていません。

---

## 付録 A. 使用漢字の抽出

> **翻訳を自分で改変する人向けのサブツールです。**
> 配布データをそのまま使う場合、この作業は不要です。

自分で翻訳を修正するなどして使用漢字に変更があったときは、
翻訳テキストから漢字を抽出する `extract_kanji_all_txt.py` を使って
文字セットファイルを更新します。

> 前提: Python 実行環境があること

1. `extract_kanji` などの作業用フォルダを作る
2. そのフォルダに以下をすべて置く
   - 本編の翻訳テキスト `original_ja.txt`
   - 動画用の翻訳テキスト `subtitle.数字.ja.txt`
3. `extract_kanji_all_txt.py` を実行する
4. 使用されている漢字を抽出した `kanji_only.txt` ができるので、その内容を以下の 2 ファイルに反映する
   - `charset_work.txt`（手順 10 で使用）
   - `charset_ja.txt`（手順 13 で使用）

---

## 付録 B. トラブルシューティング

### 画像サイズのエラーが出る（手順 10 / 手順 13）

使用する文字が多すぎると、フォント画像の生成でサイズエラーが発生します。
該当のバッチファイル（`10_make_work_font.bat` / `13_merge_font.bat`）を開き、

```
--size 横幅 高さ
```

の部分を大きめの値に修正してください。

### ゲーム画面に漢字が表示されない

クレユニさんの README には、フォントに登録する文字数を **1500 文字程度に抑える** よう記載があります。
これを超えると、ゲーム画面に表示されない文字が発生します。
実際、翻訳文で使用している漢字が多く、この状態になりました。

文字数は「**元のフォントの文字（`charset_orig_standard.txt`）＋ 日本語で追加する文字**」の合計です。
翻訳文から漢字を減らすのは困難だったため、`charset_orig_standard.txt` 側から
使わなさそうな文字（ドイツ語用と思われる文字など）を削除して枠を空けています。

減らしたことによる副作用は未確認ですが、漢字は表示されるようになりました。

同じ症状が出た場合は、`charset_orig_standard.txt` からさらに不要な文字を削るか、
`charset_ja.txt` / `charset_work.txt` 側の漢字を見直してください。

### WARNING が大量に出る

`13_merge_font.bat` や `14_modify_vbin.bat` の実行中に表示される `WARNING` は、
無視して構いません。処理は最後まで進み、必要なファイルも作成されます。

問題があるのは、処理が途中で止まる場合や、`FONT_NEW` / `VBIN_NEW` などの
出力フォルダが空のまま終わる場合です。その場合はメッセージの内容を確認してください。

### 元に戻したい

バックアップしておいた `data*.vis` と `videos` フォルダの中身を、
ゲームのインストール先に上書きコピーしてください（[2.6](#26-ゲームファイルをバックアップする)）。

---

## 付録 C. バッチが実行しているコマンド

各バッチはフォルダごとに設定済みなので、通常は中身を意識する必要はありません。
エラーで止まったときの切り分け用に、実行内容を記載しておきます。

### 対象 VBIN ファイル

VBIN のファイル名はゲームごとに異なります。

| フォルダ | 対象 VBIN | 備考 |
|---|---|---|
| `deponia` | `00544.vbin` | `03_read_vbin.bat` に `-f font.cfg` が付き、`font.cfg` を生成する |
| `deponia1` | `03135.vbin` | |
| `deponia2` | `02627.vbin` | |
| `deponia3` | `02924.vbin` | |
| `deponia4` | `02415.vbin` | Doomsday。現在未対応 |

この番号は `03_read_vbin.bat` と `14_modify_vbin.bat` の両方に現れます。

### フォルダごとに異なる値

バッチ内には、ゲームごとに違う数値が埋め込まれています。

| フォルダ | vis ファイル | VBIN 番号 | フォント画像の番号 | `--size`（手順 10） | `--size`（手順 13） |
|---|---|---|---|---|---|
| `deponia` | `data.vis` | `00544` | `00277` | 2048 4096 | 2048 1500 |
| `deponia1` | `data1.vis` | `03135` | `02926` | 2048 4096 | 3072 2250 |
| `deponia2` | `data2.vis` | `02627` | `02391` ほか（下記） | 2048 4096 | 3072 2250 |
| `deponia3` | `data3.vis` | `02924` | `02577` | **2048 2048** | 3072 2250 |
| `deponia4` | `data.vis` ※ | `02415` | `02005` | 2048 4096 | 3072 2250 |

- **VBIN 番号** … `03_read_vbin.bat` と `14_modify_vbin.bat` の 2 箇所に現れます
- **フォント画像の番号** … `13_merge_font.bat` の `system_standard.png` のファイル名に現れます
- **`--size`** … 画像サイズのエラー時に調整する値。フォルダごとに異なります

> ※ Doomsday は別タイトルなので、Complete Journey と同じ `data.vis` というファイル名です。
> 出力も `data_new.vis` で `deponia` フォルダと同じになります。
> **インストール先を取り違えないよう注意してください。**

`deponia` の `03_read_vbin.bat` のみ `-f font.cfg` が付き、`font.cfg` を生成します。

### deponia2 のみドット文字の処理が加わる

Chaos on Deponia にはドット文字のフォントがあるため、`deponia2` の `13_merge_font.bat` は
通常フォントに加えて 2 種類の画像を処理します。

| 画像 | 番号 | 使用する文字セット | `--size` |
|---|---|---|---|
| `system_standard` | `02391` | `charset_orig_standard.txt` + `charset_ja.txt` | 3072 2250 |
| `font_pixel_white` | `02423` | `charset_orig_pixel_white.txt` + `charset_ja_kana.txt` | 1024 1024 |
| `font_pixel_black` | `02424` | `charset_orig_pixel_black.txt` + `charset_ja_kana.txt` | 1024 1024 |

`09_make_base_font.bat` が美咲ゴシックから作る `pixel_white.png` / `pixel_black.png` が、
ここで使われます。

`deponia3` の `13_merge_font.bat` にも同様のドット文字の処理が書かれていますが、
コメントアウトされており、通常フォント（`02577`）のみを処理します。

### バッチの内容（deponia1 の例）

```bat
:: 02_extract_vis.bat
..\bin\extract_vis.exe .\data1.vis ORIG_DATA

:: 03_read_vbin.bat
..\bin\read_vbin.exe .\ORIG_DATA\03135.vbin -t original.txt -p path_list.txt --speech-path

:: 05_unmask_webp.bat
..\bin\unmask_webp.exe .\path_list.txt .\ORIG_DATA .\ORIG_DATA_UNMASKED

:: 07_font_char_rect.bat
..\bin\font_char_rect.exe .\font.cfg .\rect_list.txt .\ORIG_DATA_UNMASKED

:: 12_import_json.bat
py ..\bin\import_json.py original.txt translation.json original_ja.txt

:: 14_modify_vbin.bat
..\bin\modify_vbin.exe .\ORIG_DATA\03135.vbin .\VBIN_NEW\03135.vbin -f font_new.cfg -t original_ja.txt

:: 15_replace_vis.bat
..\bin\replace_vis.exe .\data1.vis .\data1_new.vis .\FONT_NEW .\VBIN_NEW
```

`deponia` の `03_read_vbin.bat` のみ、`font.cfg` を生成するオプションが付きます。

```bat
..\bin\read_vbin.exe .\ORIG_DATA\00544.vbin -t original.txt -p path_list.txt -f font.cfg --speech-path
```

### 画像を扱うバッチ

`06_webp2png.bat` は `ORIG_DATA_UNMASKED` に移動してから変換します。

```bat
cd /d "%~dp0\ORIG_DATA_UNMASKED"
set dwebp_cmd=..\..\bin\dwebp.exe
for %%a in ( *.webp ) do (
	%dwebp_cmd% "%%a" -o "%%~na.png"
)
```

`09_make_base_font.bat` は `param_*.txt` を順に処理して `FONT_WORK` に元画像を作り、
最後に美咲ゴシックからドット文字画像を生成します。

```bat
set make_font_png_cmd=..\bin\make_font_png.exe
set make_font_png_bdf_cmd=..\bin\make_font_png_bdf.exe
set out_dir=FONT_WORK

%make_font_png_cmd% -f param_gothic_28.txt
%make_font_png_cmd% -f param_cinecap_white_29.txt
%make_font_png_cmd% -f param_cinecap_29.txt
%make_font_png_cmd% -f param_gothic_black_17.txt
%make_font_png_cmd% -f param_gothic_17.txt
%make_font_png_cmd% -f param_gothic_21.txt
%make_font_png_cmd% -f param_gothic_bold_25.txt

%make_font_png_bdf_cmd% misaki_gothic.bdf charset_kana.txt %out_dir%\pixel_white.png ... --size 512 512
%make_font_png_bdf_cmd% misaki_gothic.bdf charset_kana.txt %out_dir%\pixel_black.png ... --size 512 512 -c 0 0 0 255
```

`10_make_work_font.bat` は `charset_work.txt` で文字を絞り込みます。
**画像サイズのエラーが出たときは、この `--size` を大きくします。**

```bat
..\bin\relocate_font_png.exe FONT_WORK\gothic_28.png FONT_WORK\gothic_28.txt ^
    FONT_WORK\system_standard.png FONT_WORK\system_standard.txt ^
    -c charset_work.txt --size 2048 4096 --padding-top 5 --padding-left 1
```

`13_merge_font.bat` は元のフォント画像に日本語を重ね、WebP 化してマスクします。
**こちらの `--size` も、エラー時の調整対象です。**

```bat
:: 元画像に日本語フォントを結合（02926 は deponia1 の番号）
..\bin\relocate_font_png.exe --overwrap ^
    ORIG_DATA_UNMASKED\02926.system_standard.png ORIG_DATA_UNMASKED\02926.txt ^
    -a FONT_WORK\system_standard.png FONT_WORK\system_standard.txt ^
    FONT_MERGED\02926.system_standard.png FONT_MERGED\02926.txt ^
    --size 3072 2250 --sort ^
    --charset charset_orig_standard.txt --charset charset_ja.txt

:: PNG を WebP に変換
for %%a in ( FONT_MERGED\02926.*.png ) do (
	..\bin\cwebp.exe -q 90 %%a -o FONT_MERGED\%%~na.webp
)

:: マスクをかけて FONT_NEW へ
..\bin\mask_webp.exe FONT_MERGED FONT_NEW

:: font.cfg から font_new.cfg を作成
..\bin\modify_font_info.exe font.cfg rect_list.txt font_new.cfg
```

各コマンドの詳しい動作は、クレユニさんのツールに同梱の README.txt を参照してください。
