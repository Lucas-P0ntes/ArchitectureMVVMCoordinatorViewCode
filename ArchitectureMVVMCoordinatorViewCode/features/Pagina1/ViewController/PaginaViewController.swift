//
//  ViewController.swift
//  ArchitectureMVVMCoordinatorViewCode
//
//  Created by Lucas Pontes on 09/03/24.
//

import UIKit

class PaginaViewController: UIViewController{
  

    // MARK: - Properties
    var coordinator : CoordinatorFlowController?
    
    var viewModel: PaginaViewModel?
    
    private lazy var paginaView : PaginaView = {
        return PaginaView()
    }()

    // MARK: - View Lifecycle
    override func loadView() {
        super.loadView()
        self.view =  paginaView
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
  
    init(viewModel: PaginaViewModel){
        super.init (nibName: nil, bundle: nil)
        paginaView.delegateFlow = self
        self.viewModel = viewModel
       
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
extension PaginaViewController : PaginaFlowDelegate{
    func goToPagina2() {
        coordinator?.goToPagina2()
    }
    
    
}
