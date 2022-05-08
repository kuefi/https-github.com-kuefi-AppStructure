//
//  CentralView.swift
//  AppStructure
//
//  Created by Werner Küfner on 27.04.22.
//

import SwiftUI

struct CentralView: View {
  
 
    var body: some View {
      NavigationView {
        VStack {
          
          NavigationLink(destination: FotoView(), label: {Text("lade Deine Fotos")})
        
          Spacer()
          
          NavigationLink {
            SingleView()
          } label: {
            Text("Testlauf")
          }
          
          Spacer()
          NavigationLink {
            SixteenView()
          } label: {
            Text("Spiele 16 Karten")
          }
          
          Spacer()

          NavigationLink {
            ThirtyTwoView()
          } label: {
            Text("Spiele 32 Karten")
          }
          
          Spacer()
          
          NavigationLink {
            SixtyFourView()
          } label: {
            Text("Spiele 64 Karten")
          }
          Spacer()
        }
       

        
      }
      .navigationBarBackButtonHidden(true)
      
    }
}

struct CentralView_Previews: PreviewProvider {
    static var previews: some View {
        CentralView()
    }
}
