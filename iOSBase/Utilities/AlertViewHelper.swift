//
//  AlertViewHelper.swift
//  Lab
//
//  Created by jatin patel on 04/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import SCLAlertView
import Foundation

class AlertViewHelper: NSObject {
  
  class func showSimpleError(message: String? = nil) {
    SCLAlertView().showError("Error!", subTitle: message ?? "Unknown")
  }
}
