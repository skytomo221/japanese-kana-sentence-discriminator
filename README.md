# Japanese Kana Sentence Discriminator

日本語かな文判定器です。
このリポジトリは「かな」だけで書かれた文が意味を持っているか判定するプログラムを作成するために作られました。

## アルゴリズム

機械学習を使ってかな文字をベクトル化します。
これはWord2Vecと同じ方法を使って行います。
ベクトル化した結果は以下の通りです。

![](https://github.com/skytomo221/japanese-kana-sentence-discriminator/blob/master/output.gif?raw=true)

そして、文字の羅列を、一文字一文字のかなに対して上に示すベクトルに変換し、双方向LSTMで機械学習させます。
学習結果の正解率は94%で微妙です。

## 環境構築

1. Visual Studio Code を起動する。
2. 拡張機能で[Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)をインストールする。
3. ステータスバーの左端にある![image](https://user-images.githubusercontent.com/18415838/137567497-f16c9ef4-ed2c-4f8e-bde4-d3d5f452787e.png)
   をクリックする。
4. 「Reopen in Container」をクリックする。
