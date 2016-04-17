//
//  QuesoViewController.swift
//  pizza-apps
//
//  Created by crocha on 14/4/16.
//  Copyright © 2016 crocha. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var quesopicker: UIPickerView!
    var masa = ""
    var tamanio = ""
    var tipoQueso = ["mozarela", "cheddar", "parmesano", "sin queso"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoQueso.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoQueso[row]
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let extraViewController = segue.destinationViewController as? IngredientesExtrasViewController
        let indexSelecionado = quesopicker.selectedRowInComponent(0)
        let queso = pickerView(quesopicker, titleForRow: indexSelecionado, forComponent: 0)
        extraViewController?.queso = queso!
        extraViewController?.tamanio = self.tamanio
        extraViewController?.masa = self.masa
        
        
    }

    

}
