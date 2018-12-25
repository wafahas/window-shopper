//
//  ViewController.swift
//  window-shopper
//
//  Created by Wafaa Abu Dawod on 12/24/18.
//  Copyright © 2018 Wafaa Abu Dawod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var HoursLbl: UILabel!
    
    @IBAction func clearCalculator(_ sender: Any) {
        resultLbl.isHidden = true
        HoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton (frame: CGRect(x: 0, y:0, width :view.frame.size.width,height:60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView=calcBtn
        priceTxt.inputAccessoryView=calcBtn
       
        resultLbl.isHidden = true
        HoursLbl.isHidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func calculate(){
        if let wageTxt=wageTxt.text , let priceTxt=priceTxt.text {
            if let wage = Double(wageTxt), let price = Double (priceTxt)
            {view.endEditing(true)
                resultLbl.isHidden=false
                HoursLbl.isHidden=false
                resultLbl.text = "\(Wage.getHours(forWage: wage, forPrice: price))"
            }
        }
    }

}

