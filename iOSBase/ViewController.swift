//
//  ViewController.swift
//  iOSBase
//
//  Created by Tudip on 3/25/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let revealViewController = self.revealViewController()
        let tabBarItem = UIBarButtonItem(image: UIImage(named: "reveal-icon.png"), style: UIBarButtonItemStyle.Plain, target: revealViewController, action: #selector(SWRevealViewController.revealToggle(_:)))
        self.navigationItem.leftBarButtonItem = tabBarItem
        revealViewController.panGestureRecognizer()
        revealViewController.tapGestureRecognizer()
    }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
  
  }
}
