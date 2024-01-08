//
//  main.swift
//  ExtSwiftSyntax
//
//  Created by Míng on 2024-01-07.
//  Copyright (c) 2024 Míng <minglq.9@gmail.com>. Released under the MIT license.
//

import ExtSwiftSyntax

import Foundation

let none: String? = nil,
    some: String? = "some"
let null = #unwrap(none, message: "it's null"),
    string = #unwrap(some, message: "it's string")
print("The value \(string) was produced by the code of macro `#unwrap`")

let obj: NSObject = "str" as NSString
let boolIs = #is(obj, NSString)
let boolNot = #is(obj, not: NSString)
print("The value \(boolIs) was produced by the code of macro `#is`")
print("The value \(boolIs) was produced by the code of macro `#is(not:)`")
