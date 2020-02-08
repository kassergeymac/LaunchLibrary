//
//  LaunchesViewController.swift
//  LaunchLibrary
//
//  Created by kassergey on 08.02.2020.
//  Copyright © 2020 kassergey. All rights reserved.
//

import UIKit

class LaunchesViewController: UIViewController {
    
    let viewModel = LaunchesViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
    }

}

extension LaunchesViewController: LaunchesViewScreenProtocol {
    
}
