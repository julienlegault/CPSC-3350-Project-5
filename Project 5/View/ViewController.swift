//
//  ViewController.swift
//  Project 5
//
//  Created by Julien on 1/31/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerOne: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    var adventureLogic = AdventureLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerSubmitted(_ sender: UIButton) {
        adventureLogic.choiceSelected(sender.titleLabel!.text!)
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }
    
    @objc func updateUI() {
        questionLabel.text = adventureLogic.getNextPath()
        answerOne.setTitle(adventureLogic.getChoiceOne(), for: .normal)
        answerTwo.setTitle(adventureLogic.getChoiceTwo(), for: .normal)
    }
    
}

