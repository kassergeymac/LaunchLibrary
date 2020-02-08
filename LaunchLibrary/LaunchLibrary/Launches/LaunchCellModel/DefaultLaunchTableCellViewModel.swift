//
//  DefaultLaunchTableCellViewModel.swift
//  LaunchLibrary
//
//  Created by kassergey on 08.02.2020.
//  Copyright © 2020 kassergey. All rights reserved.
//

import UIKit
import Combine

struct DefaultLaunchTableCellViewModel: LaunchTableCellViewModel {
    var image: Future<UIImage, Error> {
        get {
            #warning("Implement this")
            return Future({$0(Result.failure(AppError.notImplemented))})
        }
    }
    var imageUrl: URL?
    var title: String
    var timeUntilLaunch: String
    var whenLaunch: String
    var launchLocation: String
}
