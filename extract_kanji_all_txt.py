import os
import unicodedata

def is_kanji(char):
    return 'CJK UNIFIED IDEOGRAPH' in unicodedata.name(char, '')

def extract_kanji_from_dir(input_dir, output_file, width=64):
    kanji_set = set()

    # ディレクトリ内の全ファイルを走査
    for filename in os.listdir(input_dir):
        if filename.endswith('.txt'):
            filepath = os.path.join(input_dir, filename)

            with open(filepath, 'r', encoding='utf-8') as f:
                for line in f:
                    for char in line:
                        if is_kanji(char):
                            kanji_set.add(char)

    kanji_list = sorted(kanji_set)

    # 指定文字数ごとに改行
    lines = []
    for i in range(0, len(kanji_list), width):
        lines.append(''.join(kanji_list[i:i+width]))

    with open(output_file, 'w', encoding='utf-8', newline='\n') as f:
        f.write('\n'.join(lines))


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description='フォルダ内のテキストから漢字抽出')
    parser.add_argument('dir', nargs='?', default='.', help='対象ディレクトリ')
    parser.add_argument('output', nargs='?', default='kanji_only.txt')
    parser.add_argument('--width', type=int, default=64)
    args = parser.parse_args()

    extract_kanji_from_dir(args.dir, args.output, args.width)