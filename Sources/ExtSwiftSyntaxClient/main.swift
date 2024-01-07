//
//  main.swift
//  ExtSwiftSyntax
//
//  Created by Míng on 2024-01-07.
//  Copyright (c) 2024 Míng <minglq.9@gmail.com>. Released under the MIT license.
//

import ExtSwiftSyntax

let none: String? = nil
let some: String? = "some"

let null = #unwrap(none, message: "it's null")
let string = #unwrap(some, message: "it's string")

print("The value \(string) was produced by the code of macro `unwrap`")
