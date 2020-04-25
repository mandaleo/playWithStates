//
//  UserAuthenticationContentView.swift
//  playWithStates
//
//  Created by Manuel Martinez Gomez on 25/04/2020.
//  Copyright © 2020 Mandaleo. All rights reserved.
//

import SwiftUI

struct UserAuthenticationContentView: View {
  @ObservedObject var settings = UserAuthentication()
  
  var body: some View {
    VStack {
      TextField("Username", text: $settings.username) .textFieldStyle(RoundedBorderTextFieldStyle())
      
      Text("Your username is: \(settings.username)") }
  }
}

struct UserAuthenticationContentView_Previews: PreviewProvider {
  static var previews: some View {
    UserAuthenticationContentView()
  }
}
