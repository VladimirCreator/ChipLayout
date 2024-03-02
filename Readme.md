# Chip Layout


## Table of Contens

- [Preview](#preview)
- [Description](#description)
- [Discussion](#discussion)
- [License](#license)

## Description


### Topics
swift swift-package-manager swiftui

## Discussion
The package consists of the only product:

1. ChipLayout

It also includes an Xcode project where you can experiment with it.

### Preview
![Preview](/Resources/RPReplay_Final1695936676.mov)

### Getting Started


#### Traditional

1. Open `Sources/ChipLayout.swift`
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
