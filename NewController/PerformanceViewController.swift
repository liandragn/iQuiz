//
//  PerformanceViewController.swift
//  iQuiz
//
//  Created by Liandra Nascimento on 24/02/26.
//

import UIKit

class PerformanceViewController: UIViewController {

    var score: Int?
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var percentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configurePerformance()
        // Do any additional setup after loading the view.
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
    }
    
    func configurePerformance() {
        guard let score = score else { return }
        resultLabel.text = "Você acertou \(score) de \(questions.count)"
        let percentage = (score * 100) / questions.count
        percentageLabel.text = "Percentual final: \(percentage)%"
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
