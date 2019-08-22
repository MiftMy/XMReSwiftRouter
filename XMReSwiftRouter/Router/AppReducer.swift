//
//  AppReducer.swift
//  XMReSwift
//
//  Created by 梁小迷 on 20/8/19.
//  Copyright © 2019年 Mifit. All rights reserved.
//

import ReSwift
import ReSwiftRouter

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        navState: NavigationReducer.handleAction(action, state: state?.navState)
    )
}
