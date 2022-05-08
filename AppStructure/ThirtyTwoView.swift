//
//  ThirtyTwoView.swift
//  AppStructure
//
//  Created by Werner Küfner on 01.05.22.
//

import SwiftUI

struct ThirtyTwoView: View {
  @Environment(\.dismiss) var dismiss
    var body: some View {
      VStack {
        CardRows(numberOfRows: 6, numberOfColumns: 5)
        Button {
         dismiss()
        } label: {
          Text("Zurück")
        }
      }
      .navigationBarBackButtonHidden(true)
        
    }
}

struct ThirtyTwoView_Previews: PreviewProvider {
    static var previews: some View {
        ThirtyTwoView()
    }
}
