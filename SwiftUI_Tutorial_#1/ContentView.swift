//
//  ContentView.swift
//  SwiftUI_Tutorial_#1
//
//  Created by 신미지 on 2021/09/28.
//

import SwiftUI

struct ContentView: View {
  
  // @State 값의 변화를 감지 -> 뷰에 적용
  @State
  private var isActivated: Bool = false
  
  var body: some View {
    
    NavigationView {
      VStack {
        HStack {
          MyVstackView()
          MyVstackView()
          MyVstackView()
        }
        .padding(isActivated ? 50.0 : 20.0)
        
        .background(
          isActivated ? Color.yellow : Color.black)
        // Added a Tap Gesture
        .onTapGesture {
          print("HStack이 클릭되었다.")
          
          // animation
          withAnimation {
            // toggle() true -> false로 false -> true 변경
            self.isActivated.toggle()
          }
        } // Hstack
        NavigationLink(destination: MyTextView()) {
          Text("네비게이션")
            .font(.system(size: 40))
            .fontWeight(.bold)
            .padding()
            .background(Color.orange)
            .foregroundColor(Color.white)
            .cornerRadius(30)
        }.padding(.top, 50)
      }
      
    }
    
  }
  
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
