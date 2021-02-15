//
//  GlobalData.swift
//  toDoListWithMyProfileAndImageGallary
//
//  Created by IPHTECH 20 on 10/02/21.
//  Copyright © 2021 iPHTech20. All rights reserved.
//

import Foundation

struct toDoListFormat{
    var title:String
    var description:String
    var isPriorityTask:Int
}
var toDoListRemDataArray:Array<toDoListFormat> = [
    toDoListFormat(title: "Making a UI page", description: "make a basic login page with in two days using constraints.", isPriorityTask: 1),
    toDoListFormat(title: "Learn swift fundamental", description: "learn all swift fundamental like protocal, extension, closure etc.", isPriorityTask: 1),
    toDoListFormat(title: "Making a calculator", description: "make a basic calculator with add, substract, multiply, divide functionality.", isPriorityTask: 0),
    toDoListFormat(title: "Give task status", description: "give the detail that what you have done in your entire day.", isPriorityTask: 0)
]
var toDoListDeleteDataArray:Array<toDoListFormat> = []
var toDoListCompleteDataArray:Array<toDoListFormat> = []
