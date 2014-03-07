# 概要
プロダクトコードの静的ライブラリに対してテストを行う。
テストスイート内でプロダクトコードに無いヘッダファイルを include している場合、そのソースファイルは
コンパイルされない。自動でコンパイルするためには、以下のように特別なコメントを書く。

自動でコンパイルされない例
`#include "unity.h"`
↓
自動でコンパイルされる例
`#include "unity.h" /* RAKE_MARKER:do_compile */`

# 使い方
プロダクトコードの静的ライブラリを作成

`./unity/do_rake <libpath> <libname>`

<libpath> … 静的ライブラリのあるパス。do_rake のあるディレクトリから見た相対パスか、絶対パスを指定
<libname> … 静的ライブラリ名。libproduct.a なら、product と指定

