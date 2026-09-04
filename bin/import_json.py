import sys
import json

def import_json(input_file, json_file, output_file):
    with open(json_file, "r", encoding="utf-8") as f:
        translations = json.load(f)
    with open(input_file, "r", encoding="utf-8", newline="") as f:
        content = f.read()
    line_ending = "\r\n" if "\r\n" in content else "\n"
    lines = content.splitlines()
    result = [lines[0] + line_ending]  # ヘッダー行をそのままコピー
    matched = 0
    for line in lines[1:]:
        cols = line.split("\t")
        while len(cols) < 4:
            cols.append("")
        if cols[0] in translations:
            cols[2] = translations[cols[0]]
            cols[3] = translations[cols[0]]
            matched += 1
        result.append("\t".join(cols) + line_ending)
    with open(output_file, "w", encoding="utf-8", newline="") as f:
        f.writelines(result)
    print(f"{matched} 件を翻訳適用、{output_file} に出力しました")
    if matched == 0:
        print("警告: 一致するIDがありませんでした。JSONと入力テキストの対応を確認してください")
        return 1
    return 0

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("使い方: python import_json.py <入力テキスト> <JSONファイル> <出力テキスト>")
        sys.exit(1)
    sys.exit(import_json(sys.argv[1], sys.argv[2], sys.argv[3]))