<details>
<summary>Languages</summary>
  <a href="README.md" title="Read this document in English.">English</a>
  ❘
  <b>日本語</b>
</details>

# Vim-LeXML―Vim向けのLeXML束縛
## LeXMLについて
[**LeXML**](http://www.d-assist.com/lexml.html)（“**Lex**icographical E**x**tensible **M**arkup **L**anguage”の略称）とは，辞書用情報交換形式の一つである。

## 導入方法
*（これはVim系にvim-lexmlを導入する唯一の方法ではない。）*

1. Vimを起動して`packpath`の値を確認する。
```vim
:set packpath?
```
2. `packpath`の値の一つを本プラグインの導入先として選ぶ。（例: `~/.vim`）
3. `$PACKPATH/pack/vim-lexml/start/`ディレクトリを作成する（`$PACKPATH`は選んだ導入先）。
4. そのパスに本gitリポジトリを複製する。
```console
$ git clone 'https://github.com/cmplstofB/vim-lexml.git'
```
