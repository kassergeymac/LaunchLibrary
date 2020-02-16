//
//  RepositoryProtocol.swift
//  LaunchLibrary
//
//  Created by kassergey on 15.02.2020.
//  Copyright © 2020 kassergey. All rights reserved.
//

import Foundation
import Combine

class Repository {
    
    static var shared: Repository = {
        return Repository()
    }()
    
    let domainUrlString: String = "https://launchlibrary.net"
    let apiVersion: String = "1.4"
    
    let baseUrl: String
    
    private init() {
        self.baseUrl = "\(domainUrlString)/\(apiVersion)"
    }
        
}
