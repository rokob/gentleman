//  Copyright (c) 2014 rokob. All rights reserved.

import UIKit

class CNCreateBetViewManual: UIScrollView, UITextViewDelegate {

  struct Subviews {
    let opponentLabel: UILabel
    let opponentNameButton: UIButton
    let dateLabel: UILabel
    let dateValueButton: UIButton
    let eventLabel: UILabel
    let eventTextField: UITextView
    let submitButton: UIButton

    func all() -> UIView[] {
      return [
        opponentLabel,
        opponentNameButton,
        dateLabel,
        dateValueButton,
        eventLabel,
        eventTextField,
        submitButton
      ]
    }
  }

  let user: User
  let views: Subviews?

  init(user: User) {
    self.user = user
    super.init(frame: CGRectZero)
    self.views = constructSubviews()
    for view in self.views!.all() {
      self.addSubview(view)
    }
    self.scrollEnabled = true
    self.directionalLockEnabled = true
    self.keyboardDismissMode = UIScrollViewKeyboardDismissMode.Interactive
  }

  func constructSubviews() -> Subviews {

    var opponentLabel = UILabel(frame: CGRectZero)
    opponentLabel.text = "Opponent"
    var opponentButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
    opponentButton.setTitle("Select...", forState: UIControlState.Normal)
    var dateLabel = UILabel(frame: CGRectZero)
    dateLabel.text = "Date"
    var dateButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
    dateButton.setTitle("Select...", forState: UIControlState.Normal)
    var eventLabel = UILabel(frame: CGRectZero)
    eventLabel.text = "You bet that"
    var eventTextField = UITextView(frame: CGRectZero)
    eventTextField.editable = true
    eventTextField.delegate = self
    eventTextField.backgroundColor = UIColor(white: 0.99, alpha: 1.0)
    var submitButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
    submitButton.setTitle("Submit", forState: UIControlState.Normal)

    return Subviews(opponentLabel: opponentLabel,
      opponentNameButton: opponentButton,
      dateLabel: dateLabel,
      dateValueButton: dateButton,
      eventLabel: eventLabel,
      eventTextField: eventTextField,
      submitButton: submitButton)
  }

  override func layoutSubviews() {
    var frame = self.bounds
    self.contentSize = CGSizeMake(frame.width, frame.height)
    var maxSize = CGSizeMake(frame.width, CGFLOAT_MAX)
    var size = self.views!.opponentLabel.sizeThatFits(maxSize)
    var leftPadding: CGFloat = 16
    var topPadding: CGFloat = 8
    var xPadding: CGFloat = 24
    var yPadding: CGFloat = 20
    var x: CGFloat = leftPadding
    var y: CGFloat = topPadding
    self.views!.opponentNameButton.sizeToFit()
    var scratchRect = self.views!.opponentNameButton.frame
    self.views!.opponentLabel.frame = CGRectMake(x, y, size.width, scratchRect.height)
    x = self.views!.opponentLabel.frame.maxX + xPadding
    self.views!.opponentNameButton.frame = CGRectMake(x, y, scratchRect.width, scratchRect.height)
    x = leftPadding
    y = self.views!.opponentLabel.frame.maxY + yPadding
    size = self.views!.dateLabel.sizeThatFits(maxSize)
    self.views!.dateValueButton.sizeToFit()
    scratchRect = self.views!.dateValueButton.frame
    self.views!.dateLabel.frame = CGRectMake(x, y, size.width, scratchRect.height)
    // x = self.views!.dateLabel.frame.maxX + xPadding
    x = self.views!.opponentNameButton.frame.origin.x
    self.views!.dateValueButton.frame = CGRectMake(x, y, scratchRect.width, scratchRect.height)
    x = leftPadding
    y = self.views!.dateLabel.frame.maxY + yPadding
    size = self.views!.eventLabel.sizeThatFits(maxSize)
    self.views!.eventLabel.frame = CGRectMake(x, y, size.width, size.height)
    y = self.views!.eventLabel.frame.maxY + yPadding / 2
    size = self.views!.eventTextField.sizeThatFits(maxSize)
    self.views!.eventTextField.frame = CGRectMake(x, y, maxSize.width - 2*x, size.height*2)
    y = self.views!.eventTextField.frame.maxY + yPadding / 4
    self.views!.submitButton.sizeToFit()
    scratchRect = self.views!.submitButton.frame
    self.views!.submitButton.frame = CGRectMake(x, y, scratchRect.width, scratchRect.height)
  }

  func textViewDidBeginEditing(textView: UITextView!) {
    UIView.animateWithDuration(0.35) {
      self.contentOffset = CGPointMake(0, 20.0)
    }
  }

}
