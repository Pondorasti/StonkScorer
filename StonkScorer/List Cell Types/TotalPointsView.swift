//
//  TotalPointsView.swift
//  StonkScorer
//
//  Created by Alexandru Turcanu on 01/01/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import SwiftUI

struct TotalPointsView<Type: TotalPoints>: View {
    @Binding var scorer: Type

    var image: Image
    var title: String

    var body: some View {
        HStack() {
            image
                .font(.system(size: Constants.sfSymbolSize))
//                .foregroundColor(Color(UIColor.systemGreen))
                .frame(minWidth: Constants.iconMinWidth)

            Text("\(title)")

            Text("\(scorer.totalPoints)")
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
        }
    }
}
