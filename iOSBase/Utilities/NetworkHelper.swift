//
//  APIManager.swift
//  SwiftStub
//
//  Created by TT-MM-06 on 11/29/14.
//  Copyright (c) 2014 Tudip. All rights reserved.
//

import Foundation
import Alamofire
import Haneke
import SwiftyJSON

public enum ApiPath: String {
  case Register = "register"
  case Login = "login"
}

public class NetworkHelper<T: RecordTemplate> {
  
  let basePath: String = "http://citynext.co.in/lab/index.php/apimobilecustomer/"

  public func APICall(apiUrl : ApiPath,
                      parameters : Dictionary<String,AnyObject>,
                      success :((model : T) -> Void)? = nil,
                      unsuccessfull : (() -> Void)? = nil) {
    ActivityIndicatorHelper.sharedInstance.startLoader()
    Alamofire.request(.POST, "\(basePath)\(apiUrl.rawValue)", parameters : parameters)
      .responseJSON { response in
        ActivityIndicatorHelper.sharedInstance.stopLoader() {
          if response.result.error != nil {
            unsuccessfull?()
            AlertViewHelper.showSimpleError(response.result.error?.localizedDescription)
          } else {
            if let value = response.result.value {
              let data = NSDictionary(dictionary: value as! NSDictionary)
              success?(model: T(fromDictionary: data))
            } else {
              AlertViewHelper.showSimpleError("Server issue")
              unsuccessfull?()
            }
          }
        }
        
    }
  }
}


