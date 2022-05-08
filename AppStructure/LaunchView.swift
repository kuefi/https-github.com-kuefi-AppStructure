//
//  LaunchView.swift
//  AppStructure
//
//  Created by Werner Küfner on 27.04.22.
//

import SwiftUI

struct LaunchView: View {
  
  var body: some View {
    
    NavigationView {
      ZStack {
        Image("background")
          .ignoresSafeArea()
        VStack {
          Spacer()
          Text("Entdecke Deine Familie")
            .bold()
          Spacer()
          Text("Discover your family")
            .bold()
          Spacer()
          Text("Découvre ta famille")
            .bold()
          Spacer()
          NavigationLink {
            CentralView()
          } label: {
            Text("Weiter")
          }
          Spacer()
        }
      }
    }
  }
}

struct LaunchView_Previews: PreviewProvider {
  static var previews: some View {
    LaunchView()
  }
}
