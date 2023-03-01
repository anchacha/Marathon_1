//
//  ViewController.swift
//  Marathon_1
//
//  Created by Anton Charny on 01/03/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var squareView: GradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setupView()
        let colours = [UIColor.blue,
                       UIColor.red]
        self.squareView.gradientColors = colours
        self.addShadow()

    }
    
    private func setupView() {
        self.squareView.layer.cornerRadius = 16
    }
    
    /*
     private func addGradientLayer() { //такой способ неинтересный
     let gradientLayer = CAGradientLayer()
     gradientLayer.colors = colors
     gradientLayer.startPoint = startPoint
     gradientLayer.endPoint = endPoint
     gradientLayer.frame = self.squareView.bounds
     gradientLayer.cornerRadius = self.squareView.layer.cornerRadius
     
     self.squareView.layer.insertSublayer(gradientLayer, at: 0)
     }
     */
    
    private func addShadow() {
        let path = UIBezierPath(roundedRect: self.squareView.bounds,
                                cornerRadius: self.squareView.layer.cornerRadius)
        
        self.squareView.layer.shadowPath = path.cgPath
        self.squareView.layer.shadowOffset = CGSize(width: 5, height: 10)
        self.squareView.layer.shadowOpacity = 1
        self.squareView.layer.shadowRadius = 3
        self.squareView.layer.shadowColor = UIColor.gray.cgColor
        self.squareView.layer.masksToBounds = false
    }
    
}

