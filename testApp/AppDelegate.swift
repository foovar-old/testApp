import UIKit

/**
タグのサンプル

- Attention: 注意書き
- Authors: 作成者
- Bug: バグの詳細
- Copyright: 著作権の所在
- Date: 日付(作成日, 更新日など)
- Experiment: 実験内容
- Important: 重要事項
- Invariant: 不変事項
- Note: その他、必要事項
- Precondition: 事前条件
- Postcondition: 事後条件
- Remark: 備考
- Requires: 要求事項
- SeeAlso: 参照事項
- Since: いつから実装されているか
- Version: バージョン
- Warning: 警告

*/


@UIApplicationMain



class AppDelegate: UIResponder, UIApplicationDelegate {

    
    //------------------------------
    // MARK: - 罫線付きのセクション見出し
    //------------------------------
    
    /// Description: application
    /// - Parameters:
    ///   - application: <#application description#>
    ///   - launchOptions: <#launchOptions description#>
    /// - Returns: <#description#>
     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    
    
    //------------------------------
    // TODO: 「後で○○しなければならない」の意味
    //------------------------------
    
    /// <#Description#>
    /// - Parameters:
    ///   - application: <#application description#>
    ///   - connectingSceneSession: <#connectingSceneSession description#>
    ///   - options: <#options description#>
    /// - Returns: <#description#>
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    
    
    //------------------------------
    // FIXME: 「○○を修正する必要がある」の意味
    //------------------------------
   
    /// <#Description#>
    /// - Parameters:
    ///   - application: <#application description#>
    ///   - sceneSessions: <#sceneSessions description#>
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

