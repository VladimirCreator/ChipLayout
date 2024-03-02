/* Read Me
   -> History Entry | iPadOS 17.0 | Swift Playgrounds | _ | GitHub.swift | Initially Modified: 12:05 AM Fri 29 Sep 2023
   -> History Entry | iPadOS 17.0 | Swift Playgrounds | _ | GitHub.swift |      Last Modified: __:__ _M ___ __ ___ 2___

 Swift
 - class

 Swift Playgrounds
 - file
 - folder

 Wed 6 Seo 2023
 __:__ _M | `private Recipe` | (+)
 #typealias
*/

import SwiftUI

internal struct ContentView: View {
	@State private var trigger: Bool = false
	@State private var numbers: [String] = (0...254).map { String($0 * 2) }
	@State private var activeIndex: Int? = nil

	internal var body: some View {
		NavigationStack {
			if trigger {
				Color.accentColor
			}
			else {
				GeometryReader { reader in
					ScrollView {
						ChipLayout {
							ForEach(numbers, id: \.self) { number in
								Text(number == "136" ? "100%" :
										(number == "138" || number == "140") ? "50%" :
										number == "142" || number == "144" || number == "146" ? "33%" :
										Int(number)! >= 148 && Int(number)! <= 154 ? "25%" :
										number == "156" || number == "158" || number == "160" || number == "162" || number == "164" ? "20%" :
										Int(number)! >= 166 && Int(number)! <= 184 ? "10%" :
										Int(number)! >= 186 && Int(number)! <= 384 ? "1%":
										number
								)
								.monospaced(true)
								.padding()
								.frame(
									width: number == "136" ? reader.size.width :
										(number == "138" || number == "140") ? reader.size.width / 2 :
										number == "142" || number == "144" || number == "146" ? reader.size.width / 3 :
										number == "148" || number == "150" || number == "152" || number == "154" ? reader.size.width / 4 :
										number == "156" || number == "158" || number == "160" || number == "162" || number == "164" ? reader.size.width / 5 :
										Int(number)! >= 166 && Int(number)! <= 184 ? reader.size.width / 10 :
										Int(number)! >= 186 && Int(number)! <= 384 ? reader.size.width / 100.1 :
										nil
								)
								.foregroundColor(activeIndex == Int(number) ? .white : .black)
								.background(activeIndex == Int(number) ? .black : .white)
								.border(activeIndex == Int(number) ? .white : .black, width: 1)
								.contextMenu {
									Button {
										let a = String(Int(number)! + 1)
										guard let index = numbers.firstIndex(where: {Int($0)! > Int(number)!}) else { return }

										withAnimation {
											numbers.insert(
												a,
												at: index
											)
										}
									} label: {
										Label("Insert", systemImage: "asterisk.circle")
									}
								}
								.onTapGesture(count: 2) {
									activeIndex = Int(number)
									withAnimation {
										numbers = numbers.filter { $0 != number }
									}
									activeIndex = nil
								}
							}
						}
					}
				}
				.toolbar {
					ToolbarItemGroup(placement: .bottomBar) {
						Button {
							withAnimation {
								numbers.shuffle()
							}
						} label: {
							Label("Shuffle", systemImage: "shuffle.circle")
								.labelStyle(.titleAndIcon)
						}
						Spacer()
						Button {
							withAnimation {
								numbers.sort { Int($0)! < Int($1)! }
							}
						} label: {
							Label("Sort", systemImage: "asterisk.circle")
								.labelStyle(.titleAndIcon)
						}
					}
					ToolbarItem {
						Button {
							guard let last = numbers.last else { return }
							withAnimation {
								numbers.append(String(Int(last)! + 1))
							}
						} label: {
							Label("Append", systemImage: "plus.circle")
								.labelStyle(.titleAndIcon)
						}
					}
				}
				.navigationTitle("Chip Layout")
				.navigationBarTitleDisplayMode(.inline)
			}
		}
		.accentColor(.blue)
	}

	private var forceRender: some SwiftUI.View {
		Button("Force Render") {
			for _ in 0...1 { trigger.toggle() }
		}
		.buttonStyle(.borderedProminent)
	}
}
