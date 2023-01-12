//
//  HomeViewModel.swift
//  LiveInterView
//
//  Created by User on 08/01/23.
//

import Foundation

protocol HomeViewModelProtocol: BaseViewModelProtocol {
    var onDataLoad: ((NewListResponseModel?) -> ())? { get set}
}

public class HomeViewModel: HomeViewModelProtocol {
    var onDataLoad: ((NewListResponseModel?) -> ())?
    
    public func viewDidLoad() {
        let httpUtility = HTTPUtility()
        let resource = DataResource(httpUtil: httpUtility)
        let request = NewListRequestModel()
        resource.getData(request: request) { [weak self] result in
            self?.onDataLoad?(result)
        }
        
    }
}
