// swift-tools-version:5.5
//
//  Package.swift
//
//  Copyright (c) 2022 Alamofire Software Foundation (http://alamofire.org/)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import PackageDescription

let package = Package(
    name: "Kenmore-Utilities",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
    ],
    products: [
        .library(
            name: "Kenmore-Utilities",
            targets: ["Kenmore-Utilities"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/curiousurick/Kenmore-Models.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/apple/swift-log.git",
            from: "1.0.0"
        ),
    ],
    targets: [
        .target(
            name: "Kenmore-Utilities",
            dependencies: [
                "Kenmore-Models",
                .product(name: "Logging", package: "swift-log"),
            ],
            path: "Kenmore-Utilities",
            exclude: []
        ),
        .testTarget(
            name: "Kenmore-UtilitiesTests",
            dependencies: ["Kenmore-Utilities"],
            path: "Kenmore-UtilitiesTests",
            exclude: [],
            resources: []
        ),
    ],
    swiftLanguageVersions: [.v5]
)
