//
//  AppView.swift
//  art
//
//  Created by Matheus Klauberg on 18/10/20.
//

import SwiftUI

struct AppView: View {
  var body: some View {
    TabView {
      TimelineView()
        .tabItem {
          Image(systemName: "house")
            .font(.title)
        }
      
      TimelineView()
        .tabItem {
          Image(systemName: "magnifyingglass")
        }
      
      UserView()
        .tabItem {
          Image(systemName: "person")
        }
    }
    .onAppear() {
      UITabBar.appearance().barTintColor = .white
    }
    .accentColor(.red)
    
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
