//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    //restaurants data
    var links: [String: String] = ["La Note": "https://www.yelp.com/biz/la-note-restaurant-proven%C3%A7al-berkeley-4",
                            "Cheese Board": "https://www.yelp.com/biz/cheese-board-pizza-berkeley",
                            "Great China": "https://www.yelp.com/biz/great-china-berkeley",
                            "Kirala": "https://www.yelp.com/biz/kirala-japanese-restaurant-berkeley"]
    
    //dictionary for lists of menu
    var menu : [String:[String]] = ["La Note":["Egg Benedict", "French Toast", "Croissant"], "Cheese Board":["Today's Special: Sweet Potato Pizza"], "Great China": ["Walnut Shirimp", "Beijing Duck", "Mafo Tofu"], "Kirala":["Rainbow Roll","Hungry Roll","Lion King"]]
    
    

    @IBOutlet var nextKeyboardButton: UIButton!
    //Button for restaurants
    @IBOutlet var laNoteButton: UIButton!
    @IBOutlet var cheeseBoardButton: UIButton!
    @IBOutlet var greatChinaButton: UIButton!
    @IBOutlet var kiralaButton: UIButton!
    
    //Buttons for picture, menu, and yelp links
    @IBOutlet var pictureButton: UIButton!
    @IBOutlet var menuButton: UIButton!
    @IBOutlet var yelpButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
    }


}
