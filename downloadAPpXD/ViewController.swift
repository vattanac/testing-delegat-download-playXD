//
//  ViewController.swift
//  downloadAPpXD
//
//  Created by Vattanac on 11/8/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DownloadDelegate {

    @IBOutlet weak var statusLabel: UILabel!
    var download:Download?

    @IBAction func downloadTap(_ sender: Any) {
        statusLabel.text = "status:Downloading..."
        download?.startDownload()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
        download = Download()
        download?.delegate = self
        
    }
    
}
extension ViewController {
    func didFinish(status: String) {
        statusLabel.text = "status: \(status)"
    }
}

