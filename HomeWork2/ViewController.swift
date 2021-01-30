//
//  ViewController.swift
//  HomeWork2
//
//  Created by ALEKSEY SUSLOV on 31.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var colorPresenterView: UIView!
    
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    // MARK: - Life Cycles Methods
    override func viewWillLayoutSubviews() {
        colorPresenterView.layer.cornerRadius = self.view.frame.height * 0.05
        refreshColorPresenterViewColor()
    }
    
    // MARK: - IB Actions
    @IBAction func redColorSliderAction() {
        refreshColorPresenterViewColor()
        redColorLabel.text = getColorString(from: redColorSlider.value)
    }
    
    @IBAction func greenColorSliderAction() {
        refreshColorPresenterViewColor()
        greenColorLabel.text = getColorString(from: greenColorSlider.value)
    }
    
    @IBAction func blueColorSliderAction() {
        refreshColorPresenterViewColor()
        blueColorLabel.text = getColorString(from: blueColorSlider.value)
    }
    
    // MARK: - Private Methods
    private func refreshColorPresenterViewColor() {
        let redColor = CGFloat(redColorSlider.value)
        let greenColor = CGFloat(greenColorSlider.value)
        let blueColor = CGFloat(blueColorSlider.value)
        
        let rgbColor = UIColor.init(red: redColor,
                                 green: greenColor,
                                 blue: blueColor,
                                 alpha: 1.0)
        
        colorPresenterView.backgroundColor = rgbColor
    }
    
    private func getColorString(from value: Float) -> String {
        let roundedValue = round(value * 100) / 100
        let stringValue = String(roundedValue)
        
        if stringValue.count < 4 {
            return stringValue + "0"
        } else {
            return stringValue
        }
    }
}

