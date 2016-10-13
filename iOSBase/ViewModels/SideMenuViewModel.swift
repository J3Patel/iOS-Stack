//
//  SideMenuViewModel.swift
//  iOSBase
//
//  Created by Tudip on 26/03/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class SideMenuViewModel: BaseViewModel {
  
  var menuItems: [BaseTableViewCellModel]
  
  override init() {
    menuItems = [BaseTableViewCellModel]()
    menuItems.append(MenuTableViewActorCellViewModel(actorImage: nil))
    menuItems.append(MenuTableViewCellViewModel(menu: "Item 1"))
    menuItems.append(MenuTableViewCellViewModel(menu: "Item 2"))
    menuItems.append(MenuTableViewCellViewModel(menu: "Item 3"))
    menuItems.append(MenuTableViewCellViewModel(menu: "Item 4"))
    super.init()
  }
}
