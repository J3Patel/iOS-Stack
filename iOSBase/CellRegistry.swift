//
//  CellRegistry.swift
//  Lab
//
//  Created by jatin patel on 03/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class CellRegistry: NSObject {
  class func cellClassNameForModel(type: NSObject) -> AnyClass {
    if type.classForCoder == MenuTableViewCellViewModel.classForCoder() {
      return MenuTableViewCell.classForCoder()
    }
    
    if type.classForCoder == MenuTableViewActorCellViewModel.classForCoder() {
      return MenuTableViewActorCellTableViewCell.classForCoder()
    }
    
    return BaseTableViewCell.classForCoder()
  }
}
