//  Copyright (c) 2014 rokob. All rights reserved.

import UIKit

class GNCreateBetViewController: UIViewController, GNCreateBetViewResponder {

  var user: User

  init(user: User) {
    self.user = user
    super.init(nibName: nil, bundle: nil)
    self.title = "Gentleman"
  }

  override func loadView() {
    var view: GNCreateBetView = GNCreateBetView(user: user)
    view.responder = self
    self.view = view
  }

  func didTapOpponentButton() {
    // Create view controller to search friends and push
    println(__FILE__, __LINE__)
  }

  func didTapDateButton() {
    // Create Date picker and show
    println(__FILE__, __LINE__)
  }

  func didTapSubmitButton() {
    // Create bet, send to server, move to feed
    println(__FILE__, __LINE__)
  }

}
