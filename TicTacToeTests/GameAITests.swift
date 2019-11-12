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
    
    func testWhenCheckingVertical1() {
         var board = GameBoard()
         
         try! board.place(mark: .x, on: (1,0))
         try! board.place(mark: .o, on: (2,0))
         
         try! board.place(mark: .x, on: (1,1))
         try! board.place(mark: .o, on: (2,1))
         
         try! board.place(mark: .x, on: (1,2))
         
         XCTAssertTrue(game(board: board, isWonBy: .x))
         XCTAssertFalse(game(board: board, isWonBy: .o))
         
         
         
     }
     
     func testWhenCheckingVertical2() {
          var board = GameBoard()
          
          try! board.place(mark: .x, on: (2,0))
          try! board.place(mark: .o, on: (0,0))
          
          try! board.place(mark: .x, on: (2,1))
          try! board.place(mark: .o, on: (0,1))
          
          try! board.place(mark: .x, on: (2,2))
          
          XCTAssertTrue(game(board: board, isWonBy: .x))
          XCTAssertFalse(game(board: board, isWonBy: .o))
          
          
          
      }
    
    func testWhenCheckingHorizontal0() {
        var board = GameBoard()
        
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .o, on: (0,1))
        
        try! board.place(mark: .x, on: (1,0))
        try! board.place(mark: .o, on: (1,1))
        
        try! board.place(mark: .x, on: (2,0))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
        
        
        
    }
    
    func testWhenCheckingHorizontal1() {
         var board = GameBoard()
         
         try! board.place(mark: .x, on: (0,1))
         try! board.place(mark: .o, on: (0,2))
         
         try! board.place(mark: .x, on: (1,1))
         try! board.place(mark: .o, on: (1,2))
         
         try! board.place(mark: .x, on: (2,1))
         
         XCTAssertTrue(game(board: board, isWonBy: .x))
         XCTAssertFalse(game(board: board, isWonBy: .o))
         
         
         
     }
     
     func testWhenCheckingHorizontal2() {
          var board = GameBoard()
          
          try! board.place(mark: .x, on: (0,2))
          try! board.place(mark: .o, on: (0,0))
          
          try! board.place(mark: .x, on: (1,2))
          try! board.place(mark: .o, on: (1,0))
          
          try! board.place(mark: .x, on: (2,2))
          
          XCTAssertTrue(game(board: board, isWonBy: .x))
          XCTAssertFalse(game(board: board, isWonBy: .o))
          
          
          
      }
    
    func testWhenCheckingDiagonalA() {
          var board = GameBoard()
          
          try! board.place(mark: .o, on: (0,0))
          try! board.place(mark: .x, on: (0,1))
          
          try! board.place(mark: .o, on: (1,1))
          try! board.place(mark: .x, on: (1,0))
          
          try! board.place(mark: .o, on: (2,2))
          
          XCTAssertTrue(game(board: board, isWonBy: .o))
          XCTAssertFalse(game(board: board, isWonBy: .x))
          
          
          
      }
    
    func testWhenCheckingDiagonalB() {
        var board = GameBoard()
        
        try! board.place(mark: .o, on: (2,0))
        try! board.place(mark: .x, on: (0,1))
        
        try! board.place(mark: .o, on: (1,1))
        try! board.place(mark: .x, on: (1,0))
        
        try! board.place(mark: .o, on: (0,2))
        
        XCTAssertTrue(game(board: board, isWonBy: .o))
        XCTAssertFalse(game(board: board, isWonBy: .x))
        
        
        
    }
    
    func testCatsGame(){
        var board = GameBoard()
        
       try! board.place(mark: .x, on: (0,0))
       try! board.place(mark: .o, on: (0,1))
       try! board.place(mark: .x, on: (1,0))
       try! board.place(mark: .o, on: (2,0))
            
       try! board.place(mark: .x, on: (0,2))
             
       try! board.place(mark: .o, on: (1,1))
              
       try! board.place(mark: .x, on: (2,1))
       try! board.place(mark: .o, on: (1,2))
       try! board.place(mark: .x, on: (2,2))
        XCTAssertTrue(board.isFull)
        
        XCTAssertFalse(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
        
        
        
    }
  

}
