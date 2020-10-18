//
//  Posts.swift
//  art
//
//  Created by Matheus Klauberg on 18/10/20.
//

import SwiftUI

struct PostView: View {
  // post has the following properties:
  // - id
  // - username
  // - date
  // - description
  // - previewImg
  // - scene
  
  var body: some View {
    VStack {
      HStack(alignment: .center) {
        NavigationLink(
          destination: UserView(username: "teste", hideNavigation: self.hideNavigationBar),
          label: {
            Circle()
              .frame(width: 24, height: 24)
              .fixedSize()
              .padding(.trailing, -4)
            
            Text("username")
              .font(.subheadline)
              .bold()
          }
        )
        
        Spacer()
        
        Button(action: { }) {
          Image(systemName: "ellipsis")
            .foregroundColor(.secondary)
        }
      }
      .padding(.bottom, 2)
      
      ZStack {
        RoundedRectangle(cornerRadius: 2).fill(Color.white)
          .frame(height: 100)
        
        RoundedRectangle(cornerRadius: 2).stroke(lineWidth: 4)
        
        Text("Preview here")
      }
      .padding(.bottom, 2)
      
      HStack(alignment: .center) {
        Spacer()
        
        Button(action: { }) {
          Image(systemName: "play")
            .resizable()
            .scaledToFit()
            .frame(width: 24, height: 24)
            .foregroundColor(.secondary)
        }
        
        Spacer()
        
        Button(action: { }) {
          Image(systemName: "heart")
            .resizable()
            .scaledToFit()
            .frame(width: 24, height: 24)
            .foregroundColor(.secondary)
        }
        
        Spacer()
        
        Button(action: { }) {
          Image(systemName: "star")
            .resizable()
            .scaledToFit()
            .frame(width: 24, height: 24)
            .foregroundColor(.secondary)
        }
        
        Spacer()
      }
      .padding(.bottom, 2)
      
      VStack {
        HStack() {
          NavigationLink(
            destination: UserView(username: "teste", hideNavigation: self.hideNavigationBar),
            label: {
              Text("username")
                .font(.footnote)
                .bold()
                .padding(.trailing, -4)
            }
          )
          
          Text("Post description")
            .font(.footnote)
          
          Spacer()
        }
        
        HStack {
          Text("post date")
            .font(.caption2)
            .foregroundColor(.secondary)
            .bold()
          
          Spacer()
        }
      }
    }
  }
  
  // MARK: - Constants
  
  let hideNavigationBar: Bool = true
}

struct Posts_Previews: PreviewProvider {
  static var previews: some View {
    PostView()
  }
}
