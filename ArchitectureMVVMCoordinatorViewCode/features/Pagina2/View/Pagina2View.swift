//
//  Pagina2View.swift
//  ArchitectureMVVMCoordinatorViewCode
//
//  Created by Lucas Pontes on 09/03/24.
//

import UIKit

class Pagina2View: UIView {

    // Adiciona um botão que irá navegar para outra página
    private lazy var nextPageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Próxima Página", for: .normal)
     //   button.addTarget(self, action: #selector(navigateToNextPage), for: .touchUpInside)
        return button
    }()

  

    // Layout do botão na view
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundColor = .red
        addSubview(nextPageButton)
        nextPageButton.frame = CGRect(x: 50, y: 50, width: 200, height: 50)
    }
}
