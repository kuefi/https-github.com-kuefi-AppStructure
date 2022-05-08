//
//  SingleView.swift
//  AppStructure
//
//  Created by Werner Küfner on 01.05.22.
//

import SwiftUI

struct SingleView: View {
  @Environment(\.dismiss) var dismiss
  @Environment(\.managedObjectContext) private var viewContext
  @FetchRequest(sortDescriptors: []) var cards: FetchedResults<Card>
    var body: some View {
      VStack {
        Image(uiImage: UIImage(data: cards[0].oldImage ?? Data())  ?? UIImage())
          .resizable()
          .frame(width: 100, height: 100)
        HStack {
          ForEach (0..<6) { index in
            Image(uiImage: UIImage(data: cards[index].oldImage ?? Data())  ?? UIImage())
              .resizable()
              .frame(width: 50, height: 50)
          }
        }
      
        Button {
         dismiss()
        } label: {
          Text("Zurück")
        }
      }
      .navigationBarBackButtonHidden(true)
      
    }
    
}

struct SingleView_Previews: PreviewProvider {
    static var previews: some View {
        SingleView()
    }
}
