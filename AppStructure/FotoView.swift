//
//  FotoView.swift
//  AppStructure
//
//  Created by Werner Küfner on 30.04.22.
//

import SwiftUI

struct FotoView: View {
  @Environment(\.managedObjectContext) private var viewContext
  @FetchRequest(sortDescriptors: []) var cards: FetchedResults<Card>
  
  @State var changeProfileImage = [false, false, false, false, false]
  @State var openCameraRoll = [false, false, false, false, false]
  
  @State var imageSelected = [UIImage(), UIImage(), UIImage(), UIImage(), UIImage()]

  let screenSize: CGRect = UIScreen.main.bounds
  
  var body: some View {
    let screenWidth = screenSize.width
    VStack {
      Spacer()
      HStack {
        Spacer()
        ForEach (0..<5) { index1 in
          let image = UIImage(data: cards[index1].oldImage ?? Data()) ?? UIImage()
         
          HStack {
            Button {
              changeProfileImage[index1] = true
              openCameraRoll[index1] = true
            } label: {
              if changeProfileImage[index1] {
                Image(uiImage: imageSelected[index1])
                  .resizable()
                  .frame(width: screenWidth/5-10, height: screenWidth/5-10)
                  .scaledToFit()
                  .overlay(Rectangle().stroke(.black, lineWidth: 1))
                  .shadow(radius: 3)
              } else {
                Image(uiImage: image)
                .resizable()
                .frame(width: screenWidth/5-10, height: screenWidth/5-10)
                .scaledToFit()
                .overlay(Rectangle().stroke(.black, lineWidth: 1))
                .shadow(radius: 3)
              }
            }
            .sheet(isPresented: $openCameraRoll[index1], onDismiss: {
              print("\(index1)")
              print("\(cards.count)")
           let newImage = imageSelected[index1].jpegData(compressionQuality: 0.2)
              
              viewContext.performAndWait {
                cards[index1].oldImage = newImage
                try? viewContext.save()
              }
           }) {
             ImagePicker(selectedImage: $imageSelected[index1], sourceType: .photoLibrary)
            }
          }
        }
        Spacer()
      }
      
     
    
        Spacer()
      }
    }
  }


struct FotoView_Previews: PreviewProvider {
    static var previews: some View {
        FotoView()
    }
}
