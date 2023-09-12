//
//  SecondVC.swift
//  HW18
//
//  Created by Вадим Игнатенко on 6.09.23.
//

import UIKit

final class SecondVC: UIViewController {
    
    @IBOutlet private var viewOutlet: UIView! { didSet { viewOutlet.backgroundColor = color } }
    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!
    @IBOutlet private var opacitySlider: UISlider!
    @IBOutlet private var redTF: UITextField!
    @IBOutlet private var greenTF: UITextField!
    @IBOutlet private var blueTF: UITextField!
    @IBOutlet private var hexColorTF: UITextField!
    @IBOutlet private var opacityTF: UITextField!
    @IBOutlet private var colorViewOutlet: UIView!
    var delegate: DataColorProtocol?
    var complitonHandler: ((UIColor) -> ())?
    var color: UIColor?

    private func changeColor() {
        colorViewOutlet.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                                  green: CGFloat(greenSlider.value),
                                                  blue: CGFloat(blueSlider.value),
                                                  alpha: CGFloat(opacitySlider.value))

        redTF.text = String(format: "%.2f", redSlider.value)
        greenTF.text = String(format: "%.2f", greenSlider.value)
        blueTF.text = String(format: "%.2f", blueSlider.value)
        opacityTF.text = String(format: "%.2f", opacitySlider.value)
    }

    @IBAction private func changeColorAction() {
        changeColor()
    }

    @IBAction private func deleganeAction() {
        delegate?.dataColor(data: colorViewOutlet.backgroundColor ?? .white)
        navigationController?.popViewController(animated: true)
    }

    @IBAction private func closureAction() {
        guard let complitonHandler = complitonHandler else { return }
        complitonHandler(colorViewOutlet.backgroundColor ?? .white)
        navigationController?.popViewController(animated: true)
    }
}
