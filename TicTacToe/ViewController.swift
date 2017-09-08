//
//  ViewController.swift
//  TicTacToe
//
//  Created by Liseth Cardozo Sejas on 9/7/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    let player1 = "Liseth"
//    let player2 = "Alex"
//    var currentPlayer = "Liseth"
    
    @IBOutlet weak var winnerLabel: UILabel!
    var game = Game()
    
    let player1Color = UIColor.blue
    let player2Color = UIColor.red
    let emptyColor = UIColor.lightGray
    @IBOutlet var buttons: Array<UIButton>!
    
    @IBAction func displayButtonPressed(_ sender: UIButton) {
        
        guard let idx = self.buttons.index(of: sender) else {
            return
        }
        let x = idx % 3
        let y = idx / 3
    
        if game.currentPlayer == "blue" {
            sender.backgroundColor = player1Color
            sender.isEnabled = false
           
        } else {
        
            sender.backgroundColor = player2Color
            sender.isEnabled = false
        }
        let winner = game.makeMove(x: x, y: y)
        if winner != "no" {
            winnerLabel.text = "Congratz \(winner) won!"

        }
        
     
    }


    
    @IBAction func resetButton(_ sender: UIButton) {
        for (_, button) in self.buttons.enumerated() {
            button.backgroundColor = emptyColor
            button.isEnabled = true
            winnerLabel.text = ""
            game = Game()
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        for (index, button) in self.buttons.enumerated() {
//            button.setTitle(String(index), for: .normal)
//        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

