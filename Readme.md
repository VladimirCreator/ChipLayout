# Chip Layout

## Table of Contens
- [Preview](#preview)
- [Usage](#usage)
- [Example](#example)
- [Play](#play)

## Preview
![Preview](/Assets/RPReplay_Final1695936676.mov)

## Usage
### Traditional
1. Open `Sources/ChipLayout.swift`
2. Press <kbd>⌘</kbd> + <kbd>A</kbd> to select all
3. Press <kbd>⌘</kbd> + <kbd>C</kbd> to copy all
4. Press <kbd>⌘</kbd> + <kbd>V</kbd> to paste all
5. Enjoy

### The Swift Package Manager
...

## Example
```swift
import SwiftUI

internal struct ContentView: View {
    internal var body: some View {
        ChipLayout {
            ForEach(0..<256) {
                Text("Chip \($0 + 1)")
            }
        }
    }
}
```

## Play
Open [`/Playground/VladimirCreator/Playground.swift`](/Playground/VladimirCreator/Playground.swift).
