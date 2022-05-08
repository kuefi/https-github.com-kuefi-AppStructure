//
//  CardButton.swift
//  MemoryLayout
//
//  Created by Werner Küfner on 20.02.22.
//

import SwiftUI

struct CardButton: View {
  let cardView = CardView()
    var body: some View {
      Button {print("hallo")} label: {
        cardView
      }
    }
}

struct CardButton_Previews: PreviewProvider {
    static var previews: some View {
        CardButton()
    }
}
