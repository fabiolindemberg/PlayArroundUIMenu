//
//  ViewController.swift
//  PlayAroundUIMenu
//
//  Created by Fabio Lindemberg on 28/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupMenu()
    }

    private func setupMenu() {
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "contextualmenu.and.cursorarrow"), menu: mainManu)
    }
    
    var mainManu: UIMenu {
        UIMenu(title: "Menu", children: [UIAction(title: "Simple option", handler: { _ in
                print("Simple action tapped...")
            }),
            inLineSubMenu,
            subMenu
        ])
    }
    
    var inLineSubMenu: UIMenu {
        // .displayInline menu does not display title
        UIMenu(title: "", options: .displayInline, children: [UIAction(title: "In line submenu option...", handler: { _ in
            print("In line submenu tapped...")
        })])
    }
    
    var subMenu: UIMenu {
        UIMenu(title: "Sub Menu", subtitle: "Destructive action", children: [
            UIAction(title: "Submenu option...", handler: { _ in
                print("Submenu option tapped...")
            }),
            UIAction(title: "Destroy option tapped...", image: UIImage(systemName: "arrowshape.turn.up.left"), attributes: .destructive, handler: { _ in
                print("Submenu destroy option tapped...")
            })
        ])
    }
}

