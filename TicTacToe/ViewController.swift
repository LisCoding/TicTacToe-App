//
//  ViewController.swift
//  TicTacToe
//
//  Created by Liseth Cardozo Sejas on 9/7/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let player1 = "Liseth"
    let player2 = "Alex"
    var currentPlayer = "Liseth"
    
    @IBAction func displayButtonPressed(_ sender: UIButton) {
        
        if currentPlayer == player1 {
            sender.backgroundColor = UIColor.blue
           
        } else {
        
            sender.backgroundColor = UIColor.red
            
        }
    
        if currentPlayer == player1 {
            currentPlayer = player2
        } else {
            currentPlayer = player1
        }
    }
    
   
    
    @IBAction func resetButton(_ sender: UIButton) {
        sender.backgroundColor = UIColor.lightGray
        

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

