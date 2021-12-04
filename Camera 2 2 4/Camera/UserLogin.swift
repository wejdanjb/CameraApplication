//
//  UserLogin.swift
//  Camera
//
//  Created by Wejdan Alkhaldi on 29/04/1443 AH.
//

import UIKit

class UserLogin: UIViewController {
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    let myLabel = UILabel(frame: CGRect(x: 0, y: 500, width: 400, height: 20))
    let myImage = UIImageView()
    var textField1 = UITextField(frame: CGRect(x: 50, y: 300, width: 300, height: 30))
    let textField2 = UITextField(frame: CGRect(x: 50, y: 350, width: 300, height: 30))
    let myButton = UIButton(frame: CGRect(x: 120, y: 420, width: 150, height: 25))
    let myLabe2 = UILabel(frame: CGRect(x: 45, y: 80, width: 300, height: 20))
    let message = UILabel(frame: CGRect(x: 0, y: 600, width: 400, height: 20))
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.9331076741, blue: 0.8320325017, alpha: 1)
        //label1
        myLabe2.text = "Camera App"
        myLabe2.font = .italicSystemFont(ofSize: 20)
        myLabe2.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.788182947)
        myLabe2.textAlignment = .center
        view.addSubview(myLabe2)
        // image
        myImage.frame = CGRect(x: 120, y: 120, width: 155, height: 150)
        myImage.image = UIImage(named : "camera2")
        myImage.contentMode = .scaleToFill
        myImage.layer.cornerRadius = myImage.frame.height / 2
        myImage.clipsToBounds = true
        view.addSubview(myImage)
        //textfield1
        textField1.placeholder = "Enter Username"
        textField1.borderStyle = .roundedRect
        view.addSubview(textField1)
        //textfield2
        textField2.placeholder = "Enter Password"
        textField2.borderStyle = .roundedRect
        textField2.isSecureTextEntry = true
        view.addSubview(textField2)
        //button
        myButton.setTitle("Login", for: .normal)
        myButton.backgroundColor = #colorLiteral(red: 1, green: 0.7483344078, blue: 0.8084542155, alpha: 1)
        myButton.layer.cornerRadius = myButton.frame.height / 2
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector (action), for: .touchDown)
        // label2
        myLabel.text = "forget username or password? click here"
        myLabel.textColor = .black
        myLabel.textAlignment = .center
        view.addSubview(myLabel)
        // message
        message.text = ""
        message.textColor = #colorLiteral(red: 1, green: 0.3083674908, blue: 0.5620854497, alpha: 1)
        message.font = .boldSystemFont(ofSize: 16)
        message.textAlignment = .center
        view.addSubview(message)
        
        
        
    }
    @objc func action(){
        
        if  textField1.text == "" && textField2.text == "" {
            message.text = "Username and password required !"
        }
        else if textField1.text == ""{
            message.text = "Username required ! "
        }
        else if textField2.text == "" {
            message.text = " password required !"
        }else{
            let nextvc = welcomeview()
            present(nextvc, animated: true, completion: nil)
            nextvc.myLabe3.text = "Welcome \(textField1.text!)👋"
            message.text = ""
            
            
        }
        
        
    }
    
    
    
}

