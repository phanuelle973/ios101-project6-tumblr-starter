//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Phanuelle Manuel on 4/9/25.
//

import UIKit
import Nuke
import Foundation

class DetailViewController: UIViewController {
    
//    init(textView: UITextView!, imageView: UIImageView!) {
//        self.textView = textView
//        self.imageView = imageView
//    }
    
    var post: Post!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Load the image using Nuke
        if let photo = post.photos.first {
            Nuke.loadImage(with: photo.originalSize.url, into: imageView)
        }

        // Set the caption text, removing HTML tags
        textView.text = post.caption.trimHTMLTags()

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
