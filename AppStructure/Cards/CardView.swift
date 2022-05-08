//
//  CardView.swift
//  MemoryLayout
//
//  Created by Werner Küfner on 20.02.22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
      Image("family")
      .resizable()
      .scaledToFit()
      .overlay(Rectangle().stroke(.black, lineWidth: 1))
      .shadow(radius: 3)
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
