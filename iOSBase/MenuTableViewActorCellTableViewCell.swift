//
//  MenuTableViewActorCellTableViewCell.swift
//  Lab
//
//  Created by jatin patel on 03/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class MenuTableViewActorCellTableViewCell: BaseTableViewCell {

  static let kNibName = String(MenuTableViewActorCellTableViewCell)
  
  private var viewModel: MenuTableViewActorCellViewModel?
  
  override func setupWithModel(model: BaseTableViewCellModel) {
    if let model = model as? MenuTableViewActorCellViewModel {
      viewModel = model
    }
  }
  
  override class func heightForCell(model: BaseTableViewCellModel?) -> CGFloat {
    return 120
  }

}
