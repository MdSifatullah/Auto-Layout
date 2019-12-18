//
//  ViewController.swift
//  Design Practice
//
//  Created by Md Sifat on 12/18/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        view.addSubview(logoImageView)
        view.addSubview(descriptionTextView)
        
        Autolayout()
        
        
    }
    
        var logoImageView: UIImageView = {
                 let imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
                 //imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
                 imageView.translatesAutoresizingMaskIntoConstraints = false
                 return imageView
             
    }()
        var descriptionTextView: UITextView = {
                let describeTxtView = UITextView()
                describeTxtView.text = "Music is a form of art; an expression of emotions through harmonic frequencies. Most music includes people singing with their voices or playing musical instruments, such as the piano, guitar, drums or violin. The word music comes from the Greek word (mousike), which means (art) of the Muses..."
            describeTxtView.font = UIFont.boldSystemFont(ofSize: 20)
            describeTxtView.textAlignment = .center
            describeTxtView.textColor = .purple
                describeTxtView.translatesAutoresizingMaskIntoConstraints = false
                return describeTxtView
    }()
        
    func Autolayout(){
        
                logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
                logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
                logoImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true
                logoImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
                descriptionTextView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }


}

