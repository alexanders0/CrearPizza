//
//  FirstViewController.swift
//  CrearPizza
//
//  Created by Alexander Sanchez on 29/12/17.
//  Copyright © 2017 Alexander Sanchez. All rights reserved.
//

import UIKit

class TamanoController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var tamanoLabel: UILabel!
    @IBOutlet weak var tamanosPizza: UIPickerView!
    
    let tamanos = ["chica", "mediana", "grande"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamanos[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamanos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tamanoLabel.text = tamanos[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

