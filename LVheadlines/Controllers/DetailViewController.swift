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
    var imageString = String()

    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "LV headlines"
        print(webURLString)
        
        titleLabel.text = titleString
        contentTextView.text = contentString
        guard let imageUrl: URL = URL(string: imageString) else { return }
        guard let imageData = try? Data(contentsOf: imageUrl) else { return }
        DispatchQueue.main.async {
            let image = UIImage(data: imageData)
            self.imageView.image = image
        }
        
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination: WebViewController = segue.destination as! WebViewController
        destination.urlString = webURLString
        
    }
}

