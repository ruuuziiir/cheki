//
//  ViewController.swift
//  cheki
//
//  Created by 7 on 2020/12/14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var chekiImageView: UIImageView!
    @IBOutlet weak var backView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        chekiImageView.image = UIImage(named: "Image")
        chekiImageView.frame = CGRect(x: 57, y: 145, width: 300, height: 300)
        backView.frame = CGRect(x: 30, y: 120, width: 354, height: 445)
    }

    
    @IBAction func ratioSegmentedControl(_ sender: UISegmentedControl) {
        
        let width: CGFloat = 300
        var height: CGFloat = 0
        
        if sender.selectedSegmentIndex == 0 {
            height = width
        } else if sender.selectedSegmentIndex == 1 {
            height = width / 9 * 16
        } else {
            height = width / 3 * 4
        }
        
        chekiImageView.frame.size = CGSize(width: width, height: height)
        backView.frame = CGRect(x: 30, y: 120, width: width + 54, height: height + 145)

    }
    


}

