//
//  HTTPUtilityTest.swift
//  ShowNewsUITests
//
//  Created by Durga Ballabha Panigrahi on 12/01/23.
//

import XCTest
@testable import ShowNews

final class HTTPUtilityTest: XCTestCase {
    
    private let expectationsTimeOut: TimeInterval = 20
    private var httpUtility: HTTPUtility?
    override func setUpWithError() throws {
        httpUtility = HTTPUtility()
    }

    func testGetDataSuccess() {
        let startedLoadingExpectation = expectation(
            description: #function
        )

        httpUtility?.getData(
            requestUrl: URL(string: "https://newsapi.org/v2/everything?from=2022-12-12&q=tesla&sortBy=publishedAt&apiKey=6dc9bf4dfc6342a7b15fea373d8e65d6")!,
            resultType: NewListResponseModel.self
        ) { newsAPIResponse in

            DispatchQueue.main.async {
                XCTAssertNotNil(newsAPIResponse)
                startedLoadingExpectation.fulfill()
            }
        }

        waitForExpectations(
            timeout: .infinity,
            handler: nil
        )
    }

    func testGetDataInvalidURLResultNil() {
        let startedLoadingExpectation = expectation(
            description: #function
        )

        httpUtility?.getData(
            requestUrl: URL(string: "https://newapi.org/v2/everything?from=2022-12-12&q=tesla&sortBy=publishedAt&apiKey=6dc9bf4dfc6342a7b15fea373d8e65d6")!,
            resultType: NewListResponseModel.self
        ) { newsAPIResponse in

            DispatchQueue.main.async {
                XCTAssertNil(newsAPIResponse)
                startedLoadingExpectation.fulfill()
            }
        }

        waitForExpectations(
            timeout: expectationsTimeOut,
            handler: nil
        )
    }
}
