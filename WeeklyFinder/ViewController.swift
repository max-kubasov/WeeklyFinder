//
//  ViewController.swift
//  WeeklyFinder
//
//  Created by Max on 22.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextFied: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDayButton(_ sender: UIButton) {
        
        guard let day = dateTextField.text,
                let month = monthTextField.text,
                let year = yearTextFied.text
        else { return }
         
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        dateFormatter.dateFormat = "EEEE"
        
        guard let date = calendar.date(from: dateComponents) else { return }
        
        let weekDay = dateFormatter.string(from: date)
        let capitalizeWeekDay = weekDay.capitalized
        
        resultLabel.text = capitalizeWeekDay
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        self.view.endEditing(true)
    }
    
    
}

    
