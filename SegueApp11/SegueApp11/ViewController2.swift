//
//  ViewController2.swift
//  SegueApp11
//
//  Created by Yavuz Güner on 17.02.2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text=myName
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
