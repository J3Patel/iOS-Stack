//
//  NavigationHelper.swift
//  Lab
//
//  Created by jatin patel on 05/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class NavigationHelper: NSObject {

  class func getDashboardController() -> UIViewController {
    let menuViewModel = SideMenuViewModel()
    let sideMenuVC = SideMenuViewController(model: menuViewModel)
    
    let menuNav = sideMenuVC
    let frontVC = BaseNavigationController(rootViewController: ViewController())
    return SWRevealViewController(rearViewController: menuNav, frontViewController: frontVC)
  }

}
