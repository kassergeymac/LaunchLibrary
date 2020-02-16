//
//  Model.swift
//  LaunchLibrary
//
//  Created by kassergey on 15.02.2020.
//  Copyright © 2020 kassergey. All rights reserved.
//

import Foundation

struct RocketLaunch {
    
    let id: String
    let name: String
    let windowStart: Date?
    let windowEnd: Date?
    let launchLocation: LaunchLocation
    let rocket: Rocket
    
}
