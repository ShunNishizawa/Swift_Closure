# Swift_Closure

## クロージャとは？

- 簡単に言うと、ブロックで囲んだ中にある処理を実行する自己完結型の機能

```
// 基本の型
{(引数名1: 型, 引数名2: 型, ...) -> 戻り値の型 in 
	クロージャの実行時に実行される文
}
```

## クロージャのメリット

- 記述を省略できる。
    - ここが1番のメリット。コードの可読性が上がる。
- 処理をまとめて定義できる
- 型として活用できる
- 変数や定数のキャプチャ
    - キャプチャとは、スコープ街の変数などをクロージャ内から操作、参照できる仕様のこと

## 関数とクロージャの違い
- 処理的な意味ではあまり変化はない
- 名前があるかないか
- 値をキャプチャできるかできないか
- 外部引数名の使用の是非
- デフォルト引数の使用の是非
