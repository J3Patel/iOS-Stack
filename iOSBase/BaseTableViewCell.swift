//
//  BaseTableViewCell.swift
//  Lab
//
//  Created by jatin patel on 03/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
  
  func setupWithModel(model: BaseTableViewCellModel) {

  }
  
  class func heightForCell(model: BaseTableViewCellModel?) -> CGFloat {
    return 0
  }
  
}
