//
//  MenuTableViewCell.swift
//  iOSBase
//
//  Created by Tudip on 26/03/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class MenuTableViewCell: BaseTableViewCell {
  
  static let kNibName = String(MenuTableViewCell)
  
  @IBOutlet weak var titleLabel: UILabel!
  
  // MARK: iVars
  private var viewModel: MenuTableViewCellViewModel?
  
  override func setupWithModel(model: BaseTableViewCellModel) {
    if let model = model as? MenuTableViewCellViewModel {
      viewModel = model
    }
  }
  
  override class func heightForCell(model: BaseTableViewCellModel?) -> CGFloat {
      return 60
  }
  
}
