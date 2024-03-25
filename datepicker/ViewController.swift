//
//  ViewController.swift
//  datepicker
//
//  Created by apple on 7/28/23.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var field1: UITextField!
//
//    let datapicker = UIDatePicker()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        createDatepicker()
        
//    }
//    func createtablebar() -> UIToolbar{
//        let tool = UIToolbar()
//        tool.sizeToFit()
//
//
//        //done btn
//        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donepressed))
//        tool.setItems([doneBtn], animated: true)
//        return tool
//    }
//    func createDatepicker()
//    {
//        datapicker.preferredDatePickerStyle = .wheels
//        datapicker.datePickerMode = .date
//       field1.textAlignment = .center
//        field1.inputView = datapicker
//        field1.inputAccessoryView = createtablebar()
//}
//   @objc func donepressed()
//    {
//        let dateformatter = DateFormatter()
//        dateformatter.dateStyle = .medium
//        dateformatter.timeStyle = .none
//        self.field1.text = dateformatter.string(from: datapicker.date)
//        self.view.endEditing(true)
//    }

    

            @IBOutlet weak var field1: UITextField!
            
            let datePicker = UIDatePicker()
            
            override func viewDidLoad() {
                super.viewDidLoad()
                createDatepicker()
            }
            
            func createToolbar() -> UIToolbar {
                let toolbar = UIToolbar()
                toolbar.sizeToFit()
                
                // Done button
                let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
                toolbar.setItems([doneBtn], animated: true)
                
                return toolbar
            }
            
            func createDatepicker() {
                datePicker.preferredDatePickerStyle = .wheels
                datePicker.datePickerMode = .date
                field1.textAlignment = .center
                field1.inputView = datePicker
                field1.inputAccessoryView = createToolbar()
            }
            
            @objc func donePressed() {
                let dateFormatter = DateFormatter()
                dateFormatter.dateStyle = .medium
                dateFormatter.timeStyle = .none
                field1.text = dateFormatter.string(from: datePicker.date)
                view.endEditing(true)
            }
        }


