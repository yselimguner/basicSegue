//
//  ViewController.swift
//  SegueApp11
//
//  Created by Yavuz Güner on 17.02.2022.
//

import UIKit

class ViewController: UIViewController {

    var userName = ""
    
    @IBOutlet weak var nameTextBox: UITextField!
    @IBOutlet weak var firstLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Bundan sonra ekleyeceğim fonksiyonlar olayın mantığını kavramak için fonksiyonel olarak yazıyorum
    
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Görüntü Kayboldu fonksitonu")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Görüntü kaybolacak fonksiyonu")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Bu görünüm belirecek fonksiyonu")
        //Geri geldiğim zaman ekranda görüntü kalmasın istiyorsam budur.
        nameTextBox.text=""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Bu görünüm gözüktü fonksiyonu")
    }
    
    
    
    

    @IBAction func nextButton(_ sender: Any) {
        
        userName = nameTextBox.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    //segue olmadan önce yapılacak işlemleri yazıyoruz. Override üzerine yazmak demek zaten.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            //as
            
            let destinationVC = segue.destination as! ViewController2
            destinationVC.myName = userName
        }
    }
    
}

