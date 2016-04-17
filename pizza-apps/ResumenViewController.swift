//
//  ResumenViewController.swift
//  pizza-apps
//
//  Created by crocha on 14/4/16.
//  Copyright © 2016 crocha. All rights reserved.
//

import UIKit

class ResumenViewController: UIViewController {
    
    @IBOutlet weak var dimencionLb: UILabel!
    @IBOutlet weak var masaLb: UILabel!
    @IBOutlet weak var quesoLb: UILabel!
    @IBOutlet weak var extraLb: UILabel!
    
    
    var tamanio : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes = [String]()

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
    
    @IBAction func Confirmar(sender: AnyObject) {
        let alertController = UIAlertController(title: "Pedido enviado!", message:
            "Su pedido fue enviado con exito", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    override func viewWillAppear(animated: Bool) {
        dimencionLb.text = tamanio
        masaLb.text = masa
        quesoLb.text = queso
        extraLb.text = "\(ingredientes)"
    }


}
