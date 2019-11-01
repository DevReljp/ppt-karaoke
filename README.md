# Reveal.jsでパワポカラオケ

## 必要なもの

- Ruby

## 準備

1. speakers.txt にスピーカーの名前を列挙する
2. titles.txt に登壇タイトルを列挙する
3. imagesフォルダに画像を入れる

### 画像の命名規則

- photo-1.jpg
- photo-2.jpg

など `photo-数字.jpg` になっていること。

## 使い方

karaoke.sh を実行する。

speakers.txtからランダムでスピーカーを抽出し、titles.txtからランダムでタイトルを抽出、imagesフォルダの画像を適当に5つ選んでReveal.js用のファイル index.html を生成する。最後、index.htmlを開く。

Windowsの場合、開かないと思うので、コマンドプロンプトで `ruby shuffle.rb > index.html` を実行して index.html を開いてください。

## ライセンス

Reveal.jsと同じMIT。
