//
//  DrawerViewController.swift
//  TestePulley
//
//  Created by Luiz França on 23/11/18.
//  Copyright © 2018 Luiz França. All rights reserved.
//

import UIKit

class DrawerViewController: UIViewController, UITableViewDelegate {
    
    let searchInput : UITextField = {
        let input = UITextField ()
        input.placeholder = "Buscar"
        input.backgroundColor = .white
        input.layer.cornerRadius = 10
        input.setLeftPaddingPoints(5)
        return input
    }()
    
    let tableView: UITableView = {
        let tb = UITableView()
        return tb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        view.addSubview(searchInput)
        view.addSubview(tableView)
        
        searchInput.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 20, paddingBottom: 0, paddingRight: -20, width: 0, height: 30)
        tableView.anchor(top: searchInput.bottomAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
        tableView.becomeFirstResponder()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("SELECT")
    }
    
}
