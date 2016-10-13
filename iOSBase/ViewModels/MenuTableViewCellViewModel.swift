//
//  MenuTableViewCellViewModel.swift
//  iOSBase
//
//  Created by Tudip on 26/03/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class MenuTableViewCellViewModel: BaseTableViewCellModel {

    var menuName: String?
    
    init(menu: String) {
        super.init()
        menuName = menu
    }
}
