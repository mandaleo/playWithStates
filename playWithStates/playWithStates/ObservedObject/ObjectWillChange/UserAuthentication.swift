import Combine
import SwiftUI

class UserAuthentication: ObservableObject {
  
  var username = "" {
    willSet {
      objectWillChange.send()
    }
  }
}
