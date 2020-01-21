//
//  MusicPresenter.swift
//  AppleMusicApp
//
//  Created by  Джон Костанов on 21/01/2020.
//  Copyright (c) 2020 John Kostanov. All rights reserved.
//

import UIKit

protocol MusicPresentationLogic {
  func presentData(response: Music.Model.Response.ResponseType)
}

class MusicPresenter: MusicPresentationLogic {
  weak var viewController: MusicDisplayLogic?
  
  func presentData(response: Music.Model.Response.ResponseType) {
  
  }
  
}
