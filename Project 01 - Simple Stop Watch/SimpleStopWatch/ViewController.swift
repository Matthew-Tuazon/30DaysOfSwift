//
//  ViewController.swift
//  SimpleStopWatch
//
//  Created by Mac Os on 7/16/18.
//  Copyright © 2018 Matt Tuazon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    

    @IBAction func startTimer(_ sender: Any) {
        if(isPlaying){
            return
        }
        startButton.isEnabled = false
        pauseButton.isEnabled = true
        timer = Timer.scheduledTimer(timeInterval:0.1, target:self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        isPlaying = true
    }
    
    @IBAction func pauseTimer(_ sender: Any) {
        startButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isPlaying = false;
    }
  
    @IBAction func resetTimer(_ sender: Any) {
            startButton.isEnabled = true
            pauseButton.isEnabled = false
            
            timer.invalidate()
            isPlaying = false;
            counter = 0
            timeLabel.text = String(counter)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = String(counter)
        pauseButton.isEnabled = false
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func updateTimer(){
        counter = counter + 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

