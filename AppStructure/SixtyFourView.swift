//
//  SixtyFourView.swift
//  AppStructure
//
//  Created by Werner Küfner on 01.05.22.
//

import SwiftUI

struct SixtyFourView: View {
  @Environment(\.dismiss) var dismiss
    var body: some View {
      VStack {
        CardRows(numberOfRows: 10, numberOfColumns: 9)
        Button {
         dismiss()
        } label: {
          Text("Zurück")
        }
      }
      .navigationBarBackButtonHidden(true)
        
    }
}

struct SixtyFourView_Previews: PreviewProvider {
    static var previews: some View {
        SixtyFourView()
    }
}
