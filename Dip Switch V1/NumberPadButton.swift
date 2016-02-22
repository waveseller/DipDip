//
//  NumberPadButton.swift
//  Dip Switch V1
//
//  Created by Jordan Babev on 21/02/16.
//  Copyright © 2016 Jordan Babev. All rights reserved.
//

import UIKit
@IBDesignable

class NumberPadButton: UIView {

    @IBOutlet var view: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    //MARK: inizializzazione della view da .xib
    func xibSetup() {
        
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        addSubview(view)
        
    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "NumberPadButton", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    func buttonImageSetup(image: UIImage) {
        
        button.setImage(image, forState: .Normal)
        
    }

    @IBAction func buttonPressed(sender: UIButton) {
        
        var tag = 0
        var image = UIImage()
        image = sender.imageForState(.Normal)!
        
        switch image {
        case buttonOneImg!:
            sender.tag = 1
        case buttonTwoImg!:
            sender.tag = 2
        case buttonThreeImg!:
            sender.tag = 3
        case buttonFourImg!:
            sender.tag = 4
        case buttonFiveImg!:
            sender.tag = 5
        case buttonSixImg!:
            sender.tag = 6
        case buttonSevenImg!:
            sender.tag = 7
        case buttonEightImg!:
            sender.tag = 8
        case buttonNineImg!:
            sender.tag = 9
        case buttonZeroImg!:
            sender.tag = 0
        default:
            sender.tag = 0
        }
        
        tag = sender.tag
        print("il pulsante premuto è: \(tag)")
        
    }
    

}
