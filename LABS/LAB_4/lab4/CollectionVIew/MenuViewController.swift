//
//  MenuViewController.swift
//  lab4
//
//  Created by f on 20.03.2022.
//

import Foundation
import UIKit


final class MenuViewController: UIViewController{
    private let NewSwitch = UISwitch()
    private let SwitchLabel = UILabel(frame: .zero)
    private let NewSlider = UISlider()
    private let SliderLabel = UILabel(frame: .zero)
    private let TextField = UITextField(frame: .zero)
    private let TextFieldLabel = UILabel()
    private let SegmentedPicker = UISegmentedControl(frame: .zero)
    private let SegmentedPickerLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ЭТО ТОЖЕ ЗАГОЛОВОК"
        setViews()
        SetConstrains()
        setupLabel()
        setNewSwitch()
        setNewSlider()
        didChangeSlider()
        didChangeSwitch()
        setTextField()
        SetupSegmentedPicker()
    }
    private func setViews() {
        view.addSubview(NewSwitch)
        view.addSubview(SwitchLabel)
        view.addSubview(SliderLabel)
        view.addSubview(NewSlider)
        view.addSubview(TextField)
        view.addSubview(TextFieldLabel)
        view.addSubview(SegmentedPicker)
        view.addSubview(SegmentedPickerLabel)
    }
    private func SetConstrains() {
       // NewSwitch.translatesAutoresizingMaskIntoConstraints = false
         SwitchLabel.translatesAutoresizingMaskIntoConstraints = false
         SliderLabel.translatesAutoresizingMaskIntoConstraints = false
         TextFieldLabel.translatesAutoresizingMaskIntoConstraints = false
        SegmentedPickerLabel.translatesAutoresizingMaskIntoConstraints = false
        NewSwitch.frame = CGRect(x: 25,
                                       y: 100,
                                       width: 50,
                                       height: 250)
        
        NewSlider.frame = CGRect(x: 25,
                                       y: 200,
                                       width: 250,
                                       height: 250)
        
        TextField.frame = CGRect(x: 25,
                                 y: 400,
                                 width: 250,
                                 height: 250)
        
        SegmentedPicker.frame = CGRect(x: 25,
                                       y: 180,
                                       width: 250,
                                       height: 25)
  
        NSLayoutConstraint.activate([
            SwitchLabel.topAnchor.constraint(equalTo: NewSwitch.topAnchor, constant: 20),
            SwitchLabel.leadingAnchor.constraint(equalTo: NewSwitch.leadingAnchor, constant: 10),
            SwitchLabel.bottomAnchor.constraint(equalTo: NewSwitch.bottomAnchor, constant: 40),
            SwitchLabel.trailingAnchor.constraint(equalTo: NewSwitch.trailingAnchor, constant: 30),
            
            SliderLabel.topAnchor.constraint(equalTo: NewSlider.topAnchor, constant: 20),
            SliderLabel.leadingAnchor.constraint(equalTo: NewSlider.leadingAnchor, constant: 10),
            SliderLabel.bottomAnchor.constraint(equalTo: NewSlider.bottomAnchor, constant: 40),
            SliderLabel.trailingAnchor.constraint(equalTo: NewSlider.trailingAnchor, constant: 30),
            
            
            TextFieldLabel.topAnchor.constraint(equalTo: TextField.topAnchor, constant: 20),
            TextFieldLabel.leadingAnchor.constraint(equalTo: TextField.leadingAnchor, constant: 10),
            TextFieldLabel.bottomAnchor.constraint(equalTo: TextField.bottomAnchor, constant: 40),
            TextFieldLabel.trailingAnchor.constraint(equalTo: TextField.trailingAnchor, constant: 30),
            
            
            SegmentedPickerLabel.topAnchor.constraint(equalTo: SegmentedPicker.topAnchor, constant: 20),
            SegmentedPickerLabel.leadingAnchor.constraint(equalTo: SegmentedPicker.leadingAnchor, constant: 10),
            SegmentedPickerLabel.bottomAnchor.constraint(equalTo: SegmentedPicker.bottomAnchor, constant: 40),
            SegmentedPickerLabel.trailingAnchor.constraint(equalTo: SegmentedPicker.trailingAnchor, constant: 30),

        
        ])
    }
    
    
    private func setTextField() {
        
            TextField.placeholder = "Введите текст"
            TextField.text = "Cюда можно ввести текст"
            TextField.clearsOnBeginEditing = true
            TextField.addTarget(self, action: #selector(TextFieldChanged), for: .allEditingEvents)
        
        
    }
    @objc private func TextFieldChanged() {
        TextFieldLabel.text = "вы  что-то сделали "
        
        
    }
    
    
    private func SetupSegmentedPicker() {
        
        SegmentedPicker.insertSegment(withTitle: "абра", at: 0, animated: true)
        SegmentedPicker.insertSegment(withTitle: "кадабра", at: 1, animated: true)
        SegmentedPicker.insertSegment(withTitle: "оаоа", at: 2, animated: false)
        //segmentControl.addTarget(self, action: #selector(didChangeSegmentControl), for: .valueChanged)
    }
    
    
    private func setupLabel() {
        SwitchLabel.text = "свитч"
        SliderLabel.text = ""
        TextFieldLabel.text = "для ввода текста^"
        SegmentedPickerLabel.text = "пикер(?)"
    }

    
    private func setNewSwitch() {
        NewSwitch.isOn = false
        NewSwitch.preferredStyle = .sliding
        NewSwitch.addTarget(self, action: #selector(didChangeSwitch), for: .valueChanged)
    }
    
    private func setNewSlider() {
        NewSlider.maximumValue = 99
        NewSlider.minimumValue = 1
        NewSlider.value = 45
        NewSlider.addTarget(self, action: #selector(didChangeSlider), for:.valueChanged)
      //  NewSwitch.isOn = false
      //  NewSwitch.preferredStyle = .sliding
      //  NewSwitch.addTarget(self, action: #selector(didChangeSwitch), for: .valueChanged)
    }
    @objc private func didChangeSwitch() {
        if NewSwitch.isOn {
            SwitchLabel.text = "вкл"
        } else {
          //  textField.resignFirstResponder()
            SwitchLabel.text = "выкл"
        }
    }
    @objc private func didChangeSlider() {
        if (Int(NewSlider.value) <= 50) {
            SliderLabel.text = "меньше половины" }
        else {
            SliderLabel.text = "больше половины"
        }
    }
    
    
    
}
   
