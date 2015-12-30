//
//  ViewController.swift
//  StopWatch
//

//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    var timer = NSTimer()
    var time = 00
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func Go(sender: AnyObject) {
        
    }
    func increaseTimer(){
        timerLabel.text = "String\(counter)"
        time++
        timerLabel.text = "\(time)"
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(01, target: self, selector:Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
        
    }
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

