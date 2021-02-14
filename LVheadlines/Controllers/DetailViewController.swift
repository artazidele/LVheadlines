//
//  DetailViewController.swift
//  LVheadlines
//
//  Created by arta.zidele on 14/02/2021.
//

import UIKit

class DetailViewController: UIViewController {
    var webURLString = String()
    var titleString = String()
    var contentString = String()

    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "LV headlines"
        print(webURLString)
        
        titleLabel.text = titleString
        contentTextView.text = contentString
        //imageView.image = UIImage()
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination: WebViewController = segue.destination as! WebViewController
        destination.urlString = webURLString
        
    }
}

