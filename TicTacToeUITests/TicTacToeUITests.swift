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
        
        let button1 = button(forIndex: 1)
        button1.tap()
        
        let button3 = button(forIndex: 3)
        button3.tap()
        
        let button4 = button(forIndex: 4)
        button4.tap()
        
        let button6 = button(forIndex: 6)
        button6.tap()
        
        
        
        
    }
    
    
    private var app: XCUIApplication {
        return XCUIApplication()
    }
    
    func button(forIndex index: Int) -> XCUIElement {
        return app.buttons["button\(index)"]
    }
    
}
