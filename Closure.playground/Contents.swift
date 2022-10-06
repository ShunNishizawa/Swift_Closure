import UIKit

/******************************************************
 * Sample1
 * 戻り値なし
 */
var sample1 = { (num1: Int, num2: Int) -> Void in

    print("\(num1 + num2)")
}

// 実行
sample1(1,2)

/******************************************************
 * Sample2
 * 戻り値あり
 * *1:クロージャー内の処理が1文のため"return"は必要ない
 */
var sample2 = { (num1: Int, num2: Int) -> Int in

    num1 + num2    // *1
    // return num1 + num2
}

// 実行
print("\(sample2(1,2))")

/******************************************************
 * Sample3
 * クロージャ内からの変数はアクセス可能である
 * *1:クロージャー内の処理が1文のため"return"は必要ない
 */
func sample3() -> () -> Int{
    var localCount:Int = 0
    let closure = { () -> Int in
        localCount = localCount + 1
        return localCount
    }
  return closure
}

var cl = sample3() // クロージャを変数に格納
dump(cl) // () -> Int
cl() // 1 問題なく実行できる
cl() // 2 さらにlocalCountの値が保持され
cl() // 3 実行のたびにインクリメントされていく
