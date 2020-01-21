//
//  MusicViewController.swift
//  AppleMusicApp
//
//  Created by  Джон Костанов on 21/01/2020.
//  Copyright (c) 2020 John Kostanov. All rights reserved.
//

import UIKit

protocol MusicDisplayLogic: class {
  func displayData(viewModel: Music.Model.ViewModel.ViewModelData)
}

class MusicViewController: UIViewController, MusicDisplayLogic {

  var interactor: MusicBusinessLogic?
  var router: (NSObjectProtocol & MusicRoutingLogic)?

    @IBOutlet var table: UITableView!
  
  // MARK: Setup
  
  private func setup() {
    let viewController        = self
    let interactor            = MusicInteractor()
    let presenter             = MusicPresenter()
    let router                = MusicRouter()
    viewController.interactor = interactor
    viewController.router     = router
    interactor.presenter      = presenter
    presenter.viewController  = viewController
    router.viewController     = viewController
  }
  
  // MARK: Routing
  

  
  // MARK: View lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  func displayData(viewModel: Music.Model.ViewModel.ViewModelData) {

  }
  
}
