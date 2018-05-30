//
//  ViewController.swift
//  imgpicker
//
//  Created by agile on 3/19/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let picker = UIImagePickerController()

    @IBOutlet var objimg: UIImageView!
    
    @IBAction func objbtn(_ sender: Any) {
        picker.delegate = self
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
      //  picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage //1
        
        let chosenImageEdited = info[UIImagePickerControllerOriginalImage] as! UIImage //2
        
        objimg.contentMode = .scaleAspectFit //3
        objimg.image = chosenImageEdited //4
        dismiss(animated:true, completion: nil) //5
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    

}

