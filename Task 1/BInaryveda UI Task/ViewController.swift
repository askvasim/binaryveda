//
//  ViewController.swift
//  BInaryveda UI Task
//
//  Created by Vasim Khan on 8/20/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func registerButton(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let secondView  = storyBoard.instantiateViewController(withIdentifier: "SecondVCID") as! SecondViewVC
        secondView.modalPresentationStyle = .fullScreen
        self.present(secondView, animated: true, completion: nil)
    }
    
}

