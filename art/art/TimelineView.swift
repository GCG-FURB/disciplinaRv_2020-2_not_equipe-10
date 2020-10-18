//
//  TimelineView.swift
//  art
//
//  Created by Matheus Klauberg on 18/10/20.
//

import SwiftUI

struct TimelineView: View {
  var body: some View {
    NavigationView {
      ScrollView(showsIndicators: false) {
        VStack(alignment: .leading) {
          ForEach(0..<4) { _ in
            PostView()
              .padding(.bottom)
          }
        }
      }
      .padding([.horizontal, .top])
      .navigationBarItems(leading:
        Button(action: { }) {
          Image(systemName: "camera")
            .font(.title3)
        }
      )
      .navigationBarTitle(Text("art"))
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct TimelineView_Previews: PreviewProvider {
  static var previews: some View {
    TimelineView()
  }
}
