//
//  ViewController.swift
//  AnchorsExample
//
//  Created by Yerassyl Orazbekov on 08.11.2021.
//

import UIKit

class ViewController: UIViewController {

    let view1: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Press me", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.tintColor = .white
        return button
    }()
    let button3: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Press me", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.tintColor = .white
        return button
    }()
    let button2: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Press me", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.tintColor = .white
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(button)
        
        setUpView1()
        setUpView2()
        setUpButton()
    }
    
    
    
    func setUpView1() {
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        view1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func setUpView2() {
        view2.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -60).isActive = true
        view2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        view2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func setUpButton() {
        button.leftAnchor.constraint(equalTo: view1.leftAnchor).isActive = true
        button.rightAnchor.constraint(equalTo: view2.rightAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
}

