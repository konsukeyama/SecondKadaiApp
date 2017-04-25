//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by Tatsunori Watabe on 2017/04/24.
//  Copyright © 2017年 konsukeyama. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // 2画面目のラベル
    @IBOutlet weak var nameView: UILabel!
    
    // データ受け取り用のプロパティ（初期値省略だとエラー？）
    var name:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameView.text = "こんにちは、\(name) さん。"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
