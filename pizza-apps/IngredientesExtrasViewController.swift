//
//  IngredientesExtrasViewController.swift
//  pizza-apps
//
//  Created by crocha on 14/4/16.
//  Copyright © 2016 crocha. All rights reserved.
//

import UIKit

class IngredientesExtrasViewController: UIViewController {

    @IBOutlet weak var jamonSw: UISwitch!
    @IBOutlet weak var peperoniSw: UISwitch!
    @IBOutlet weak var pavoSw: UISwitch!
    @IBOutlet weak var salchichaSw: UISwitch!
    @IBOutlet weak var aceitunaSw: UISwitch!
    @IBOutlet weak var cebollaSw: UISwitch!
    @IBOutlet weak var pimientoSw: UISwitch!
    @IBOutlet weak var pinaSw: UISwitch!
    @IBOutlet weak var anchoaSw: UISwitch!
    
    var tamanio = ""
    var masa = ""
    var queso = ""
    
    
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var lista_ingrediente :[String] = []
        if jamonSw.on{
            lista_ingrediente.append("jamón")
        }
        if peperoniSw.on{
            lista_ingrediente.append("pepperoni")
        }
        if pavoSw.on{
            lista_ingrediente.append("pavo")
        }
        if salchichaSw.on{
            lista_ingrediente.append("salchicha")
        }
        if aceitunaSw.on{
            lista_ingrediente.append("aceituna")
        }
        if cebollaSw.on{
            lista_ingrediente.append("cebolla")
        }
        if pimientoSw.on{
            lista_ingrediente.append("pimiento")
        }
        if pinaSw.on{
            lista_ingrediente.append("piña")
        }
        if anchoaSw.on{
            lista_ingrediente.append("anchoa")
        }
        
        if lista_ingrediente.count > 0 && lista_ingrediente.count <= 5 {
            let resumenController = segue.destinationViewController as? ResumenViewController
            resumenController!.tamanio = self.tamanio
            resumenController!.masa = self.masa
            resumenController!.queso = self.queso
            resumenController!.ingredientes = lista_ingrediente
            
        }else{
            let alertController = UIAlertController(title: "Error", message:
                "Selecciona un mínimo de un ingrediente y un máximo de 5!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
    }


}
