//
//  IntroViewController.swift
//  СalendarOfLifeEvents
//
//  Created by Евгения Шевцова on 29.03.2022.
//

import UIKit

class IntroViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet var introImageView: UIImageView!
    @IBOutlet var textIntroLabel: UILabel!
    @IBOutlet var cancelBackButton: UIButton!
    @IBOutlet var nextStartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        introImageView.image = UIImage(named: "intro1")
        textIntroLabel.text = ImageText.text1.rawValue
    }


}

