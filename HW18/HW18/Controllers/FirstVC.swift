//
//  FirstVC.swift
//  HW18
//
//  Created by Вадим Игнатенко on 6.09.23.
//

import UIKit



class FirstVC: UIViewController {
    
    
    @IBOutlet weak var viewOut: UIView!
    
    
    
    @IBAction func changeBGAction() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC else { return }
        vc.dataColor = viewOut.backgroundColor
        navigationController?.pushViewController(vc, animated: true)
    }
}
