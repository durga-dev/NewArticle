//
//  DataResourceTest.swift
//  ShowNewsTests
//
//  Created by Durga Ballabha Panigrahi on 12/01/23.
//

import XCTest
@testable import ShowNews

final class DataResourceTest: XCTestCase {
    
    private var dataResource: DataResource?
    private var requestModel: RequestModelProtocol?
    
    override func setUpWithError() throws {
        let httpUtility = HTTPUtility()
        dataResource = DataResource(httpUtil: httpUtility)
        requestModel = NewListRequestModel()
    }
    
    func testGetDataSuccess() {
        let startedLoadingExpectation = expectation(
            description: #function
        )
        
        dataResource?.getData(
            request: requestModel!,
            completion: { newsResponse in
                
                DispatchQueue.main.async {
                    XCTAssertNotNil(newsResponse)
                    startedLoadingExpectation.fulfill()
                }
            }
        )
        
        waitForExpectations(
            timeout: .infinity,
            handler: nil
        )
    }
}
