//
//  HomeViewModelTest.swift
//  ShowNewsTests
//
//  Created by Durga Ballabha Panigrahi on 12/01/23.
//

import XCTest
@testable import ShowNews

final class HomeViewModelTest: XCTestCase {

    private let expectationsTimeOut: TimeInterval = 3
    private var homeViewModel: HomeViewModelProtocol?
    override func setUpWithError() throws {
        homeViewModel = HomeViewModel()
    }

    func testViewDidLoadSuccess() {
        let startedLoadingExpectation = expectation(
            description: #function
        )
        
        homeViewModel?.onDataLoad = { data in
            DispatchQueue.main.async {
                XCTAssertNotNil(data)
                startedLoadingExpectation.fulfill()
            }
        }
        
        homeViewModel?.viewDidLoad()
        
        waitForExpectations(
            timeout: .infinity,
            handler: nil
        )
    }
}

