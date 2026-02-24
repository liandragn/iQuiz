//
//  ViewController.swift
//  iQuiz
//
//  Created by Liandra Nascimento on 24/02/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startQuizButton: UIButton!
    
    @IBAction func startQuizButtonPressed(_ sender: Any) {
        print("Start quizz pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
    }
}

