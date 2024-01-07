//
//  ExtSwiftSyntaxTests.swift
//  ExtSwiftSyntax
//
//  Created by Míng on 2024-01-07.
//  Copyright (c) 2024 Míng <minglq.9@gmail.com>. Released under the MIT license.
//

import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(ExtSwiftSyntaxMacros)
import ExtSwiftSyntaxMacros
#endif

final class ExtSwiftSyntaxTests: XCTestCase {
    func testMacro() throws {
        #if canImport(ExtSwiftSyntaxMacros)
        assertMacroExpansion(
            """
            #unwrap(expr, message)
            """,
            expandedSource: """
            { [wrappValue = expr] in
                guard let wrappValue else {
                    preconditionFailure(message)
                }
                return wrappValue
            }()
            """,
            macros: [ "unwrap": UnwrapMacro.self ]
        )
        #else
        throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func testMacroWithStringLiteral() throws {
        #if canImport(ExtSwiftSyntaxMacros)
        assertMacroExpansion(
            #"""
            #unwrap(expr, "message")
            """#,
            expandedSource: #"""
            { [wrappValue = expr] in
                guard let wrappValue else {
                    preconditionFailure("message")
                }
                return wrappValue
            }()
            """#,
            macros: [ "unwrap": UnwrapMacro.self ]
        )
        #else
        throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }
}
