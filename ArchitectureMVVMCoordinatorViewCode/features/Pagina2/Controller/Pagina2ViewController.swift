//
//  Pagina2ViewController.swift
//  ArchitectureMVVMCoordinatorViewCode
//
//  Created by Lucas Pontes on 09/03/24.
//

import UIKit

class Pagina2ViewController: UIViewController {

    // MARK: - Properties
    var coordinator : CoordinatorFlowController?
    var viewModel: Pagina2ViewModel?
    
    private lazy var Pagina1View : Pagina2View = {
        return Pagina2View()
    }()
    
    
    
    // MARK: - View Lifecycle
    override func loadView() {
        super.loadView()
        self.view =  Pagina1View
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
       
    }
    
    
    init(viewModel: Pagina2ViewModel){
        super.init (nibName: nil, bundle: nil)
       
        self.viewModel = viewModel
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


  

}
