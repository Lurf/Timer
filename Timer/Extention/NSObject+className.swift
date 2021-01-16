//
//  NSObject+className.swift
//  Timer
//
//  Created by Lurf on 2021/01/10.
//

import Foundation

public extension NSObject {
    class func className() -> String {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }
    
    func className() -> String {
        return type(of: self).className()
    }
}
