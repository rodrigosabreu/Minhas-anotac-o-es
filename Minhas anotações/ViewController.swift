//
//  ViewController.swift
//  Minhas anotações
//
//  Created by Rodrigo Abreu on 06/11/17.
//  Copyright © 2017 Rodrigo Abreu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textoCampo: UITextView!
    let chave = "minhaAnotacao"
    
    @IBAction func salvarAnotacao(_ sender: Any) {
        
        if let texto = textoCampo.text{
            UserDefaults.standard.set(texto, forKey: chave)
        }
        
        
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func recuperarAnotacao() ->String{
        if let textoRecuperado = UserDefaults.standard.object(forKey: chave){
            return textoRecuperado as! String
        }
        return ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        textoCampo.text = recuperarAnotacao()
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

