//
//  CoordinatorFlowController.swift
//  ArchitectureMVVMCoordinatorViewCode
//
//  Created by Lucas Pontes on 09/03/24.
//

import Foundation
import UIKit

class CoordinatorFlowController {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() -> UIViewController {
        let paginaViewController =  PaginaViewController(viewModel: PaginaViewModel())
        paginaViewController.coordinator = self
        navigationController = UINavigationController(rootViewController: paginaViewController)
        return navigationController
    }
}
extension CoordinatorFlowController: PaginaFlowDelegate{
    func goToPagina2() {
        let pagina2ViewController =  Pagina2ViewController(viewModel: Pagina2ViewModel())
        pagina2ViewController.coordinator = self
        navigationController.pushViewController(pagina2ViewController , animated: true)
        
    }
    
    
}
