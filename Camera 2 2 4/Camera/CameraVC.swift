//
//  CameraVC.swift
//  Camera
//
//  Created by Wejdan Alkhaldi on 29/04/1443 AH.
//

import UIKit

//class CameraVC: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate {
//        var img = UIImageView()
//        let myButton = UIButton(frame: CGRect(x: 110, y: 720, width: 170, height: 25))
//    override func viewDidLoad() {
//        super.viewDidLoad()
//                myButton.setTitle("open camera", for: .normal)
//                myButton.backgroundColor = #colorLiteral(red: 1, green: 0.7483344078, blue: 0.8084542155, alpha: 1)
//        myButton.layer.cornerRadius = myButton.frame.height / 2
//                myButton.addTarget(self, action: #selector (action), for: .touchDown)
//                self.view.addSubview(myButton)
//        
//    }
//    
//        // camera
//        @objc func action (){
//            let cameraView = UIImagePickerController()
//            cameraView.delegate = self
//            cameraView.sourceType = .camera
//            present(cameraView, animated: true, completion: nil)
//        }
//        // picker image
//    
//        func imagePickerController(_ picker: UIImagePickerController!, didFinishPickingMediaWithInfo info:[UIImagePickerController.InfoKey : Any]) {
//            let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
//                        img.image  = pickedImage
//    
//            picker.dismiss(animated: true, completion: nil)
//        
//       
//        
//            var prefersStatusBarHidden: Bool {
//            return true
//        }
//    }
//
//  
//}

class CameraVC: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate {
  var img = UIImageView()
  let myButton = UIButton(frame: CGRect(x: 110, y: 720, width: 170, height: 25))
 override func viewDidLoad() {
  super.viewDidLoad()
    myButton.setTitle("open camera", for: .normal)
    myButton.backgroundColor = (#colorLiteral(red: 1, green: 0.7483344078, blue: 0.8084542155, alpha: 1))
  myButton.layer.cornerRadius = myButton.frame.height / 2
    myButton.addTarget(self, action: #selector (action), for: .touchDown)
    self.view.addSubview(myButton)
 }
  // camera
  @objc func action (){
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
    img.image = image
  }
}
