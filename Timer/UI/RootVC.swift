//
//  ViewController.swift
//  Timer
//
//  Created by Lurf on 2020/12/18.
//

import UIKit

final class RootVC: UIViewController {
    
    static func viewController() -> RootVC {
        let rootVC = UIStoryboard(
            name: "Main",
            bundle: .main
        ).instantiateViewController(RootVC.self)
        
        return rootVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

