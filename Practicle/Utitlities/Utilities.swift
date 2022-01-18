//
//  Utilities.swift
//  Practicle
//
//  Created by Sandip Gangajaliya on 18/01/22.
//

import UIKit

class Utilities: NSObject {

    class func jsonToData(json: Any) -> Data? {
        do {
            return try JSONSerialization.data(withJSONObject: json, options: JSONSerialization.WritingOptions.prettyPrinted)
        } catch let myJSONError {
            print(myJSONError)
        }
        return nil;
    }
}
