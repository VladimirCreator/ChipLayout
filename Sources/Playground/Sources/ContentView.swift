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
