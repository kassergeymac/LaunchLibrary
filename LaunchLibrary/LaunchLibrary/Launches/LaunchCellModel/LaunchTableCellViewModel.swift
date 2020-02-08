//
//  LaunchTableViewModel.swift
//  LaunchLibrary
//
//  Created by kassergey on 08.02.2020.
//  Copyright © 2020 kassergey. All rights reserved.
//

import UIKit
import Combine

protocol LaunchTableCellViewModel {
    var image: Future<UIImage, Error> { get }
    var title: String { get }
    var timeUntilLaunch: String { get }
    var whenLaunch: String { get }
    var launchLocation: String { get }
}
