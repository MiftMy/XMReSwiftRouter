//
//  MyVC.swift
//  XMReSwift
//
//  Created by 梁小迷 on 20/8/19.
//  Copyright © 2019年 Mifit. All rights reserved.
//

import ReSwift
import ReSwiftRouter

class MyVC: UIViewController {
//    var info: String
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.blue
    }
    
    override func viewWillAppear(_ animated: Bool) {
         MyStore.subscribe(self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        MyStore.unsubscribe(self)
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

extension MyVC: StoreSubscriber {
    
    func newState(state: MyState) {
//        let val = state.navState.routeSpecificState.first?.value as! String
//        print("收到的参数："+val)
//        self.title = val
    }
}
