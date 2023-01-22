// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
  name: "TextConvertible",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .watchOS(.v6),
    .tvOS(.v13)
  ],
  products: [
    .library(
      name: "TextConvertible",
      targets: ["TextConvertible"]
    ),
  ],
  targets: [
    .target(
      name: "TextConvertible"
    )
  ]
)
