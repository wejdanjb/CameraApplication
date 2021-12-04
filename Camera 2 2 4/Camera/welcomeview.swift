//
//  welcomeview.swift
//  Camera
//
//  Created by Wejdan Alkhaldi on 29/04/1443 AH.
//

import UIKit

class welcomeview: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    var myLabe3 = UILabel(frame: CGRect(x: 40, y: 120, width: 300, height: 20))
    let myLabe4 = UILabel(frame: CGRect(x:40, y: 570, width: 300, height: 20))
    let myButton2 = UIButton(frame: CGRect(x: 110, y: 630, width: 170, height: 25))
    var imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // welcome label
        
        view.backgroundColor = #colorLiteral(red: 1, green: 0.9331076741, blue: 0.8320325017, alpha: 1)
        myLabe3.text = ""
        myLabe3.font = .italicSystemFont(ofSize: 18)
        myLabe3.textColor = .black
        myLabe3.textAlignment = .center
        
        view.addSubview(myLabe3)
        
        //image
        let imgname = "nophoto2"
        let image = UIImage(named: imgname)
        imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x:20, y: 200, width: 350 , height: 350)
        self.view.addSubview(imageView)
        
        // label 4
        myLabe4.text = "No photo yet.."
        myLabe4.font = .italicSystemFont(ofSize: 15)
        myLabe4.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6977959437)
        myLabe4.textAlignment = .center
        view.addSubview(myLabe4)
        
        // button
        
        //button
        myButton2.setTitle("Take a picture", for: .normal)
        myButton2.backgroundColor = #colorLiteral(red: 1, green: 0.7483344078, blue: 0.8084542155, alpha: 1)
        myButton2.layer.cornerRadius = myButton2.frame.height / 2
        view.addSubview(myButton2)
        
        myButton2.addTarget(self, action: #selector (takePicture), for: .touchDown)
        
        
    }
    @objc func takePicture (){
        let cameraView = UIImagePickerController()
        cameraView.delegate = self
        cameraView.sourceType = .camera
        present(cameraView, animated: true, completion: nil)
    }
    // picker image
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        imageView.image = image
        myLabe4.text = ""
        view.addSubview(myLabe4)
    }
}











