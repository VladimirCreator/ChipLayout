<!-- Copyright 2024 Vladimir Leonidovich

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

	    http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
-->

# Chip Layout

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FVladimirCreator%2FChipLayout%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/VladimirCreator/ChipLayout)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FVladimirCreator%2FChipLayout%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/VladimirCreator/ChipLayout)
![](https://img.shields.io/github/license/VladimirCreator/ChipLayout)
![](https://img.shields.io/github/created-at/VladimirCreator/ChipLayout)

![](https://img.shields.io/github/stars/VladimirCreator/ChipLayout)

## Table of Contens

- [Synopsis](#synopsis)
- [Discussion](#discussion)
- [License](#license)
- [Copyright](#copyright)

## Synopsis

.

### Keywords

git pulumi
swift
swift-package-manager
swiftui

## Discussion

The package consists of the only Swift package and two Xcode projects:

1. [ChipLayout](./Sources/ChipLayout/): the main product
1. [Playground](./Sources/Playground/): a little SwiftUI product that shows the main product in action
1. [GitHub Cover](./Sources/GitHub%20Cover/): a little SwiftUI product that is used to create Open Graph image

### Preview

![Preview](./Resources/RPReplay_Final1695936676.mov)

### Getting Started

#### Traditional

1. Open [`Sources/ChipLayout/Sources/ChipLayout.swift`](./Sources/ChipLayout/Sources/ChipLayout.swift)
2. Press <kbd>⌘</kbd> + <kbd>A</kbd> to select all
3. Press <kbd>⌘</kbd> + <kbd>C</kbd> to copy
4. Press <kbd>⌘</kbd> + <kbd>V</kbd> to paste
5. Enjoy

#### Tuist

Read [the following documentation](https://docs.tuist.io/documentation/tuist/).

#### Xcode

Read [the following article](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app/).

### Example

```swift
import SwiftUI
import ChipLayout

internal struct ContentView: View {
	internal var body: some View {
		ChipLayout {
			ForEach(.zero..<256, id: \.self) { integer in
				Text("Chip \(integer)")
			}
		}
	}
}
```

## License

This repository is licensed under the terms of the [Apache-2.0](LICENSE) license.

## Copyright

Copyright &#169; 2024 Vladimir Leonidovich. All rights reserved.
