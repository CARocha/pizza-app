//
//  ViewController.swift
//  pizza-apps
//
//  Created by crocha on 14/4/16.
//  Copyright © 2016 crocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var DimencionPizza: UIPickerView!
    var dimenciones = ["Grande","Mediana","chica"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dimenciones.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dimenciones[row]
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let masaViewController = segue.destinationViewController as? MasaViewController
        let indexSelecionado = DimencionPizza.selectedRowInComponent(0)
        let tamanio = pickerView(DimencionPizza, titleForRow: indexSelecionado, forComponent: 0)
        masaViewController?.tamanio = tamanio!
    }



}

