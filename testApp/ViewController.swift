import UIKit

/**
 サンプル提示用のコントローラー
 
 - Authors:  Hoge
 - Date:  2019/07/01
 - Copyright:  © 2019年 NTT Com Slutions co ltd. All rights reserved.
 - Version: 1.0.0
 - Note: まずは書いてみた
 
 */
class ViewController: UIViewController {

    
    //------------------------------
    // MARK: オブジェクトの宣言
    //------------------------------
    
    /// 文字の入力用
    @IBOutlet weak var testTextField: UITextField!
    /// 文字の表示用
    @IBOutlet weak var testLabel: UILabel!
    /// アクションボタン
    @IBOutlet weak var testGetButton: UIButton!
    /// 年の表示用
    @IBOutlet weak var txtYear: UITextField!
    /// 月の表示用
    @IBOutlet weak var txtMonth: UITextField!
    /// 日の表示用
    @IBOutlet weak var txtDay: UITextField!
    /// 時の表示用
    @IBOutlet weak var txtHour: UITextField!
    /// 分の表示用
    @IBOutlet weak var txtMinute: UITextField!
    /// 秒の表示用
    @IBOutlet weak var txtSecond: UITextField!
    /// 曜日の表示用
    @IBOutlet weak var txtWeekday: UITextField!
    
    
    //------------------------------
    // MARK: 関数
    //------------------------------

    /**
     * ViewControllerの生成時に呼び出される。
     * 時計表示の初期化、自動更新関数の呼び出し。
     *
     * - parameter Nothing
     * - returns: Nothing
     * - throws: Nothing
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// testLabelの初期値をセット
        testLabel.text="テキストボックスに文字を入れてGET"
        
        // 表示の初期化関数呼び出し
        viewInit()
        
        // 時計表示の更新開始
        timerFiring()

        
    }

    /**
     * 文字入力パッドを閉じるための関数
     * Enterキーで閉じる
     *
     * - parameter value1: Any
     * - returns: Nothing
     * - throws: Nothing
     */
    @IBAction func inputText(_ sender: Any) {
    }
    
    
    /**
     * Getボタン押下時の関数
     * テキストボックスの内容をラベルにコピーする
     *
     * - parameter value1: Any
     * - returns: Nothing
     * - throws: Nothing
     */
    @IBAction func pushButton(_ sender: Any) {
        
        // テキストフィールドの値を、テキストラベルにコピー
        testLabel.text = testTextField.text!
        
    }
    
    /**
     * 時計自動更新の関数
     *
     *
     * - parameter Nothing
     * - returns: Nothing
     * - throws: Nothing
     */
    func timerFiring() {
        
        // 時計初期化
        let timer = Timer(timeInterval: 1,
                          target: self,
                          selector: #selector(timeCheck),
                          userInfo: nil,
                          repeats: true)
        
        // 自動更新するようにループ処理
        RunLoop.main.add(timer, forMode: .default)
    }

    
     /**
      * Getボタン押下時の関数
      * テキストボックスの内容をラベルにコピーする
      *
      * - parameter value1: Any
      * - returns: Nothing
      * - throws: Nothing
      */
    @objc func timeCheck() {
        
        //------------------------------
        // MARK: 変数宣言
        //------------------------------
        // 時計オブジェクト
        let date = NSDate()
        // カレンダーオブジェクト
        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        // 曜日の表示用文字列を入れた配列
        let arrWeekday: Array = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        // 年の部分
        let year = calendar?.component(.year, from: date as Date)
        // 月の部分
        let month = calendar?.component(.month, from: date as Date)
        // 日の部分
        let day = calendar?.component(.day, from: date as Date)
        // 時の部分
        let hour = calendar?.component(.hour, from: date as Date)
        // 分の部分
        let minute = calendar?.component(.minute, from: date as Date)
        // 秒の部分
        let second = calendar?.component(.second, from: date as Date)
        // 曜日を表す数値
        let weekday = calendar?.component(.weekday, from: date as Date)
        // 曜日を表す文字列を配列から取得して格納
        let dayOfTheWeek = arrWeekday[weekday! - 1]

        // 年を表示するオブジェクトに、年の値を代入
        txtYear.text = String(year!)
        editTextField(textField: txtYear, size: 50.0, color: .black)
        
        // 月を表示するオブジェクトに、月の値を代入
        txtMonth.text = String(format: "%02d", month!)
        editTextField(textField: txtMonth, size: 25.0, color: .black)
        
        // 日を表示するオブジェクトに、日の値を代入
        txtDay.text = String(format: "%02d", day!)
        editTextField(textField: txtDay, size: 25.0, color: .black)
        
        // 時を表示するオブジェクトに、時の値を代入
        txtHour.text = String(format: "%02d", hour!)
        editTextField(textField: txtHour, size: 25.0, color: .black)
        
        // 分を表示するオブジェクトに、分の値を代入
        txtMinute.text = String(format: "%02d", minute!)
        editTextField(textField: txtMinute, size: 25.0, color: .black)
        
        // 秒を表示するオブジェクトに、秒の値を代入
        txtSecond.text = String(format: "%02d", second!)
        editTextField(textField: txtSecond, size: 25.0, color: .black)
        
        // 曜日を表示するオブジェクトに、曜日の文字列を代入
        txtWeekday.text = String(dayOfTheWeek)
        editTextField(textField: txtWeekday, size: 50.0, color: .black)
    }

    /**
     * テキストボックスを編集する際に呼ばれる関数
     *
     * - parameter textField:UITextField
     * - parameter size:CGFloat
     * - parameter color:UIColor
     * - returns: Nothing
     * - throws: Nothing
     */
    func editTextField(textField:UITextField, size:CGFloat, color:UIColor) {
        
        // テキストフィールドの見た目を変更
        textField.font = UIFont.boldSystemFont(ofSize: size)
        textField.textColor = color
        textField.isEnabled = false
    }

    /**
     * 表示の初期化をする関数
     *
     * - parameter Noting
     * - returns: Nothing
     * - throws: Nothing
     */
    func viewInit() {
        // 特に何もすることがないのでコメント化
        // 下行のコメントアウトを外すと、画面背景が黒になる
        //view.backgroundColor = UIColor.black
    }
    
    
}

