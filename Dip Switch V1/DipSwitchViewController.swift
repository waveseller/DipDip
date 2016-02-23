

import UIKit

class DipSwitchViewController: UIViewController {

    
    @IBOutlet weak var buttonOne: NumberPadButton!
    @IBOutlet weak var buttonTwo: NumberPadButton!
    @IBOutlet weak var buttonThree: NumberPadButton!
    @IBOutlet weak var buttonFour: NumberPadButton!
    @IBOutlet weak var buttonFive: NumberPadButton!
    @IBOutlet weak var buttonSix: NumberPadButton!
    @IBOutlet weak var buttonSeven: NumberPadButton!
    @IBOutlet weak var buttonEight: NumberPadButton!
    @IBOutlet weak var buttonNine: NumberPadButton!
    @IBOutlet weak var buttonZero: NumberPadButton!
    
    @IBOutlet weak var buttonLight: SmallButton!
    @IBOutlet weak var buttonSound: SmallButton!
    
   
    @IBOutlet weak var buttonNext: SmallButton!
    @IBOutlet weak var buttonPrevious: SmallButton!
    
    @IBOutlet weak var buttonPlusOne: SmallButton!
    @IBOutlet weak var buttonMinusOne: SmallButton!
    
   
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //imposta le immagini sui button
        buttonOne.buttonImageSetup(buttonOneImg!)
        buttonTwo.buttonImageSetup(buttonTwoImg!)
        buttonThree.buttonImageSetup(buttonThreeImg!)
        buttonFour.buttonImageSetup(buttonFourImg!)
        buttonFive.buttonImageSetup(buttonFiveImg!)
        buttonSix.buttonImageSetup(buttonSixImg!)
        buttonSeven.buttonImageSetup(buttonSevenImg!)
        buttonEight.buttonImageSetup(buttonEightImg!)
        buttonNine.buttonImageSetup(buttonNineImg!)
        buttonZero.buttonImageSetup(buttonZeroImg!)
        
        buttonLight.buttonImageSetup(buttonLightOffImg!)
        buttonSound.buttonImageSetup(buttonSoundOffImg!)
        
        buttonNext.buttonImageSetup(buttonNextImg!)
        buttonPrevious.buttonImageSetup(buttonPreviousImg!)
        
        buttonPlusOne.buttonImageSetup(buttonPlusOneImg!)
        buttonMinusOne.buttonImageSetup(buttonMinusOneImg!)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func updateDipSwitchStatus(dipSwitch: DipSwitch) {
        
        if dipSwitch.dipSwitchStatusOn {
            
            
        }
        
    }
    
    


}

