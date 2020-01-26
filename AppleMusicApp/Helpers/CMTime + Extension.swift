//
//  CMTime + Extension.swift
//  AppleMusicApp
//
//  Created by  Джон Костанов on 26/01/2020.
//  Copyright © 2020 John Kostanov. All rights reserved.
//

import Foundation
import AVKit

extension CMTime {
    
    func toDisplayString() -> String {
        guard !CMTimeGetSeconds(self).isNaN else { return "" }
        let totalSecond = Int(CMTimeGetSeconds(self))
        let seconds = totalSecond % 60
        let minutes = totalSecond / 60
        let timeFormatSting = String(format: "%02d:%02d", minutes, seconds)
        return timeFormatSting
    }
    
}
