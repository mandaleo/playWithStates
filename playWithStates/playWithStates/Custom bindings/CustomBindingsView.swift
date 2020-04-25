//
//  CustomBindingsView.swift
//  playWithStates
//
//  Created by Manuel Martinez Gomez on 25/04/2020.
//  Copyright © 2020 Mandaleo. All rights reserved.
//

import SwiftUI

struct CustomBindingsView: View {
  @State private var username = ""
  var body: some View {
    
    let binding = Binding(
      get: { self.username },
      set: { self.username = $0 }
    )
    
    return VStack {
      TextField("Enter your name", text: binding)
    }
  }
}
  
  struct CustomBindingsView_Previews: PreviewProvider {
    static var previews: some View {
      CustomBindingsView()
    }
}
