//
//  UIStoryboard+Extention.swift
//  Timer
//
//  Created by Lurf on 2021/01/10.
//

import UIKit

extension UIStoryboard {
    func instantiateInitialViewController<T: UIViewController>(as _: T.Type) -> T {
        if let vc = instantiateInitialViewController() as? T {
            return vc
        }
        fatalError()
    }
    
    func instantiateViewController<T: UIViewController>(_: T.Type) -> T {
        if let vc = instantiateViewController(withIdentifier: T.className()) as? T {
            return vc
        }
        fatalError()
    }
}
