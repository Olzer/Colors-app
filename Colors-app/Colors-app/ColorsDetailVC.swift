//
//  ColorsDetailVC.swift
//  Colors-app
//
//  Created by Oleg Dorozhovets on 16/11/2022.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? UIColor.blue
    }
}
