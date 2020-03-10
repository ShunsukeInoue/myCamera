//
//  MainMenuView.swift
//  myCamera
//
//  Created by Inoue Shunsuke  on 2020/03/06.
//  Copyright © 2020 InoueShunsuke. All rights reserved.
//

import UIKit

public final class MainMenuViewController: UIViewController {
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToCamera(_ sender: Any) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Camera", bundle: nil)
        if let navigation: UINavigationController = storyboard.instantiateInitialViewController() as? UINavigationController {
            if let cameraViewController: CameraViewController = navigation.viewControllers[0] as? CameraViewController {
                self.navigationController?.pushViewController(cameraViewController, animated: true)
            }
        }
    }
}
