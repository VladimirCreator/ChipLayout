// swift-tools-version: 5.9
import PackageDescription

let package: Package = .init(
	name: "ChipLayout",
	products: [
		.library(
			name: "ChipLayout",
			targets: [
				"ChipLayout"
			]
		)
	],
	targets: [
		.target(
			name: "ChipLayout",
			dependencies: [

			]
		),
		.testTarget(
			name: "ChipLayoutTest",
			dependencies: [
				"ChipLayout"
			]
		)
	]
)
