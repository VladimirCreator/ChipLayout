import ProjectDescription

let project: Project = .init(
	name: "Playground",
	targets: [
		.target(
			name: "Playground",
			destinations: [
				.iPhone,
				.iPad,
			],
			product: .app,
			productName: "Playground",
			bundleId: "com.vladimircreator.playground",
			sources: [
				"Sources/Playground/**"
			]
		)
	]
)
