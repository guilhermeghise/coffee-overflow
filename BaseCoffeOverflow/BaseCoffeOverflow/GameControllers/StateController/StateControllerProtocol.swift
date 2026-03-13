//
//  StateControllerProtocol.swift
//  BaseCoffeOverflow
//
//  Created by Eduardo Ferrari on 13/03/26.
//

protocol StateControllerProtocol: AnyObject {
    func loseLife()
    func addScore()
    func gameOver()
    func restartGame()
    func startGame()
}
