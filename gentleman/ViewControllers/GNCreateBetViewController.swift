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
    var view: GNCreateBetViewManual = GNCreateBetViewManual(user: user)
    view.responder = self
    //var view: UIView = GNCreateBetView(user: user)
    self.view = view
  }

  func didTapOpponentButton() {
    println(__FILE__, __LINE__)
  }

  func didTapDateButton() {
    println(__FILE__, __LINE__)
  }

  func didTapSubmitButton() {
    println(__FILE__, __LINE__)
  }

}
