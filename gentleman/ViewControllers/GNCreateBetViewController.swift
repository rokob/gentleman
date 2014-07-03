//  Copyright (c) 2014 rokob. All rights reserved.

import UIKit

class GNCreateBetViewController: UIViewController {

  var user: User

  init(user: User) {
    self.user = user
    super.init(nibName: nil, bundle: nil)
    self.title = "Gentleman"
  }

  override func loadView() {
    //var view: UIView = GNCreateBetViewManual(user: user)
    var view: UIView = GNCreateBetView(user: user)
    self.view = view
  }

}
