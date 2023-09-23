//
//  ViewController.swift
//  MomondoScreenTrip
//
//  Created by Leticia Speda on 23/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1174478158, green: 0.02265601605, blue: 0.2253929079, alpha: 1)
        configureStyle()
    }
    
    @objc func handleBack() {
        print("Ok")
    }
    
    private func configureStyle() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = #colorLiteral(red: 0.1174478158, green: 0.02265601605, blue: 0.2253929079, alpha: 1)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationItem.title = "Malta"
        navigationItem.leftBarButtonItem = .init(image: .init(systemName: "chevron.left"), style: .plain, target: self, action: #selector(handleBack))
        navigationItem.rightBarButtonItem = .init(image: .init(systemName: "ellipsis"), style: .plain, target: self, action: #selector(handleBack))
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
}

