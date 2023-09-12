//
//  FirstVC.swift
//  HW18
//
//  Created by Вадим Игнатенко on 6.09.23.
//

import UIKit

protocol DataColorProtocol {
    func dataColor(data: UIColor)
}

private class FirstVC: UIViewController {
    var complitonHandler: ((UIColor) -> ())?
    @IBOutlet private var viewOut: UIView!

    @IBAction private func changeBGAction() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC else { return }
        vc.color = viewOut.backgroundColor
        vc.delegate = self
        vc.complitonHandler = { [weak self] newColor in
            self?.viewOut.backgroundColor = newColor
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension FirstVC: DataColorProtocol {
    func dataColor(data: UIColor) {
        viewOut.backgroundColor = data
    }
}
