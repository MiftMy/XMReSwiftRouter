//
//  HomeVC.swift
//  XMReSwift
//
//  Created by 梁小迷 on 20/8/19.
//  Copyright © 2019年 Mifit. All rights reserved.
//

import ReSwift
import ReSwiftRouter

class HomeVC: UIViewController, Routable {
    
    var partVal: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "我的", style: .plain, target: self, action: #selector(self.navToMy(sender:)))
    }
    
    @objc func navToMy(sender: AnyObject) {
        
//        appStore.dispatch(SetRouteSpecificData(route: [RouteNames.my], data: "我传的数据"))
        
        // 如果需要传参，使用MyStore调用响应的Action
//        MyStore.dispatch(<#T##action: Action##Action#>)
        appStore.dispatch(SetRouteAction([RouteNames.my]))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HomeStore.subscribe(self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
        HomeStore.unsubscribe(self)
    }
}

extension HomeVC: StoreSubscriber {
    
    func newState(state: HomeState) {
        //        let val = state.navState.routeSpecificState.first?.value as! String
        //        print("收到的参数："+val)
        //        self.title = val
    }
}
