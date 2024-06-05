//
//  CardSelectionVC.swift
//  CardWorkOut-Programatic
//
//  Created by Phuthanet on 3/5/2567 BE.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView       = UIImageView()
    let stopButton          = CWButton(backgroundColor: .systemRed, title: "Stop!",systemImageName: "stop.circle")
    let resetButton         = CWButton(backgroundColor: .systemGreen, title: "Reset",systemImageName: "arrow.clockwise.circle")
    let ruleButton          = CWButton(backgroundColor: .systemBlue, title: "Rules",systemImageName: "list.bullet")
    
    var cards: [UIImage]    = CardDeck.allValues
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        startTimer()
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    @objc func showRandomCard(){
        cardImageView.image = cards.randomElement()
    }
    @objc func stopTimer(){
        timer.invalidate()
    }
    @objc func resetTimer(){
        timer.invalidate()
        startTimer()
    }
    
    func configureUI(){
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRuleButton()
    }
    
    func configureCardImageView(){
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }
    
    func configureStopButton(){
        view.addSubview(stopButton)
        stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor,constant: 30)
        ])
    }
    
    func configureResetButton(){
        view.addSubview(resetButton)
        resetButton.addTarget(self, action: #selector(resetTimer), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
        ])
    }
    func configureRuleButton(){
        view.addSubview(ruleButton)
        ruleButton.addTarget(self, action: #selector(persentRuleVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            ruleButton.widthAnchor.constraint(equalToConstant: 115),
            ruleButton.heightAnchor.constraint(equalToConstant: 50),
            ruleButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            ruleButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor,constant: 20)
        ])
    }
    
    @objc func persentRuleVC(){
        present(RuleVC(), animated: true)
    }

}
