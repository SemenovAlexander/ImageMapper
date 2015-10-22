//
//  ImageMapperUITests.swift
//  ImageMapperUITests
//
//  Created by Alexander Semenov on 10/22/15.
//
//

import XCTest

class ImageMapperUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCUIDevice.sharedDevice().orientation = .LandscapeLeft
        
        let app = XCUIApplication()
        let addButton = app.navigationBars["Master"].buttons["Add"]
        addButton.doubleTap()
        addButton.tap()
        
        let tablesQuery = app.tables
        tablesQuery.childrenMatchingType(.Cell).elementBoundByIndex(0).tap()
        tablesQuery.childrenMatchingType(.Cell).elementBoundByIndex(1).swipeLeft()
    }
    
}