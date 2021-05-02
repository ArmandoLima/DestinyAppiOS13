//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //OUTLETS
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
        
    //VARIABLES
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        storyLabel.text = storyBrain.stories[0].title
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)
    }
    
    //ACTIONS
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI(question: storyBrain.storyNumber)
        
    }
    
    //FUNCTIONS
    
    func updateUI(question: Int){
        
        storyLabel.text = storyBrain.stories[question].title
        choice1Button.setTitle(storyBrain.stories[question].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[question].choice2, for: .normal)
        
    }
}

