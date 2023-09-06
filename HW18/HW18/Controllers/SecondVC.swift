//
//  SecondVC.swift
//  HW18
//
//  Created by Вадим Игнатенко on 6.09.23.
//

import UIKit

class SecondVC: UIViewController {

    var dataColor: UIColor?
    @IBOutlet weak var viewOutlet: UIView! { didSet { viewOutlet.backgroundColor = dataColor } }
    @IBOutlet weak var redTF: UITextField!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var hexColorTF: UITextField!
    @IBOutlet weak var opacityTF: UITextField!
    @IBOutlet weak var colorViewOutlet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func deleganeAction() {
        
    }
    
    @IBAction func closureAction() {
    }
    

}
