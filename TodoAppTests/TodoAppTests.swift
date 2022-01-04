//
//  TodoAppTests.swift
//  TodoAppTests
//
//  Created by lory on 2022/1/4.
//

import XCTest

@testable import TodoApp

class TodoAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let expectation = XCTestExpectation(description: "Oh, timeout!")
        
        
        TodoViewModel.getTodoList { todolist in
            XCTAssertTrue(todolist.count > 0)
        }
        IssuesViewModel.getIssuesList { issues  in
            XCTAssertTrue(issues.count > 0)
        }
        NewsViewModel.getNewsList { newses in
            XCTAssertTrue(newses.count > 0)
        }
        VersionsViewModel.getVersionList { versions in
            XCTAssertTrue(versions.count > 0)
        }
        
        wait(for: [expectation], timeout: 10)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
