//
//  SixteenView.swift
//  AppStructure
//
//  Created by Werner Küfner on 30.04.22.
//

import SwiftUI

struct SixteenView: View {
  @Environment(\.dismiss) var dismiss
 // @Environment(\.managedObjectContext) private var viewContext
 // @FetchRequest(sortDescriptors: []) var cards: FetchedResults<Card>
  //@State var imageSelected = [UIImage(), UIImage(), UIImage(), UIImage(), UIImage()]
    var body: some View {
      //let image = UIImage(data: cards[0].oldImage ?? Data()) ?? UIImage()
      VStack {
       // Image(uiImage: imageSelected[0])
      CardRows(numberOfRows: 4, numberOfColumns: 4)
        Button {
         dismiss()
        } label: {
          Text("Zurück")
        }
      }
      .navigationBarBackButtonHidden(true)
        
    }
}

struct SixteenView_Previews: PreviewProvider {
    static var previews: some View {
        SixteenView()
    }
}
