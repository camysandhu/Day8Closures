//
//  main.swift
//  Day8Closures
//
//  Created by MacStudent on 2019-10-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


// 1.
 let divide =
{
    (val1: Int, val2: Int) -> Int in
    
    return val1 / val2
    
}

let result = divide(10,2)
print("Result:- \(result)")

// 2. Expression Example
func concatStr(s1: String, s2: String) -> String

{
    let val = String(format: "%@ %@", s1, s2)
    
    return val //"\(s1)\(s2)"
}

//let myFunc:(String, String)  -> String
//let finalResult = concatStr(s1: "Toronto", s2: "City")
//print("Concating:- \(finalResult)")

let myFunc:(String, String)  -> String
myFunc = concatStr
let myResult = myFunc("Toronto", "City")
print(myResult)

// 3. Single Expression Implicit

var myArray: [Int] = [5, 6, 75, 20, 36]
let sum = myArray.map
{
    (x) -> Int in
    return x + 1
    
}
print(sum)


var desc = myArray.sorted(by: {(n1,n2) -> Bool in return n1 > n2})
print(desc)

let add = {
    (n1: Int, n2: Int) -> Bool in
    return n1 > n2
    
}

desc = myArray.sorted(by: add)
print(desc)



// Escaping

func call(completion: @escaping(_: Bool) -> Void)
{
    sleep(3)
    completion(false)
    
}
print("Start")
call {
    (flag) in
    print("Inside Block:- \(flag)")
}
print("ENd")


func moreSum(sumFunc: @escaping (_: Int) -> Void)
{
    for x in 1...10
    {
        
        sumFunc(x)
        sleep(2)
    }
}


moreSum { (y) in
    print(y)
}
