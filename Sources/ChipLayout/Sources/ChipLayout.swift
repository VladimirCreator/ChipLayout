/* Read Me
   -> History Entry | iPadOS 17.0 | Swift Playgrounds | _ | ChipLayout.swift | Initially Modified: 03:29 PM Fri 08 Sep 2023
   -> History Entry | iPadOS 17.0 | Swift Playgrounds | _ | ChipLayout.swift |      Last Modified: 06:08 PM Fri 08 Sep 2023
*/
import SwiftUI

@available(iOS 13.0.0, *)
public struct NePridumalNazvanieLayout: Layout {
    // This is code is not safe!
    // The Reason: It assumes that `proposal.width` is not `nil`.
    public func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        //
        // Initially Modified: __:__ PM Fri 8 Sep 2023
        //      Last Modified: 06:08 PM Fri 8 Sep 2023
        //
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
