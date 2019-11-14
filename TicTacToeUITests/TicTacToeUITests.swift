//
//  TicTacToeUITests.swift
//  TicTacToeUITests
//
//  Created by Austin Potts on 11/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest

class TicTacToeUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

  
    func testWinVertically1(){
        
    
        let button0 = button(forIndex: 0)
        button0.tap()
        XCTAssertEqual(button0.label, Mark.x.stringValue)//You can give string error messages as well
        XCTAssertEqual(turnLabel.label, oTurnString)
        
        
        let button1 = button(forIndex: 1)
        button1.tap()
        XCTAssertEqual(button1.label, Mark.o.stringValue)
        XCTAssertEqual(turnLabel.label, xTurnString)
        
        let button3 = button(forIndex: 3)
        button3.tap()
        XCTAssertEqual(button3.label, Mark.x.stringValue)
        XCTAssertEqual(turnLabel.label, oTurnString)
        
        let button4 = button(forIndex: 4)
        button4.tap()
        XCTAssertEqual(button4.label, Mark.o.stringValue)
        XCTAssertEqual(turnLabel.label, xTurnString)
        
        let button6 = button(forIndex: 6)
        button6.tap()
        XCTAssertEqual(button6.label, Mark.x.stringValue)
        
        
        XCTAssertEqual(turnLabel.label, "Player X won!")
        
    }
    
    func testWinHorizontally1(){
        
        let button0 = button(forIndex: 0)
             button0.tap()
             XCTAssertEqual(button0.label, Mark.x.stringValue)//You can give string error messages as well
             XCTAssertEqual(turnLabel.label, oTurnString)
             
             
             let button1 = button(forIndex: 3)
             button1.tap()
             XCTAssertEqual(button1.label, Mark.o.stringValue)
             XCTAssertEqual(turnLabel.label, xTurnString)
             
             let button3 = button(forIndex: 1)
             button3.tap()
             XCTAssertEqual(button3.label, Mark.x.stringValue)
             XCTAssertEqual(turnLabel.label, oTurnString)
             
             let button4 = button(forIndex: 4)
             button4.tap()
             XCTAssertEqual(button4.label, Mark.o.stringValue)
             XCTAssertEqual(turnLabel.label, xTurnString)
             
             let button6 = button(forIndex: 2)
             button6.tap()
             XCTAssertEqual(button6.label, Mark.x.stringValue)
             
             
             XCTAssertEqual(turnLabel.label, "Player X won!")
        
        
    }
    
    func testRestartingGame(){
        
      //Tap to make sure board isnt empty
      let button3 =  button(forIndex: 3)
      button3.tap()
     
    //Make sure that a mark is on the board to get reset later
    XCTAssertEqual(button3.label, Mark.x.stringValue)
    
    //Check the turn label
    XCTAssertEqual(turnLabel.label, oTurnString)
        
        
    restartButton.tap()
        
        for i in 0...8 {
            XCTAssertEqual(button(forIndex: i).label, Mark.empty.stringValue)
        }
     
        
    }
    
    
    private var app: XCUIApplication {
        return XCUIApplication()
    }
    
    private func button(forIndex index: Int) -> XCUIElement {
        return app.buttons["button\(index)"]
    }
    
    private var turnLabel: XCUIElement {
        return app.staticTexts["GameViewController.TurnLabel"]
    }
    
    private var restartButton: XCUIElement {
        return app.buttons["restartButton"]
    }
    
    
    
    private enum Mark: Equatable {
        case x
        case o
        case empty
        
        var stringValue: String{
            switch self{
            case .x: return "X"
            case .o: return "O"
            case .empty: return " "
            }
        }
        
    }
    
    private let xTurnString: String = "Player X's turn"
    private let oTurnString: String = "Player O's turn"
    
}
