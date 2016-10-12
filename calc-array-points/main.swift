//
//  main.swift
//  calc-array-points
//
//  Created by Rohan Thakkar on 10/11/16.
//  Copyright © 2016 Rohan Thakkar. All rights reserved.
//

import Foundation



func add(x:Int, y:Int) -> Int{
    return x+y
}


func subtract(x:Int, y:Int) -> Int{
    return x-y
}


func multiply(x:Int, y:Int) -> Int{
    return x*y
}


func divide(x:Int, y:Int) -> Int{
    return x/y
}

//print(add(x:1,y:3))


func math() -> Int{
    print("Please enter operation: +,-,*,/")
    let command = String(readLine(strippingNewline: true)!)
    if (command != "+") && (command != "-") && (command != "*") && (command != "/"){
        print("Incorrect operation entered, lets do it again")
        return math()
    }
    
    var a:Int
    print("First integer")

    if let i = readLine(strippingNewline: true){ //keyboard
        a = Int(i)!
        //inputs.append(a)
    }
    else{
        a = 0
    }
    //print(a)
    
    print("Second integer")
    
    var b:Int
    if let i = readLine(strippingNewline: true){ //keyboard
        b = Int(i)!
        //inputs.append(a)
    }
    else{
        b = 0
    }
    //print(b)
    
    if command == "+"{
        //print("Addition")
        return add(x:a,y:b)
    }
    else if command == "-"{
        //print("Addition")
        return subtract(x:a,y:b)
    }
    else if command == "*"{
        //print("Addition")
        return multiply(x:a,y:b)
    }
    else if command == "/"{
        //print("Addition")
        return divide(x:a,y:b)
    }
return 0

}

print(math())


func count(array:[Int]) -> Int{
    return array.count
}


func add_array(array: [Int]) -> Int {
    var sum = 0
    for i in array{
        sum += i
    }
    return sum
}

func multiply_array(array: [Int]) -> Int {
    var prod = 1
    for i in array{
        prod *= i
    }
    return prod
}

func avg(array: [Int]) -> Double {
    if array.count==0{return 0}
    var sum = array[0]
    var i = 1
    while i < array.count{
        sum += array[i]
        i+=1
    }
    return Double(sum)/Double(array.count)
}

func transform_array(array:[String]) -> [Int]{
    var transformed_array = [Int]()
    
    for i in array{
        transformed_array.append(Int(i)!)
    }
    return transformed_array
}


func math_array(){
    print("Please enter operation: 'add','multiply','avg','count'")
    let command = String(readLine(strippingNewline: true)!)
    if (command != "add") && (command != "multiply") && (command != "avg") && (command != "count"){
        print("Incorrect operation entered, lets do it again")
        return math_array()
    }
    //var entries = [Int]()
    
    print("Enter integers separated by a comma")
    
    let statement = readLine(strippingNewline: true)!
    let inputs = statement.components(separatedBy: ",")
    //print(entries)
    let entries = transform_array(array:inputs)

    //print(b)
    
    if command == "add"{
        //print("Addition")
        print(add_array(array:entries))
    }
    else if command == "multiply"{
        //print("Addition")
        print(multiply_array(array:entries))
    }
    else if command == "avg"{
        //print("Addition")
        print(avg(array:entries))
    }
    else if command == "count"{
        //print("Addition")
        print(count(array:entries))
    }

}

math_array()



print("Please enter X and Y co-ordinates for point A as x,y")

var A = readLine(strippingNewline: true)!
var A_co_s = A.components(separatedBy: ",")


if A_co_s.count != 2{
    print("Incorrect input")
}
else{
var A_co = transform_array(array:A_co_s)

print("Please enter X and Y co-ordinates for point B as x,y")

var B = readLine(strippingNewline: true)!
var B_co_s = B.components(separatedBy: ",")
    
    
if B_co_s.count != 2{
    print("Incorrect input")
}
else{
var B_co = transform_array(array:B_co_s)

func add_tuples(A:[Int],B:[Int]) -> (Int,Int){
    return ((A[0]+B[0]),(A[1]+B[1]))
}

func subtract_tuples(A:[Int],B:[Int]) -> (Int,Int){
    return ((A[0]-B[0]),(A[1]-B[1]))
}

print("Addition of X and Y tuples = \(add_tuples(A: A_co, B: B_co))")
print("Subtraction of X and Y tuples = \(subtract_tuples(A: A_co, B: B_co))")

}
}

