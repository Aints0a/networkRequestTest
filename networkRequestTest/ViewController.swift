//
//  ViewController.swift
//  networkRequestTest
//
//  Created by Jean Yves Kaliva on 3/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
   
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Button pressed.")
        let imageUrl = URL(string: "https://www.shutterstock.com/image-photo/beautiful-rottweiler-dog-park-leash-260nw-696851572.jpg")!
        let task = URLSession.shared.dataTask(with: imageUrl) { data, response, error in
            if let error = error {
                print(error)
                
            } else {
                if let data = data, let image = UIImage(data: data){
                    DispatchQueue.main.async {
                        self.imageView.image = image
                    print("task executed")
                    }
                }
            }
        }
        task.resume()
    }
    
}

