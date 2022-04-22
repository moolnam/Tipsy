//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    var isSelected: Bool = false
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var billTextFeild: UITextField!
    // 가격 텍스트
    @IBOutlet weak var zeroPctButton: UIButton!
    // 0%
    @IBOutlet weak var tenPctButton: UIButton!
    // 10%
    @IBOutlet weak var twentyPctButton: UIButton!
    // 20%
    @IBOutlet weak var splitNumberLabel: UILabel!
    // 나누기 텍스트
    
    @IBAction func tipChanged(_ sender: UIButton) {
        // 팁 체인지 버튼 연동
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        // 현재 버튼 위치에 있는 텍스트를 불러온다 옵셔널을 벗겨서
        print(buttonTitle)
        
        let buttonTitleMinusPercentSign = String(buttonTitle.dropLast())
        // 드롭 라스트가 아직 무슨 의미인지 모르겠다.
        print(buttonTitleMinusPercentSign)
        
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        // 스트링 타입을 더블 타입으로 바꾸고 옵셔널을 벗긴다.
        print(buttonTitleAsANumber)
        
        tip = buttonTitleAsANumber / 100
        // 100으로 나눠서 10프로 라면 0.1이 되게 만든다.
        print(tip)
        
        billTextFeild.endEditing(true)
        // 이것이 무엇인지 아직 모르겠다.
        
    }
    
    @IBAction func stepperValueChaged(_ sender: UIStepper) {
        // 스템퍼 업 다운 버튼
        let value = sender.value
        print(value)
        splitNumberLabel.text = String(Int(value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        // 계산 버튼
        let bill = billTextFeild.text!
        print(bill)
        
        if bill != "" {
            
            billTotal = Double(bill)!
            
            let result = billTotal * (1 + tip) / Double(numberOfPeople)

            let resultTo2DecimalPlaces = String(format: "%.2f", result)

        }
    }
    
    
    
}

