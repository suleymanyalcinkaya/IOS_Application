//
//  main.swift
//  CommandLineVariable
//
//  Created by Süleyman Yalçınkaya on 6.08.2022.
//  Variable
//snake_case
//camelCase

import Foundation

var userName="james"
userName.append("o")
userName.lowercased()
//userName.uppercased()
//print(userName)

//var userSurname="mayk"

//userName="lars"

//integer
let userAge=50
let myNumber=4
//print(userAge/myNumber)

//part2---
let myVariable : String

myVariable="Test"
let myUpperVariable = myVariable.uppercased()
//print(myUpperVariable)
//print(myVariable)
//arrayy---
var myFavoriteMovies = ["Pulp Ficrion","Kill Bill", "Reservoir Dogs", 5,true] as [Any]
//print(myFavoriteMovies[0])
var myStringArray=["Test1","Test2","Test3"]
//print(myStringArray[0].uppercased())
//print(myStringArray[myStringArray.count-1])
 
var mySet : Set = [1,2,3,4,5,1,2]
//print(mySet)
var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]

var mySet3=mySet.union(mySet2)
//print(mySet3)

//Dictionary
//key-value pairing
var myDictionary=["Run" : 100, "Swim":200, "Basketbal":500]
//print(myDictionary["Run"])

//while Loop
var number = 0
while number <= 10 {
   // print(number)
    number += 1
}
var myFruitArray=["Banana","Apple","Orange"]
for fruit in myFruitArray{
    //print(fruit)
}
var myNumbers=[10,20,30,40,50]
for sonuc in myNumbers{
    
    //print(sonuc/5)
}
//Input & Output
func sumFuntion (x: Int, y: Int){
   // print(x+y)
}
sumFuntion(x: 10, y: 20)
var myName : String?
myName?.uppercased()
//optionals : ? vs !
var myAge = "5"
var myInteger = (Int(myAge) ?? 0) * 5

if let myNumber = Int(myAge){
    print(myNumber*5)
}else{
    print("wrong input")
}










