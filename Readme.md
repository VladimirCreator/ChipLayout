# Chip Layout

## Table of Contens
- [Preview](#preview)
- [Usage](#usage)
- [Example](#example)
- [Play](#play)

## Preview

## Usage
### Traditional
1. Open `ChipLayout.swift`
2. Press <kbd>⌘</kbd> + <kbd>A</kbd>
3. Press <kbd>⌘</kbd> + <kbd>C</kbd>
4. Press <kbd>⌘</kbd> + <kbd>V</kbd>
5. Use

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
