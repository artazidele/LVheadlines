//
//  ItemTableViewCell.swift
//  LVheadlines
//
//  Created by arta.zidele on 15/02/2021.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewForItem: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var pockeyImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cardValueLabel: UILabel!
    @IBOutlet weak var subtypeLabel: UILabel!
    @IBOutlet weak var supertypeLabel: UILabel!
    func setUI(with: Item) {
        titleLabel.text = with.title
        
        
        
        let imageString = with.imageUrl
        guard let imageUrl: URL = URL(string: imageString) else { return}
        guard let imageData = try? Data(contentsOf: imageUrl) else { return }
            let image = UIImage(data: imageData)
            imageViewForItem.image = image
        
        
    }
}
