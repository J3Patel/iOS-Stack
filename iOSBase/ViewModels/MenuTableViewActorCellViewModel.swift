//
//  MenuTableViewActorCellViewModel.swift
//  Lab
//
//  Created by jatin patel on 03/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class MenuTableViewActorCellViewModel: BaseTableViewCellModel {

  var actor: UIImage?
  
  init(actorImage: UIImage?) {
    super.init()
    actor = actorImage
  }

}
