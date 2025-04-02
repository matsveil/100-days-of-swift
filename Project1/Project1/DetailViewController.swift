//
//  DetailViewController.swift
//  Project1
//
//  Created by Matsvei Liapich on 3/19/25.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    var selectedImage: String?
    var imageLabel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageLabel {
            title = imageLabel
        }
        
        navigationItem.largeTitleDisplayMode = .never
        
        if let selectedImage {
            ImageView.image = UIImage(named: selectedImage)
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
