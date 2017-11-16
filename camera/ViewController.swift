//
//  ViewController.swift
//  camera
//
//  Created by Cyberjaya 4 iTrain on 15/11/2017.
//  Copyright © 2017 ada_yc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet var myImageView: UIImageView!
    
    @IBAction func action_camera(_ sender: Any) {
    
    
    
    }
   
    @IBAction func action_photo(_ sender: Any) {
     let myPicker = UIImagePickerController()
        myPicker.delegate = self
        myPicker.sourceType = .camera
        
        present(myPicker, animated: true, completion: nil)
        
    }
    

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        self.myImageView.image = selectedImage
        
        
        //close the panel
        
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

