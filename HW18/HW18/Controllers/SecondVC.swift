//
//  SecondVC.swift
//  HW18
//
//  Created by Вадим Игнатенко on 6.09.23.
//

import UIKit



class SecondVC: UIViewController {

    var delegate: DataColorProtocol?
    var complitonHandler: ( (UIColor) -> () )?
    var color: UIColor?
    @IBOutlet weak var viewOutlet: UIView! { didSet {viewOutlet.backgroundColor = color} }
    @IBOutlet weak var redTF: UITextField!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var hexColorTF: UITextField!
    @IBOutlet weak var opacityTF: UITextField!
    @IBOutlet var colorViewOutlet: UIView!
    
    
    @IBAction func deleganeAction() {
        delegate?.dataColor(data: colorViewOutlet.backgroundColor ?? .white)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func closureAction() {
//        let stor = UIStoryboard(name: "Main", bundle: nil)
//        guard let vc = stor.instantiateViewController(withIdentifier: "FirstVC") as? FirstVC else { return }
//
        guard let complitonHandler = complitonHandler else { return }
        complitonHandler(colorViewOutlet.backgroundColor ?? .white)
        navigationController?.popViewController(animated: true)
    }
}



