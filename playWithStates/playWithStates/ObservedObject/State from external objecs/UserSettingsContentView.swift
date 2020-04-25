//
//  UserSettingsContentView.swift
//  playWithStates
//
//  Created by Manuel Martinez Gomez on 25/04/2020.
//  Copyright © 2020 Mandaleo. All rights reserved.
//

import SwiftUI

struct UserSettingsContentView: View {
  @ObservedObject var settings = UserSettings()
  
  var body: some View {
    VStack {
      Text("Your score is \(settings.score)")
      Button(action: {
        self.settings.score += 1
      }) {
        Text("Increase Score")
      }
    }
  }
}

struct UserSettingsContentView_Previews: PreviewProvider {
  static var previews: some View {
    UserSettingsContentView()
  }
}
