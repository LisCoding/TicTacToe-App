//
//  game.swift
//  TicTacToe
//
//  Created by Liseth Cardozo Sejas on 9/7/17.
//  Copyright © 2017 Liseth Cardozo Sejas. All rights reserved.
//

import Foundation

class Game {
    let player1 = "blue"
    let player2 = "red"
    
    var currentPlayer = "blue"
    var winner = ""
    var board = [["","",""],
                 ["","",""],
                 ["","",""]]
    
    func getCurrentPlayer()->String{
        return currentPlayer
    }
    
    func makeMove(x: Int, y: Int) -> String {
        if currentPlayer == "blue" {
            board[x][y] = "blue"
        } else {
            board[x][y] = "red"
            
        }
        winner = currentPlayer
        print(winner)
        if currentPlayer == player1 {
            currentPlayer = player2
        } else {
            currentPlayer = player1
        }
        
        return win()
        
    }
    
    func rows() -> Bool {
        //        var slice: Array<String> = Array(list[0..<list.count])
        let row1 = valuesCount(row: board[0])
        let row2 = valuesCount(row: board[1])
        let row3 = valuesCount(row: board[2])
        
        if row1[0] == 3 || row1[1] == 3 {
            return true
        } else if row2[0] == 3 || row2[1] == 3 {
            return true
        } else if row3[0] == 3 || row3[1] == 3 {
            return true
        }
        
        return false
    }
    
    //    counts the values in the rows
    func valuesCount(row: [String]) -> [Int] {
        
        var counts = [0,0]
        for el in row {
            if el == "red" {
                counts[0] += 1
            } else if el == "blue" {
                counts[1] += 1
            }
        }
        return counts
    }
    
    func diagonals() -> Bool {
        let diagLeft = valuesCount(row: [board[0][0],board[1][1], board[2][2]])
        let diagRight = valuesCount(row:  [board[0][2],board[1][1], board[2][0]])
        if diagLeft[0] == 3 || diagLeft[1] == 3 {
            return true
        }
        if diagRight[0] == 3 || diagRight[1] == 3 {
            return true
        }
        
        return false
    }
    
    func columns() -> Bool {
        let column1 = valuesCount(row: [board[0][0],board[1][0], board[2][0]])
        let column2 = valuesCount(row: [board[0][1],board[1][1], board[2][1]])
        let column3 = valuesCount(row: [board[0][2],board[1][2], board[2][2]])
        if column1[0] == 3 || column1[1] == 3 {
            return true
        }
        if column2[0] == 3 || column2[1] == 3 {
            return true
        }
        
        if column3[0] == 3 || column3[1] == 3 {
            return true
        }
        
        return false
    }
    // return true or false if there is a winner
    func win() -> String {
        if rows() {
            print(winner)
            return winner
        } else if columns() {
            return winner
        } else if diagonals() {
            return winner
        }
        
        return "no"
    }
    
}

