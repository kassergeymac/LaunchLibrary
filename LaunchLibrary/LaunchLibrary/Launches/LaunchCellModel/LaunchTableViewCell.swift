//
//  LaunchTableViewCell.swift
//  LaunchLibrary
//
//  Created by kassergey on 08.02.2020.
//  Copyright © 2020 kassergey. All rights reserved.
//

import UIKit
import Combine

class LaunchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imvLogo: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblTimeUntilLaunch: UILabel!
    @IBOutlet weak var lblWhenLaunch: UILabel!
    @IBOutlet weak var lblLaunchLocation: UILabel!
    
    var cellModel: LaunchTableCellViewModel! = nil
    var cancellables: [AnyCancellable] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        lblTitle.text = cellModel.title
        lblTimeUntilLaunch.text = cellModel.timeUntilLaunch
        lblWhenLaunch.text = cellModel.whenLaunch
        lblLaunchLocation.text = cellModel.launchLocation
        
        cancellables.append(cellModel.image.sink(
            receiveCompletion: {_ in},
            receiveValue: { [unowned self] (image) in
                self.imvLogo.image = image
            }))
    }
    
    deinit {
        cancellables.forEach { $0.cancel() }
    }
    
}
