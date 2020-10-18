//
//  UserView.swift
//  art
//
//  Created by Matheus Klauberg on 18/10/20.
//

import SwiftUI

struct UserView: View {
  var username: String = "username"
  var hideNavigation: Bool = false
  
  var body: some View {
    NavigationView {
      ScrollView(showsIndicators: false) {
        VStack(alignment: .leading) {
          HeaderView()
        }
      }
      .padding([.horizontal, .top])
      .navigationBarTitle(Text(username))
      .navigationBarTitleDisplayMode(.inline)
      .navigationBarHidden(hideNavigation)
    }
  }
}

struct HeaderView: View {
  var body: some View {
    VStack {
      HStack {
        Circle()
          .frame(width: 48, height: 48)
          .padding(.trailing, 32)
        
        VStack(alignment: .center) {
          Text("100")
            .font(.title3)
            .foregroundColor(.primary)
            .bold()
          
          Text("Posts")
            .font(.caption2)
            .foregroundColor(.secondary)
            .bold()
        }
        
        Spacer()
      }
      
      VStack {
        HStack {
          Text("name here")
            .font(.subheadline)
            .bold()
          
          Spacer()
        }
        
        HStack {
          Text("short description here")
            .font(.subheadline)
          
          Spacer()
        }
        
        HStack {
          Button(action: { }) {
            Text("follow")
            
          }
          
          Spacer()
        }
        .padding(.top, 8)
      }
    }
  }
}


struct UserView_Previews: PreviewProvider {
  static var previews: some View {
    UserView(username: "username")
  }
}
