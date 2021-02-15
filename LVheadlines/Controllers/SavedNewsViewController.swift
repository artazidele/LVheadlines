//
//  SavedNewsViewController.swift
//  LVheadlines
//
//  Created by arta.zidele on 14/02/2021.
//

import UIKit

class SavedNewsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var savedItems: [SavedItem] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Saved news"
        getSavedItems()
    }
    func getSavedItems() {
        
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
    



