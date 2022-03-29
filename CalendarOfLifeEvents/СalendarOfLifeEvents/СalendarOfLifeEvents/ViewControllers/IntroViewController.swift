//
//  IntroViewController.swift
//  СalendarOfLifeEvents
//
//  Created by Евгения Шевцова on 29.03.2022.
//

import UIKit

class IntroViewController: UIViewController {
    // MARK: - IB Outlets

    @IBOutlet var introImageView: UIImageView!
    @IBOutlet var textIntroLabel: UILabel!
    @IBOutlet var cancelBackButton: UIButton!
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        introImageView.image = UIImage(named: "intro1")
        textIntroLabel.text = ImageText.text1.rawValue
    }
    
    @IBAction func nextButtonPressed() {
        switch textIntroLabel.text {
        case ImageText.text1.rawValue:
            textIntroLabel.text = ImageText.text2.rawValue
            introImageView.image = UIImage(named: "intro2")
        case ImageText.text2.rawValue:
            textIntroLabel.text = ImageText.text3.rawValue
            introImageView.image = UIImage(named: "intro3")
            cancelBackButton.titleLabel?.text = "Повторить"
        default :
            performSegue(withIdentifier: "toMainScreen", sender: nil)
        }
    }
    
    @IBAction func cancelBackButtonPressed() {
        if textIntroLabel.text == ImageText.text3.rawValue {
            introImageView.image = UIImage(named: "intro1")
            textIntroLabel.text = ImageText.text1.rawValue
        } else {
            performSegue(withIdentifier: "toMainScreen", sender: nil)
        }
    }
}
