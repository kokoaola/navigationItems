//
//  ViewController.swift
//  Project4
//
//  Created by koala panda on 2023/03/21.
//

import UIKit

///この行の完全な意味は、"ViewControllerというUIViewControllerの新しいサブクラスを作成し、WKNavigationDelegateとして使用しても問題ないことを約束するとコンパイラに伝えよ "ということです。
class ViewController: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "ナビゲーションバーの例"
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "別のページへ", style: .plain, target: self, action: #selector(pushDetailView))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: nil, action: #selector(aaa))
        
        ///下の配置
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        ///リロードボタンの配置
        ///nilビューのreload()メソッドを呼び出してる
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: nil, action: #selector(aaa))
        toolbarItems = [refresh, spacer, refresh]
        navigationController?.isToolbarHidden = false
        
        
        
        
    }
    
    
    
    
    @objc func aaa(){
        
    }
    
    
    @objc func pushDetailView(){
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
