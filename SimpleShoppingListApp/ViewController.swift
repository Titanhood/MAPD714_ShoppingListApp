//
//
// ViewController.swift
// SimpleShoppingListApp
// titanhood
// SimpleShoppingListApp
//
// Created by Ajay Shrivastav on 2022-10-29 on 1:24 PM.

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ListName: UITextField!
    
    @IBOutlet weak var StepperItem1: UILabel!
    
    @IBOutlet weak var StepperItem2: UILabel!
    
    @IBOutlet weak var StepperItem3: UILabel!
    
    @IBOutlet weak var StepperItem4: UILabel!
    
    @IBOutlet weak var StepperItem5: UILabel!
    
    @IBOutlet weak var Item1: UITextField!
    
    @IBOutlet weak var Item2: UITextField!
    
    @IBOutlet weak var Item3: UITextField!
    
    @IBOutlet weak var Item4: UITextField!
    
    @IBOutlet weak var Item5: UITextField!
    
    //Horizontal View Variables//
    
    @IBOutlet weak var horizontalName: UITextField!
    
    @IBOutlet weak var HorizontalStepperItem1: UILabel!
    
    @IBOutlet weak var HorizontalStepperItem2: UILabel!
    
    @IBOutlet weak var HorizontalStepperItem3: UILabel!
    
    @IBOutlet weak var HorizontalStepperItem4: UILabel!
    
    @IBOutlet weak var HorizontalStepperItem5: UILabel!
    
    @IBOutlet weak var hItem1: UITextField!
    
    @IBOutlet weak var hItem2: UITextField!
    
    @IBOutlet weak var hItem3: UITextField!
    
    @IBOutlet weak var hItem4: UITextField!
    
    @IBOutlet weak var hItem5: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ListName.text = String("my shopping list")
        horizontalName.text = String("my shopping list")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepper1(_ sender: UIStepper) {
        StepperItem1.text = String(Int(sender.value))
    }
    
    @IBAction func stepper2(_ sender: UIStepper) {
        StepperItem2.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepper3(_ sender: UIStepper) {
        StepperItem3.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepper4(_ sender: UIStepper) {
        StepperItem4.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepper5(_ sender: UIStepper) {
        StepperItem5.text = String(Int(sender.value))
    }
    
    //Horizontal Steppers
    
    @IBAction func hStepper1(_ sender: UIStepper) {
        HorizontalStepperItem1.text = String(Int(sender.value))
    }
    
    @IBAction func hStepper2(_ sender: UIStepper) {
        HorizontalStepperItem2.text = String(Int(sender.value))
    }
    
    @IBAction func hStepper3(_ sender: UIStepper) {
        HorizontalStepperItem3.text = String(Int(sender.value))
    }
    
    @IBAction func hStepper4(_ sender: UIStepper) {
        HorizontalStepperItem4.text = String(Int(sender.value))
    }
    
    @IBAction func hStepper5(_ sender: UIStepper) {
        HorizontalStepperItem5.text = String(Int(sender.value))
    }
    
    
    @IBAction func CancelButton(_ sender: UIButton) {
        reset()
        self.ListName.text = ""
        self.Item1.text = ""
        self.Item2.text = ""
        self.Item3.text = ""
        self.Item4.text = ""
        self.Item5.text = ""
        self.StepperItem1.text = "0"
        self.StepperItem2.text = "0"
        self.StepperItem3.text = "0"
        self.StepperItem4.text = "0"
        self.StepperItem5.text = "0"
        
    }
    
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var stepper4: UIStepper!
    @IBOutlet weak var stepper5: UIStepper!
    @IBOutlet weak var hstepper1: UIStepper!
    @IBOutlet weak var hstepper2: UIStepper!
    @IBOutlet weak var hstepper3: UIStepper!
    @IBOutlet weak var hstepper4: UIStepper!
    @IBOutlet weak var hstepper5: UIStepper!
    
    
    
    
    func reset() {
        stepper1.value = 0
        stepper2.value = 0
        stepper3.value = 0
        stepper4.value = 0
        stepper5.value = 0
    }
    func hreset() {
        hstepper1.value = 0
        hstepper2.value = 0
        hstepper3.value = 0
        hstepper4.value = 0
        hstepper5.value = 0
    }


    
    //Horizontal Cancel Button
    
    @IBAction func hCancelButton(_ sender: UIButton) {
        hreset()
        self.horizontalName.text = ""
        self.hItem1.text = ""
        self.hItem2.text = ""
        self.hItem3.text = ""
        self.hItem4.text = ""
        self.hItem5.text = ""
        self.HorizontalStepperItem1.text = "0"
        self.HorizontalStepperItem2.text = "0"
        self.HorizontalStepperItem3.text = "0"
        self.HorizontalStepperItem4.text = "0"
        self.HorizontalStepperItem5.text = "0"
    }
    
    @IBAction func SaveButton(_ sender: UIButton)
    {
        if let text = ListName.text, text.isEmpty {
            print("List is empty")
        }
        else {
            print(self.ListName.text!)
            if let text = Item1.text, text.isEmpty {
                print("Enter Item")
            }
            else
            {
                print("\(self.Item1.text!) = \(self.StepperItem1.text!)")
                if let text = Item2.text, text.isEmpty {
                }
                else
                {
                    print("\(self.Item2.text!) = \(self.StepperItem2.text!)")
                    if let text = Item3.text, text.isEmpty
                    {
                    }
                    else
                    {
                        print("\(self.Item3.text!) = \(self.StepperItem3.text!)")
                        if let text = Item4.text, text.isEmpty {
                        }
                        else
                        {
                            print("\(self.Item4.text!) = \(self.StepperItem4.text!)")
                            if let text = Item5.text, text.isEmpty {
                            }
                            else
                            {
                                print("\(self.Item5.text!) = \(self.StepperItem5.text!)")
                            }
                        }
                    }
                }
            }
        }
    }
    
    //Horizontal Save Button
    
    @IBAction func hSaveButton(_ sender: UIButton)
    {
        if let text = horizontalName.text, text.isEmpty
        {
            print("List is empty")
        }
        else
        {
            print(self.horizontalName.text!)
            if let text = hItem1.text, text.isEmpty
            {
                print("Enter Item")
            }
            else
            {
                print("\(self.hItem1.text!) = \(self.HorizontalStepperItem1.text!)")
                if let text = hItem2.text, text.isEmpty {
                }
                else
                {
                    print("\(self.hItem2.text!) = \(self.HorizontalStepperItem2.text!)")
                    if let text = hItem3.text, text.isEmpty
                    {
                    }
                    else
                    {
                        print("\(self.hItem3.text!) = \(self.HorizontalStepperItem3.text!)")
                        if let text = hItem4.text, text.isEmpty {
                        }
                        else
                        {
                            print("\(self.hItem4.text!) = \(self.HorizontalStepperItem4.text!)")
                            if let text = hItem5.text, text.isEmpty {
                            }
                            else
                            {
                                print("\(self.hItem5.text!) = \(self.HorizontalStepperItem5.text!)")
                            }
                        }
                    }
                }
            }
        }
        
    }
}
