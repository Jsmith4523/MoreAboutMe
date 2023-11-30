//
//  ViewController.swift
//  MoreAboutMe
//
//  Created by Jaylen Smith on 11/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var numberOfpets = 0
    
    //MARK: Outlets
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var yearControl: UISegmentedControl!
    @IBOutlet weak var schoolNameField: UITextField!
    @IBOutlet weak var petsCounterLabel: UILabel!
    @IBOutlet weak var wantsMorePetsSwitch: UISwitch!
    
    //MARK: Actions
    @IBAction func petsStepperDidChange(_ sender: UIStepper) {
        self.numberOfpets = Int(sender.value)
        petsCounterLabel.text = "Pets: \(Int(sender.value))"
    }
    @IBAction func didTapIntroductionButton(_ sender: UIButton) {
        let introduction = "Greetings! My name is \(firstNameField.text!) \(lastNameField.text!). I am in my \(yearControl.titleForSegment(at: yearControl.selectedSegmentIndex)!) at \(schoolNameField.text!). I own \(numberOfpets) pets and I \(wantsMorePetsSwitch.isOn ? "want more" : "do not want more") pets in the future"
        
        let ac = UIAlertController(title: "Hi!!!", message: introduction, preferredStyle: .alert)
        let primaryAction = UIAlertAction(title: "Nice To Meet You", style: .default)
        ac.addAction(primaryAction)
        present(ac, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

