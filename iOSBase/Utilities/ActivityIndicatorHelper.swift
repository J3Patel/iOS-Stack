//
//  ActivityIndicatorHelper.swift
//  Lab
//
//  Created by jatin patel on 04/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class ActivityIndicatorHelper {
  
  static var sharedInstance = ActivityIndicatorHelper()
  
  let baseView = UIView()
  let animationView = STSpotLoadView()
  
  init() {
    
  }

  func startLoader() {
    if let window = UIApplication.sharedApplication().keyWindow {
      baseView.frame = window.bounds
      baseView.backgroundColor = UIColor(complementaryFlatColorOf: UIColor.blackColor(), withAlpha: 0.5
      )
      window.addSubview(baseView)
      animationView.frame.size = CGSize(width: 70, height: 100)
      baseView.addSubview(animationView)
      animationView.center = baseView.center
      animationView.startAnimation()
    }
  }
  
  func stopLoader(animationStopped: () -> Void) {
    animationView.stopAnimation { 
      self.baseView.removeFromSuperview()
      animationStopped()
    }
  }

}
