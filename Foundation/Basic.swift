//
//  Basic.swift
//  Starter
//
//  Created by MacBook on 19/01/2021.
//

import Foundation
var colorList  : [String] = ["red","green","blue"]
var regionList : Set = ["Yangon","Mandalay","Naypyitaw"]
var townshipList : [String:[String]] = ["Yangon": ["Tamwe","Yankin","Insein"]]

var doOnNext:((String)->String)? = {_ ->String in ""}

func main(){
    var name = "Soe Myat"
    name = "Kay Khaing"
    colorList.append("orange")
    let townships = townshipList["Yangon"] ?? []
    debugPrint(townships)
    for color in colorList{
        debugPrint(color)
    }
    var indexForWhile = 0
    while indexForWhile < 3 {
        debugPrint(colorList[indexForWhile])
        indexForWhile += 1
    }
    
    var indexForRepeatWhile = 0
    repeat{
        debugPrint(indexForRepeatWhile)
        indexForRepeatWhile += 1
    }while(indexForRepeatWhile < 3)
    
    doOnNext = { name -> String in
        debugPrint("Hello from doOnNext")
        return "Hello"+name
    }
    decrease(doDecrease: {
        
    }, total: 10)
}
func increasement(amount:Int)->()->Int{
    func doProcess()->Int{
        return amount
    }
    return doProcess
}
func decrease(doDecrease:()->Void,total: Int)->Void {
    debugPrint("decrease")
}
