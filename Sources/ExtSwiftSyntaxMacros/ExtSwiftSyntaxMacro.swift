//
//  ExtSwiftSyntaxMacro.swift
//  ExtSwiftSyntax
//
//  Created by Míng on 2024-01-07.
//  Copyright (c) 2024 Míng <minglq.9@gmail.com>. Released under the MIT license.
//

import SwiftCompilerPlugin

import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

@main
struct ExtSwiftSyntaxPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        UnwrapMacro.self
    ]
}
