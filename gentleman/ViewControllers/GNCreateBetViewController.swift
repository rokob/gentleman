//  Copyright (c) 2014 rokob. All rights reserved.

import UIKit

class CNCreateBetViewController: UIViewController {

  var user: User

  init(user: User) {
    self.user = user
    super.init(nibName: nil, bundle: nil)
    self.title = "Gentleman"
  }

  override func loadView() {
    //var view: UIView = CNCreateBetViewManual(user: user)
    var view: UIView = GNCreateBetView(frame: CGRectZero)
    self.view = view
  }

}
