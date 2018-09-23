//
//  ViewController.swift
//  Lab2-MaxGillespie
//
//  Created by Max Gillespie on 9/14/18.
//  Copyright © 2018 Max Gillespie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pets = [
        Pet(h: 0, f:0, type: .dog),
        Pet(h: 0, f:0, type: .cat),
        Pet(h: 0, f:0, type: .bird),
        Pet(h: 0, f:0, type: .bunny),
        Pet(h: 0, f:0, type: .fish)
    ]
    var currentPet:Pet!
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var feedButton: UIButton!
    @IBOutlet weak var petBackground: UIView!
    @IBOutlet weak var petImage: UIImageView!
    @IBOutlet weak var happinessLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var happinessView: DisplayView!
    @IBOutlet weak var foodView: DisplayView!
    @IBOutlet weak var allPetsHappiness: DisplayView!
    
    
    @IBAction func dogSelected(_ sender: Any) {
        currentPet = pets[0]
        updateDisplay()
    }
    @IBAction func catSelected(_ sender: Any) {
        currentPet = pets[1]
        updateDisplay()
    }
    @IBAction func birdSelected(_ sender: Any) {
        currentPet = pets[2]
        updateDisplay()
    }
    @IBAction func bunnySelected(_ sender: Any) {
        currentPet = pets[3]
        updateDisplay()
    }
    @IBAction func fishSelected(_ sender: Any) {
        currentPet = pets[4]
        updateDisplay()
    }
    
    @IBAction func playButtonPressed(_ sender: Any) {
        print ("Play button pressed!")
        
        currentPet.play()
        updateDisplay()
    }
    @IBAction func feedButtonPressed(_ sender: Any) {
        print ("Feed button pressed!")
        
        currentPet.feed()
        updateDisplay()
    }
    
    func updateDisplay() {
        let foodLevel = currentPet.foodLevel
        let happinessLevel = currentPet.happiness
        
        foodView.animateValue(to: CGFloat(foodLevel) / 10)
        foodLabel.text = String(currentPet.foodLevel)
        
        happinessView.animateValue(to: CGFloat(happinessLevel) / 10)
        happinessLabel.text = String(currentPet.happiness)
        
        petImage.image = currentPet.image
        petBackground.backgroundColor = currentPet.background
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        petBackground.backgroundColor = UIColor(red: 1, green: 0.46, blue: 0.46, alpha: 1)
        
        currentPet = pets[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

