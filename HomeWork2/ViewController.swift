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
        colorPresenterView.layer.cornerRadius = view.frame.height * 0.05
        refreshColorPresenterViewColor()
    }
    
    // MARK: - IB Actions
    @IBAction func colorSliderAction(_ sender: UISlider) {
        refreshColorPresenterViewColor()
        
        switch sender.tag {
        case 0: redColorLabel.text = getColorString(from: redColorSlider.value)
        case 1: greenColorLabel.text = getColorString(from: greenColorSlider.value)
        case 2: blueColorLabel.text = getColorString(from: blueColorSlider.value)
        default: break
        }
    }
    
    // MARK: - Private Methods
    private func refreshColorPresenterViewColor() {
        colorPresenterView.backgroundColor = UIColor(red: CGFloat(redColorSlider.value),
                                                     green: CGFloat(greenColorSlider.value),
                                                     blue: CGFloat(blueColorSlider.value),
                                                     alpha: 1.0)
    }
    
    private func getColorString(from value: Float) -> String {
        return String(format: "%.2f", value)
    }
}
