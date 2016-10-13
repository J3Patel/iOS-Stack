//
//  BaseNavigationController.swift
//  iOSBase
//
//  Created by Tudip on 3/25/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override init(rootViewController: UIViewController) {
    super.init(rootViewController: rootViewController)
    self.navigationBar.barTintColor = LColors.darkPrimaryColor
    self.navigationBar.tintColor = LColors.secondaryColor
  }
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }
  
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
