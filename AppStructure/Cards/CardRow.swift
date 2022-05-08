//
//  CardRow.swift
//  MemoryLayout
//
//  Created by Werner Küfner on 20.02.22.
//

import SwiftUI

struct CardRow: View {
  
  var numberOfColumns: Int
 // let cardView = CardView()
  let cardButton = CardButton()
    var body: some View {
      HStack{
        ForEach (0..<numberOfColumns) {_ in
        cardButton
        }
      }
      .padding(.horizontal)
    }
}

struct CardRow_Previews: PreviewProvider {
    static var previews: some View {
        CardRow(numberOfColumns: 5)
    }
}
