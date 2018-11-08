//
//  Download.swift
//  downloadAPpXD
//
//  Created by Vattanac on 11/8/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import Foundation

class Download {
    var delegate: DownloadDelegate?
    
    func startDownload(){
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(downloadAfterDelay), userInfo: nil, repeats: false)
    }
    @objc func  downloadAfterDelay(){
       delegate?.didFinish(status: "Completed")
    }
}
