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

// #region -Dependencies

import SwiftUI

// #endregion

@available(iOS 13.0.0, *)
public struct NePridumalNazvanieLayout: Layout {
    public func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        guard let availableWidth: CGFloat = proposal.width else { fatalError("`proposal.width` is `nil`") }

        var occupiedWidth: CGFloat = .zero
        return subviews.reduce(CGSize.zero) { accumulator, view in
            let size: CGSize = view.sizeThatFits(.unspecified)
            occupiedWidth += size.width

            if occupiedWidth > availableWidth {
                occupiedWidth = size.width
                return CGSize(width: availableWidth, height: accumulator.height + size.height)
            }
            return CGSize(width: availableWidth, height: accumulator.height == .zero ? size.height : accumulator.height)
        }
    }

    public func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var occupiedWidth: CGFloat = .zero
        var occupiedHeight: CGFloat = .zero

        subviews.forEach { view in
            let size = view.sizeThatFits(.unspecified)
            if occupiedWidth + size.width > bounds.width {
                occupiedWidth = .zero; occupiedHeight += size.height
            }

            let x = bounds.origin.x + size.width / 2 + occupiedWidth
            let y = bounds.origin.y + size.height / 2 + occupiedHeight

            occupiedWidth += size.width
            view.place(at: CGPoint(x: x, y: y), anchor: .center, proposal: proposal)
        }
    }
}
