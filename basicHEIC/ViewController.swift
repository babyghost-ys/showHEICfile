//
//  ViewController.swift
//  basicHEIC
//
//  Created by Peter Leung on 10/10/2017.
//  Copyright © 2017 winandmac Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string:"https://pushy.winandmac.com/test.heic")
        
        guard let finalURL = url as CFURL? else { return }
        let source = CGImageSourceCreateWithURL(finalURL, nil)
        
        guard let finalSource = source else { return }
        let image = CGImageSourceCreateImageAtIndex(finalSource, 0, nil)
        
        guard let finalCgImage = image else { return }
        let finalImage = UIImage(cgImage: finalCgImage)
        
        imageView.image = finalImage
    }
}

