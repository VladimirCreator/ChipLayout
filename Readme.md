# Chip Layout

## Table of Contens
- [Preview](#preview)
- [Usage](#usage)
- [Example](#example)

## Preview

## Usage
1. Open `ChipLayout.swift`
2. Press <kbd>⌘</kbd> + <kbd>A</kbd>
3. Press <kbd>⌘</kbd> + <kbd>C</kbd>
4. Press <kbd>⌘</kbd> + <kbd>V</kbd>
5. Use

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
