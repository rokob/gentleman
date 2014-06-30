//  Copyright (c) 2014 rokob. All rights reserved.

import UIKit

class GNCreateBetView: UIView {

  @IBOutlet var opponentLabel: UILabel!
  @IBOutlet var opponentButton: UIButton!

  @IBAction func didTapOpponentButton(sender: UIButton) {
    print("did tap \(sender)")
  }

  init(coder aDecoder: NSCoder!) {
    super.init(coder: aDecoder)
  }

  init(frame: CGRect)  {
    super.init(frame: frame)
    var nib = UINib(nibName: "GNCreateBetView", bundle: NSBundle.mainBundle())
    addSubview(nib.instantiateWithOwner(self, options: nil)[0] as UIView)
  }

}
