//
//  PhotosViewController.swift
//  Photos
//
//  Created by Olivia Bishop on 10/11/18.
//  Copyright © 2018 Olivia Bishop. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var imageView: UIImageView!
    
    @IBAction func takePhote(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            
            
            let photo = UIImagePickerController()
            photo.delegate = self
            
            photo.sourceType = UIImagePickerController.SourceType.camera
            
            photo.allowsEditing = false
            
            self.present(photo, animated: true, completion: nil)
        }
        
}
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let photo = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            imageView.image = photo
        }
        
        self.dismiss(animated: true, completion: nil)

    }
    
    @IBAction func savePhoto(_ sender: Any) {
        
        let photo = UIImagePickerController()
        photo.delegate = self
        
        photo.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        photo.allowsEditing = false
        
        self.present(photo, animated: true)
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
