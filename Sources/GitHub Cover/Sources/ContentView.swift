import SwiftUI

internal struct ContentView: View {
	private let tags: [String] = [
		"All Tags",
		"iOS", "iPadOS", "macOS",
		"Swift", "TypeScript", "JavaScript",
		"SwiftData", "SwiftUI", "UIKit",
		"Xcode",
		"GitHub", "GitLab", "BitBucket",
		"GitHub Actions", "Xcode Cloud",
		"Apple", "Google", "Microsoft"
	]

	internal var body: some View {
		ChipLayout {
			ForEach(tags, id: \.self) { tag in
				Text(tag == "All Tags" ? tag : "#\(tag)")
			}
			.font(.system(size: 15, weight: .semibold))
			.foregroundStyle(Color(.sRGB, red: 0x82 / 0xFF, green: 0x7F / 0xFF, blue: 0x82 / 0xFF))
			.padding(6)
			.padding([.leading, .trailing], 4)
			.background(Color(.sRGB, red: 0xF3 / 0xFF, green: 0xF0 / 0xFF, blue: 0xF3 / 0xFF))
			.clipShape(RoundedRectangle(cornerSize: .init(width: 10, height: 10)))
			.padding([.trailing, .bottom], 8)
		}
		.frame(width: 426.6)
		.padding(18)
		.background(Color(.sRGB, red: 0xFF / 0xFF, green: 0xFE / 0xFF, blue: 0xFF / 0xFF))
		.clipShape(RoundedRectangle(cornerSize: .init(width: 8, height: 8)))
		.frame(width: 1280 / 2, height: 640 / 2)
		.background(Color(.sRGB, red: 0xF4 / 0xFF, green: 0xF4 / 0xFF, blue: 0xF9 / 0xFF))
	}
}
