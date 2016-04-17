//
//  MasaViewController.swift
//  pizza-apps
//
//  Created by crocha on 14/4/16.
//  Copyright © 2016 crocha. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var masaPicker: UIPickerView!
    var tamanio = ""
    var masas = ["delgada", "crujiente", "gruesa"]
    
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
        return masas.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masas[row]
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let quesoViewController = segue.destinationViewController as? QuesoViewController
        let indexSelecionado = masaPicker.selectedRowInComponent(0)
        let masa = pickerView(masaPicker, titleForRow: indexSelecionado, forComponent: 0)
        quesoViewController?.tamanio = self.tamanio
        quesoViewController?.masa = masa!
    }

    
    

}
