//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Jessie Quach on 3/12/25.
//

import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var questNumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var answer1Label: UIButton!
    @IBOutlet weak var answer2Label: UIButton!
    @IBOutlet weak var answer3Label: UIButton!
    @IBOutlet weak var answer4Label: UIButton!
    
    private var questions = [TriviaQuestion]()
    private var selectedQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradient()
        contentLabel.layer.cornerRadius = 10.0
        contentLabel.clipsToBounds = true
        questions = createMockData()
        configure(with: questions[selectedQuestionIndex])
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapAnswer1(_ sender: UIButton) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1) // don't go higher than the number of forecasts
        configure(with: questions[selectedQuestionIndex]) // change the forecast shown in the UI
    }
    
    
    @IBAction func didTapAnswer2(_ sender: UIButton) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1) // don't go higher than the number of forecasts
        configure(with: questions[selectedQuestionIndex]) // change the forecast shown in the UI
    }
    
    @IBAction func didTapAnswer3(_ sender: UIButton) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1) // don't go higher than the number of forecasts
        configure(with: questions[selectedQuestionIndex]) // change the forecast shown in the UI
    }
    
    @IBAction func didTapAnswer4(_ sender: UIButton) {
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1) // don't go higher than the number of forecasts
        configure(with: questions[selectedQuestionIndex]) // change the forecast shown in the UI
    }
    
    private func createMockData() -> [TriviaQuestion]{
        let mockData1 = TriviaQuestion(questionNo: "1/3",
                                       genre: "Chemistry",
                                       content: "What is the chemical symbol for gold?",
                                       answer1: "Au",
                                       answer2: "Ag",
                                       answer3: "Mg",
                                       answer4: "Hg")
        let mockData2 = TriviaQuestion(questionNo: "2/3",
                                       genre: "Geography",
                                       content: "How many time zones are there in Russia?",
                                       answer1: "10",
                                       answer2: "11",
                                       answer3: "12",
                                       answer4: "13")
        let mockData3 = TriviaQuestion(questionNo: "3/3",
                                       genre: "History",
                                       content: "In which year did World War I begin?",
                                       answer1: "1911",
                                       answer2: "1912",
                                       answer3: "1913",
                                       answer4: "1914")
        return [mockData1, mockData2, mockData3]
    }
    
    private func configure(with question: TriviaQuestion) {
        questNumLabel.text = "Question: " + question.questionNo
        genreLabel.text = question.genre
        contentLabel.text = question.content
        answer1Label.setTitle(question.answer1, for: .normal)
        answer2Label.setTitle(question.answer2, for: .normal)
        answer3Label.setTitle(question.answer3, for: .normal)
        answer4Label.setTitle(question.answer4, for: .normal)
    }
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0.54, green: 0.88, blue: 0.99, alpha: 1.00).cgColor,
                                UIColor(red: 0.51, green: 0.81, blue: 0.97, alpha: 1.00).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
