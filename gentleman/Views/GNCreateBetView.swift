//  Copyright (c) 2014 rokob. All rights reserved.

import UIKit

class GNCreateBetView: UIView, UITextViewDelegate {

  var user: User!

  @IBOutlet var contentView: UIScrollView!
  @IBOutlet var opponentLabel: UILabel!
  @IBOutlet var opponentButton: UIButton!
  @IBOutlet var dateLabel: UILabel!
  @IBOutlet var dateButton: UIButton!
  @IBOutlet var eventLabel: UILabel!
  @IBOutlet var eventTextView: UITextView!
  @IBOutlet var submitButton: UIButton!

  @IBAction func didTapOpponentButton(sender: UIButton) {
    print("did tap \(sender)")
  }

  @IBAction func didTapDateButton(sender: UIButton) {
    print("did tap \(sender)")
  }

  @IBAction func didTapSubmitButton(sender: UIButton) {
    print("did tap \(sender)")
  }

  init(coder aDecoder: NSCoder!) {
    super.init(coder: aDecoder)
  }

  init(user: User) {
    self.user = user
    super.init(frame: CGRectZero)
    var nib = UINib(nibName: "GNCreateBetView", bundle: NSBundle.mainBundle())
    var views = nib.instantiateWithOwner(self, options: nil)
    addSubview(views[0] as UIView)
  }

  func textViewDidBeginEditing(textView: UITextView!) {
    UIView.animateWithDuration(0.35) {
      self.contentView.contentOffset = CGPointMake(0, 20.0)
    }
  }

  func textViewDidEndEditing(textView: UITextView!) {
    UIView.animateWithDuration(0.35) {
      self.contentView.contentOffset = CGPointMake(0, 0)
    }
  }
}
