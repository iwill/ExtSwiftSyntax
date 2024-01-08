//
//  IsAndNotMacro.swift
//  ExtSwiftSyntax
//
//  Created by Míng on 2024-01-07.
//  Copyright (c) 2024 Míng <minglq.9@gmail.com>. Released under the MIT license.
//

/// https://github.com/wooky83/SWMacro

import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct IsMacro: ExpressionMacro {
    public static func expansion(of node: some FreestandingMacroExpansionSyntax,
                                 in context: some MacroExpansionContext) -> ExprSyntax {
        guard let argument = node.argumentList.first?.expression, let type = node.argumentList.last?.expression else {
            fatalError("compiler bug: the macro does not have any arguments")
        }
        return "(\(argument) is \(type))"
    }
}

public struct IsNotMacro: ExpressionMacro {
    public static func expansion(of node: some FreestandingMacroExpansionSyntax,
                                 in context: some MacroExpansionContext) -> ExprSyntax {
        guard let argument = node.argumentList.first?.expression, let type = node.argumentList.last?.expression else {
            fatalError("compiler bug: the macro does not have any arguments")
        }
        return "!(\(argument) is \(type))"
    }
}
