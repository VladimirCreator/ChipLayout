/* Copyright 2024 Vladimir Leonidovich
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

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
