//
//  AboutSyaratViewController.swift
//  qwe
//
//  Created by Lorenzo Lo on 23/10/20.
//

import UIKit

class AboutSyaratViewController: UIViewController, AboutSyaratViewDelegate {
    
    private let aboutSyaratPresenter = AboutSyaratPresenter(aboutSyaratService: AboutSyaratService())
    
    func displayAboutSyarat(name: (String), email: (String), image: (UIImage)) {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        aboutSyaratPresenter.setViewDelegate(aboutSyaratViewDelegate: self)

        // Do any additional setup after loading the view.
    }
    
    
    

}
