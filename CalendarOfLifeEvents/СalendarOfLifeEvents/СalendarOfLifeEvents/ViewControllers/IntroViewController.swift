//
//  IntroViewController.swift
//  СalendarOfLifeEvents
//
//  Created by Евгения Шевцова on 29.03.2022.
//

import UIKit

class IntroViewController: UIViewController {
    
    @IBOutlet var IntroImageView: UIImageView! {
        didSet {
            IntroImageView.image = UIImage(named: "intro1")
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

