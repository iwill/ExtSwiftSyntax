//
//  isAndNot.swift
//  ExtSwiftSyntax
//
//  Created by Míng on 2024-01-07.
//  Copyright (c) 2024 Míng <minglq.9@gmail.com>. Released under the MIT license.
//

import Foundation

@freestanding(expression)
public macro `is`<Wrapped>(_ expr: Wrapped, _ type: Any) -> Bool
= #externalMacro(module: "ExtSwiftSyntaxMacros", type: "IsMacro")

@freestanding(expression)
public macro `is`<Wrapped>(_ expr: Wrapped, not type: Any) -> Bool
= #externalMacro(module: "ExtSwiftSyntaxMacros", type: "IsNotMacro")
