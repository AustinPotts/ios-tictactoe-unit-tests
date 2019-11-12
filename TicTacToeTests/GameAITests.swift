//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by Austin Potts on 11/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe


class GameAITests: XCTestCase {

 
    func testWhenCheckingVertical0() {
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .o, on: (1,0))
        
        try! board.place(mark: .x, on: (0,1))
        try! board.place(mark: .o, on: (1,1))
        
        try! board.place(mark: .x, on: (0,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
        
        
        
    }
  

}
