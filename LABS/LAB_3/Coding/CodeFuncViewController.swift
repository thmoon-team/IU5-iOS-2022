//
//  CodeFuncViewController.swift
//  lab3
//
//  Created by Погиблов on 21.03.2022.
//

import UIKit

class CodeFuncViewController: UIViewController {
    
    private let applyButton = UIButton(type: .system)
    private let applyButtonTitle = UILabel()
    private let switcher  = UISwitch()
    private let switchTitle = UILabel()
    private let whiteBlack = UISegmentedControl()
    private let whiteBlackTitle = UILabel()
    private let slider = UISlider()
    private let sliderTitle = UILabel()
    private let textField = UITextField()
    private let textFieldTitle = UILabel()
    
    private enum Constraints{
        static let leftColumnCenter: CGFloat = 95
        static let lineSpace: CGFloat = 110
        static let bottom: CGFloat = 540
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
}
    private func setupViews() {
        setupButton()
        setupSwitch()
        setupWhiteBlack()
        setupSlider()
        setupTextField()
        
        view.addSubview(applyButton)
        view.addSubview(applyButtonTitle)
        view.addSubview(switcher)
        view.addSubview(switchTitle)
        view.addSubview(whiteBlack)
        view.addSubview(whiteBlackTitle)
        view.addSubview(slider)
        view.addSubview(sliderTitle)
        view.addSubview(textField)
        view.addSubview(textFieldTitle)
    }
    
    private func setupButton() {
        applyButton.backgroundColor = .quaternaryLabel
        applyButton.tintColor = .black
        applyButton.setTitle("Click", for: .normal)
        applyButton.frame = CGRect(x: Constraints.leftColumnCenter - 60 / 2, y: Constraints.bottom, width: 60, height: 35)
        applyButton.addTarget(self, action: #selector(didTapApply), for: .touchUpInside)
        setupText(title: "Apply", frame: applyButton.frame, label: applyButtonTitle)
    }
    
    private func setupSwitch() {
        switcher.frame = CGRect(x: Constraints.leftColumnCenter - 60 / 2, y: Constraints.bottom - 4 * Constraints.lineSpace, width: 60, height: 35)
        setupText(title: "Switch", frame: switcher.frame, label: switchTitle)
    }
    
    private func setupSlider() {
        slider.frame = CGRect(x: Constraints.leftColumnCenter - 100 / 2, y: Constraints.bottom - 3 * Constraints.lineSpace, width: 110, height: 35)
        setupText(title: "Slider", frame: slider.frame, label: sliderTitle)
    }
    
    private func setupTextField() {
        textField.borderStyle = .bezel
        textField.frame = CGRect(x: Constraints.leftColumnCenter - 100 / 2, y: Constraints.bottom - 2 * Constraints.lineSpace, width: 110, height: 35)
        setupText(title: "Cheat Code", frame: textField.frame, label: textFieldTitle)
    }
    
    private func setupWhiteBlack() {
        whiteBlack.insertSegment(withTitle: "White", at: 0, animated: true)
        whiteBlack.insertSegment(withTitle: "Black", at: 1, animated: true)
        whiteBlack.selectedSegmentIndex = 0
        whiteBlack.frame = CGRect(x: Constraints.leftColumnCenter - 110 / 2, y: Constraints.bottom - 1 * Constraints.lineSpace, width: 110, height: 35)
        setupText(title: "Theme", frame: whiteBlack.frame, label: whiteBlackTitle)
    }
    
    private func setupText(title: String, frame: CGRect, label: UILabel) {
        label.text = title
        label.frame = CGRect(x: UIScreen.main.bounds.width - Constraints.leftColumnCenter - 100 / 2, y: (frame.maxY + frame.minY) / 2 - 28 / 2, width: 100, height: 28)
    }
    
    @objc
    private func didTapApply() {
        let actionSheet = UIAlertController(title: "Confirmation", message: "Are you sure to apply?", preferredStyle: .actionSheet)
        let action1 = UIAlertAction(title: "Apply", style: .default)
        let action2 = UIAlertAction(title: "Reset", style: .destructive)
        let action3 = UIAlertAction(title: "Cancel", style: .cancel)
        
        actionSheet.addAction(action1)
        actionSheet.addAction(action2)
        actionSheet.addAction(action3)
        
        present(actionSheet, animated: true)
    }
}
