//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Tatsunori Watabe on 2017/04/24.
//  Copyright © 2017年 konsukeyama. All rights reserved.
//

import UIKit

// デリゲート（UITextFieldDelegate）の採用を宣言する
class ViewController: UIViewController, UITextFieldDelegate {

    // ラベルを接続
    @IBOutlet weak var readText: UILabel!

    // テキストフィールドを接続
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // myTextFieldのデリゲートになる
        myTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerのプロパティ（name）に代入して渡す
        resultViewController.name = myTextField.text!
        
    }

    /* こっちはうまく動かなかった...汗
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // テキストフィールド内容変更時に呼ばれる
        let tmpStr = textField.text! as NSString
        let replacedString = tmpStr.replacingCharacters(in: range, with: string)
        return true
    }
    */
    func textFieldDidEndEditing(_ textField: UITextField) {
        // テキストフィールドの入力完了後に呼ばれる
        readText.text = "[確認する] をタップしてください。"
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        // 他の画面から segue で戻ったときに呼ばれる
        readText.text = "ありがとうございました。"
    }
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        // 画面タップでキーボードを下げる
        view.endEditing(true)
    }


}

