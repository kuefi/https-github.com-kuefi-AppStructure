//
//  CardRows.swift
//  MemoryLayout
//
//  Created by Werner Küfner on 20.02.22.
//

import SwiftUI

struct CardRows: View {
  
  var numberOfRows:Int
  var numberOfColumns: Int

  
    var body: some View {
      VStack{
        Text("Spiele:")
          .font(.headline)
          .fontWeight(.bold)
          .multilineTextAlignment(.center)
          .lineLimit(2)
        ForEach (0..<numberOfRows) {_ in
        CardRow(numberOfColumns: numberOfColumns)
        }
      }
      .padding(.vertical)
    }
}

struct CardRows_Previews: PreviewProvider {
    static var previews: some View {
        CardRows(numberOfRows: 7, numberOfColumns: 4)
    }
}
