//
//  Pagina1View.swift
//  ArchitectureMVVMCoordinatorViewCode
//
//  Created by Lucas Pontes on 09/03/24.
//

import UIKit

class PaginaView: UIView {
    
    weak var delegateFlow: PaginaFlowDelegate?

    
    // Adiciona um botão que irá navegar para outra página
    private lazy var nextPageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Próxima Página", for: .normal)
        button.addTarget(self, action: #selector(navigateToNextPage), for: .touchUpInside)
        button.backgroundColor = .black
        return button
    }()

    @objc func navigateToNextPage(){
        delegateFlow?.goToPagina2()
    }

    // Layout do botão na view
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .green
        addSubview(nextPageButton)
        nextPageButton.frame = CGRect(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.width/2, width: 200, height: 50)
    }
}
