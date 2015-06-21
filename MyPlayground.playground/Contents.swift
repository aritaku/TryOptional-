//: Playground - noun: a place where people can play

import UIKit

//1. Optionalってなに？
//コードを書くときに、随時変数の中身がnilがどうかを気にする必要がある。

//Optionalを宣言
var myOptional1:Optional<Int>

//Optional<Int>と書くのはめんどうなので?や!を使う
//初期値がnilであることに注意

var myOptional2: Int?
print(myOptional2)

var myOptionalLabel :UILabel!

//Optionalを宣言時に初期化するとき
var myOptionalNum :Int? = 10

//2. Optional型の変数をUnwrapして使う
let myOp :Int? = 10

//2-1. Forced Unwrapped
//代入する際に!を付ける
//返り値は非Optional型
class Dog {
    func bark() -> String {
        return "Wan!"
    }
}

var wrappedDog: Dog? = Dog()
println(wrappedDog!.bark())

//nilをunwrapするとランタイムエラーが起こる
//以降の値が表示されなくなるので/* */をとって確認してみよう
wrappedDog = nil
/*
println(wrappedDog!.bark())
*/

//2-2. Optional chaining
//代入する際に?を付ける
//返り値はOptional型
var wrapped🐶: Dog? = Dog()
println(wrapped🐶?.bark())

//nilをunwrapするとnilが返ってくる
wrapped🐶 = nil
println(wrapped🐶?.bark())

//2-3. Optional Binding
//仮の変数に一時保存してnilチェックをする
let myHelloWorld: String? = "Hello world!"
if var myString = myHelloWorld {
    println(myString)
}

while var myString = myHelloWorld {
    println(myString)
    break
}

//2-4. Implicitly Unwrapped Optional
var imOptionalLabel :ImplicitlyUnwrappedOptional<UILabel>

//長ったらしいので!を使って楽をする
var imNumber :Int! = 10

//変数に代入すると勝手にUnwrapしてくれる
var unwrappedNumber = imNumber

//nilを代入するとランタイムエラーが起こる
// /* */をとって確認してみよう
imNumber = nil
/*
var number :Int = imNumber
*/

//2-5. おまけ1
//比較演算子を使うとtrue, falseを返してくれる

var omake :String? = "leaders研修"
var omakeNum :Double? = 2.5

omake == nil
omake != nil
omakeNum > 1.0
omakeNum < 1.0
omakeNum <= 2.4

//2-6. おまけ2
//nil結合演算子
//??を使うとoptional型がnilでなければその値を,nilなら指定した値を代入できる

var 🐩 :Int?
let b = 🐩 ?? 10

var 😊:String? = "Hello LiT"
var v: String = 😊 ?? "Good bye LiT"

