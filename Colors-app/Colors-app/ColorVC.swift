//
//  ColorVC.swift
//  Colors-app
//
//  Created by Oleg Dorozhovets on 16/11/2022.
//

import UIKit

class ColorVC: UIViewController {
    
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        // Do any additional setup after loading the view.
    }
   
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(creatRandomColor())
        }
    }
    
    
    func creatRandomColor() -> UIColor {
        
        let randomColor = UIColor(red  : CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue : CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }

 
}

extension ColorVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
           return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
}
