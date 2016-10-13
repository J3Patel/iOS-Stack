//
//  UITableView+.swift
//  Lab
//
//  Created by jatin patel on 03/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

extension UITableView {

  func dequeueReusableCellWithModel(indexPath: NSIndexPath, model: BaseTableViewCellModel) -> BaseTableViewCell {
      return self.dequeueReusableCellWithIdentifier(String(CellRegistry.cellClassNameForModel(model)), forIndexPath: indexPath) as! BaseTableViewCell
  }
  
  func heightOfCellForModel(model: BaseTableViewCellModel?) -> CGFloat {
    guard let model = model, className = CellRegistry.cellClassNameForModel(model) as? BaseTableViewCell.Type else {
      return 0
    }
    return className.heightForCell(model)
  }
  
}
