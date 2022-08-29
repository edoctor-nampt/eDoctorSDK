//
//  ViewController.swift
//  EDoctorEClinicSDK
//
//  Created by NamPT on 08/06/2022.
//  Copyright (c) 2022 NamPT. All rights reserved.
//

import UIKit
import eDoctorSDK

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setUpUI() {
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.addTarget(self, action: #selector(onPress), for: .touchUpInside)

    }
    
    @objc func onPress () {
        let eClinic = EClinic()
        eClinic.openClinic(currentViewController: self)
    }
    
    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 10
        button.backgroundColor = UIColor.white
        button.setTitle("Open", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        return button
    }()
}

