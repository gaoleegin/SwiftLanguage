//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//元组
let http404Error = (404,"Not Found")

let (statusCode,statusMessage) = http404Error

print("Tht status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode,_) = http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

//也可以在定义元组的时候给单个元素命名
let http200Status = (statusCode:200,description:"OK")
print("The status code is \(http200Status.statusCode)")
print("The status Message is \(http200Status.description)")

//元组的最大的作用就是作为函数的返回值，

//可选值
//使用可选类型（optionsla）来处理可能缺失的情况。可选类型表示
//有值，等于 X
//没有值
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var severResponse:Int? = 404
severResponse = nil

var surveyAnswer:String?
surveyAnswer = "all right"

//可选绑定,还可以有一个关键词就是where
if let firstNumber = Int("4"),secondNumber = Int("42") where firstNumber > secondNumber{
    print("还不错")
}

//隐式解析可选类型和显示可选类型
let possibleString:String? = "An optional string"
let forcedString:String = possibleString!//需要用惊叹号来获取值

let assumeString:String = "An implicitly unwrapped optional string"
let implicitString:String = assumeString //不需要感叹号

//断言和错误处理还没有做到

//字典,block的处理与判断

var params = ["title":"zhangsan","agr":23]
params.updateValue("hahah", forKey: "title")

var parames = ["re":"re","hh":3]



//延迟存储属性
class MainTabBar: UITabBar {
    lazy var name:String = {
        return "hahaha"
    }()
}

struct timeTable {
    let multiplier: Int
    subscript(index:Int) ->Int{
        return multiplier * index
    }
}

let threeTimesTable = timeTable(multiplier: 3)

threeTimesTable[6]


//防止重写，属性或者下标脚本标记为final来防止他们被重写，只需要在声明关键字前加上final
//在 class 前加上final特性来将整个类标记为final，这样的类
//是不可以被继承的，任何子类继承子类时，在编译时都会报错


















































