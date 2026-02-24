//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Liandra Nascimento on 24/02/26.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var score: Int = 0
    var questionNumber: Int = 0

    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet var answerButton: [UIButton]!
    
    @IBAction func startQuizButtonPressed(_ sender: UIButton) {
        let isAnswerCorrect = questions[questionNumber].correctAnswer == sender.tag
        
        if isAnswerCorrect {
            score += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configureQuestion), userInfo: nil, repeats: false)
        } else {
            navigateToPerformanceScreen()
        }
    }
    
    func navigateToPerformanceScreen() {
        performSegue(withIdentifier: "goToPerformanceScreen", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureLayout()
        configureQuestion()
    }
    
    func configureLayout () {
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
    }
    
   @objc func configureQuestion (){
        questionTitleLabel.text = questions[questionNumber].title
        for button in answerButton {
            let titleButton = questions[questionNumber].answers[button.tag]
            button.setTitle(titleButton, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let performanceVC = segue.destination as? PerformanceViewController else { return }
        performanceVC.score = score
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
