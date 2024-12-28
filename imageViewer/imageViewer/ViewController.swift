//
//  ViewController.swift
//  imageViewer
//
//  Created by YangJeongMu on 12/28/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageViewLabel: UILabel!
    @IBOutlet var uiImageView: UIImageView!
    @IBOutlet var previousButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    
    var maxImage = 6
    var numImage = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        uiImageView.image = UIImage(named: "1.png")
    }
    
    
    @IBAction func previousButton(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage < 1) {
            numImage = maxImage
        }
        let imageName = String(numImage) + ".png"
        uiImageView.image = UIImage(named: imageName)
        
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage) {
            numImage = 1
        }
        let imageName = String(numImage) + ".png"
        uiImageView.image = UIImage(named: imageName)
        
    }
    
}

