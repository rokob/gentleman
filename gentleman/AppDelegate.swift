//  Copyright (c) 2014 rokob. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
    self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
    // Override point for customization after application launch.

    var user = User(id: "1", name: "Andy Ledvina", image_url: "http://www.fake.fkae", email: "a@b.c", phone: nil, token: "1009jfkdjf093AA")
    var viewController = GNCreateBetViewController(user: user)

    var navigationVC = GNRootNavigationController(rootViewController: viewController)
    self.window!.rootViewController = navigationVC

    self.window!.backgroundColor = UIColor.whiteColor()
    self.window!.makeKeyAndVisible()
    return true
  }


}

