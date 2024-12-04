//
//  ViewController.swift
//  Counter
//
//  Created by Антон Шивалин on 03.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var counter: Int = 0

    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak private var HistoryOfChanges: UITextView!
    @IBOutlet weak var buttonReduceCounter: UIButton!
    @IBOutlet weak var valueOfcounter: UILabel!
    @IBOutlet weak var buttonAddCouner: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func increaseCounter(_ sender: Any) {
        counter += 1
        valueOfcounter.text = "Значение счётчика: \(counter)"
        HistoryOfChanges.text += "\(Date()): значение изменено на +1 \n"
    }
    
    @IBAction func reduceCounter(_ sender: Any) {
        if counter <= 0 {
            HistoryOfChanges.text += "\(Date()): попытка уменьшить значение счётчика ниже 0 \n"
            return
        }
        counter -= 1
        valueOfcounter.text = "Значение счётчика: \(counter)"
        HistoryOfChanges.text += "\(Date()) и \(Calendar.current): значение изменено на -1 \n"
    }
    
    
    @IBAction func resetCounter(_ sender: Any) {
        counter = 0
        valueOfcounter.text = "Значение счётчика: \(counter)"
        HistoryOfChanges.text += "\(Date()): значение сброшено \n"
    }
}


