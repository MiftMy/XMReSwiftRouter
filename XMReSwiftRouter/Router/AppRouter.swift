//
//  AppRouter.swift
//  XMReSwift
//
//  Created by 梁小迷 on 20/8/19.
//  Copyright © 2019年 Mifit. All rights reserved.
//

import ReSwiftRouter
import ReSwift

var appRouter: Router<AppState>!
var appStore: Store<AppState> = Store<AppState>(reducer: appReducer, state: nil)

// 需要把所有要跳转的界面写进来
struct RouteNames {
    static let message = "Message"
    static let home = "Home"
    static let my = "My"
}
