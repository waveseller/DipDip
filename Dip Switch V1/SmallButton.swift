

import UIKit
@IBDesignable

class SmallButton: UIView {

    //referenza alla view
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
        let nib = UINib(nibName: "SmallButton", bundle: bundle)
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
        

        var image = UIImage()
        image = sender.imageForState(.Normal)!
        
        switch image {
        case buttonNextImg!:
            self.nextPressed()
        case buttonPreviousImg!:
            self.previousPressed()
        case buttonLightOnImg!, buttonLightOffImg!:
           self.lightPressed()
        case buttonSoundOffImg!, buttonSoundOnImg!:
            self.soundPressed()
        case buttonPlusOneImg!:
            self.plusOnePressed()
        case buttonMinusOneImg!:
            self.minusOnePressed()
        default:
            print("sono cazzi")
        }
        
        
    }
    
    func nextPressed() {
        
        print("next pressed")
    }
    
    func previousPressed() {
        print("previous pressed")
        
    }
    
    func lightPressed() {
        print("light  pressed")
    }
    
    func soundPressed() {
        print("sound pressed")
    }
    
    func plusOnePressed() {
        print("plus one pressed")
    }
    
    func minusOnePressed() {
        print("minus one pressed")
    }

    

}
