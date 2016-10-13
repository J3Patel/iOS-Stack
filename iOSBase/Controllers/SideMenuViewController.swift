//
//  SideMenuViewController.swift
//  iOSBase
//
//  Created by Tudip on 26/03/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController {
    
    // MARK: IBOutlets
    
    @IBOutlet weak var menuTableView: UITableView!
    
    // MARK: Static vars
    
    static let kNibName = "SideMenuViewController"
    
    // MARK: iVars
    
    private var viewModel: SideMenuViewModel?
    private let kMenuHeight: CGFloat = 30
    
    // MARK: Initializers
    
    init(model: SideMenuViewModel) {
        super.init(nibName: SideMenuViewController.kNibName, bundle: nil)
        viewModel = model
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.delegate = self
        menuTableView.dataSource = self
        menuTableView.registerNib(UINib(nibName: MenuTableViewCell.kNibName, bundle: nil), forCellReuseIdentifier: MenuTableViewCell.kNibName)
        menuTableView.registerNib(UINib(nibName: MenuTableViewActorCellTableViewCell.kNibName, bundle: nil), forCellReuseIdentifier: MenuTableViewActorCellTableViewCell.kNibName)
    }
}

extension SideMenuViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    if let model = viewModel?.menuItems[indexPath.item] {
      let cell = tableView.dequeueReusableCellWithModel(indexPath , model: model)
      cell.setupWithModel(model)
      return cell
    }
    return UITableViewCell()
    
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    let revealVC = revealViewController()
    revealVC.setFrontViewPosition(FrontViewPosition.Left, animated: true)
    let newVC = UIViewController()
    let newNav = UINavigationController(rootViewController: newVC)
    if indexPath.item == 0 {
      newVC.view.backgroundColor = UIColor.blueColor()
      
      revealVC.pushFrontViewController(newNav, animated: true)
    }
  }
  
  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    return tableView.heightOfCellForModel(viewModel?.menuItems[indexPath.item])
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel?.menuItems.count ?? 0
  }
}
