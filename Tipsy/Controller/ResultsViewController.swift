//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by KimJongHee on 2022/04/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var totalLabel: UILabel!
    // 토탈 금액
    @IBOutlet weak var settingLabel: UILabel!
    // 설정 텍스트
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // 다시 계산 버튼
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
