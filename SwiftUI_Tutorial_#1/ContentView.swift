//
//  ContentView.swift
//  SwiftUI_Tutorial_#1
//
//  Created by 신미지 on 2021/09/28.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    HStack {
      MyVstackView()
      MyVstackView()
      MyVstackView()
    }
    .padding(30)
    .background(Color.yellow)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
