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


## Table of Contens

- [Description](#description)
- [Discussion](#discussion)
- [License](#license)

## Description


### Topics
swift swift-package-manager swiftui

## Discussion
The package consists of the only Swift package and two Xcode projects:

1. ChipLayout
1. Playground
1. GitHub Cover

### Preview
![Preview](/Resources/RPReplay_Final1695936676.mov)

### Getting Started


#### Traditional

1. Open `/Sources/ChipLayout.swift`
2. Press <kbd>⌘</kbd> + <kbd>A</kbd> to select all
3. Press <kbd>⌘</kbd> + <kbd>C</kbd> to copy
4. Press <kbd>⌘</kbd> + <kbd>V</kbd> to paste
5. Enjoy

#### Tuist
Read the [documentation](https://docs.tuist.io/documentation/tuist/).

#### Xcode
Read the [article](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app/).

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

## Play
Open [`Playground/VladimirCreator/Playground.swift`](Playground/VladimirCreator/Playground.swift).

## License
ChipLayout is licensed under the [Apache-2.0](LICENSE). See the [LICENSE](LICENSE) for more information.
