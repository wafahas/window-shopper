//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Wafaa Abu Dawod on 12/24/18.
//  Copyright © 2018 Wafaa Abu Dawod. All rights reserved.
//

import UIKit
@IBDesignable

class CurrencyTxtField: UITextField {
    
    
    override func draw(_ rect: CGRect) {
        let size:CGFloat = 20
        let currencyLbl = UILabel(frame : CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.2502140411)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLbl.layer.cornerRadius =  5.0
        currencyLbl.clipsToBounds = true
        let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = .current
        currencyLbl.text = formater.currencySymbol
        addSubview(currencyLbl)
       
    }
    
    override func prepareForInterfaceBuilder() {
        custamizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        custamizeView()
        }
    func custamizeView(){
        
        backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius=5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString (string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder=place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}
