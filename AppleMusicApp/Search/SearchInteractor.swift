//
//  SearchInteractor.swift
//  AppleMusicApp
//
//  Created by  Джон Костанов on 21/01/2020.
//  Copyright (c) 2020 John Kostanov. All rights reserved.
//

import UIKit

protocol SearchBusinessLogic {
  func makeRequest(request: Search.Model.Request.RequestType)
}

class SearchInteractor: SearchBusinessLogic {

  var presenter: SearchPresentationLogic?
  var service: SearchService?
  
  func makeRequest(request: Search.Model.Request.RequestType) {
    if service == nil {
      service = SearchService()
    }
    
    switch request {
    case .some:
        print("interactor .some")
        presenter?.presentData(response: Search.Model.Response.ResponseType.presentTracks)
    case .getTracks:
        print("interactor .getTracks")
        presenter?.presentData(response: Search.Model.Response.ResponseType.presentTracks)
    }
  }
  
}

