<details>
<summary>Languages</summary>
  <b>English</b>
  ❘
  <a href="README-ja.md" title="この文書を日本語で読む。">日本語</a>
</details>

# Vim-LeXML―LeXML binding for Vim
## About LeXML
[**LeXML**](http://www.d-assist.com/lexml.html) (stands for “**Lex**icographical E**x**tensible **M**arkup **L**anguage”) is one of the interchange format for e-dictionaries.

## How to Install
*(This is not the only way to install vim-lexml to your Vim system.)*

1. Start Vim and check the values of `packpath`.
```vim
:set packpath?
```
2. Choose one of the values of `packpath` as the location where plugin is installed.
(e.g. `~/.vim`)
3. Make directory `$PACKPATH/pack/` if it doesn’t exist, where `$PACKPATH` is which you choosed.
4. Clone this git repository to that path.
```console
$ cd ~/.vim/
$ mkdir pack && cd pack
$ git clone 'https://github.com/cmplstofB/vim-lexml.git'
```
