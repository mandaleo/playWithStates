//
//  TimerView.swift
//  playWithStates
//
//  Created by Manuel Martinez Gomez on 25/04/2020.
//  Copyright © 2020 Mandaleo. All rights reserved.
//

import SwiftUI

struct TimerView: View {
  @State var currentDate = Date()
  let timer = Timer.publish(every: 1, on: .main,
                            in: .common).autoconnect()
  var body: some View {
    Text("\(currentDate)")
      .onReceive(timer) { input in
        self.currentDate = input
    }
  }
}

struct TimerView_Previews: PreviewProvider {
  static var previews: some View {
    TimerView()
  }
}
