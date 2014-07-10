//  Copyright (c) 2014 rokob. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
    self.window = UIWindow(frame: UIScreen.mainScreen().bounds)

    var user = GNMockAPI.user(id: "1")!
    var viewController = GNCreateBetViewController(user: user)

    var navigationVC = GNRootNavigationController(rootViewController: viewController)
    self.window!.rootViewController = navigationVC

    self.window!.backgroundColor = UIColor.whiteColor()
    self.window!.makeKeyAndVisible()
    return true
  }


}

