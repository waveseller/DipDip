

import UIKit
@IBDesignable

class DipSwitch: UIView {
    
    //referenza alla view nel file .xib
    @IBOutlet var view: UIView!
    
    //referenza alla Image view che contiene l'immagine di Switch On e Off
    @IBOutlet weak var imageView: UIImageView!
    //MARK: inizializzazione della view da .xib
    
    //variabili che contengono le immagini di Switch On ed Off
    var imageSwitchOn = UIImage(named: "dipSwitchOn.png")
    var imageSwitchOff = UIImage(named: "dipSwitchOff.png")
    
    var dipSwitchStatusOn = false

    
    
    func xibSetup() {
        
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        //Imposta l'immagine di default per ogni istanza Switch
        self.setImageForSwitchOff()
        
        
        addSubview(view)
        
    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "DipSwitch", bundle: bundle)
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
    
    func setImageForSwitchOff() {
        imageView.image = imageSwitchOff
    }
    
    func setImageForSwitchOn() {
        imageView.image = imageSwitchOn
        
    }
    
    


    
}
