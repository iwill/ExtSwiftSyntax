//
//  unwrap.swift
//  ExtSwiftSyntax
//
//  Created by Míng on 2024-01-07.
//  Copyright (c) 2024 Míng <minglq.9@gmail.com>. Released under the MIT license.
//

import Foundation

/// Force-unwraps the optional value passed to `expr`.
/// - Parameter message: Failure message, followed by `expr` in single quotes
@freestanding(expression)
public macro unwrap<Wrapped>(_ expr: Wrapped?, message: String) -> Wrapped
= #externalMacro(module: "ExtSwiftSyntaxMacros", type: "UnwrapMacro")
