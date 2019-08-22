//
//  AppRoutable.swift
//  XMReSwift
//
//  Created by 梁小迷 on 20/8/19.
//  Copyright © 2019年 Mifit. All rights reserved.
//

import ReSwiftRouter

class MessageRoutable: Routable {}
class HomeRoutable: Routable {}
class MyRoutable: Routable {}

class AppRoutable: Routable {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func goToMessageVC() -> Routable {
        let nav = self.window.rootViewController as! UINavigationController
        nav.pushViewController(MessageVC(), animated: true)
        return MessageRoutable()
    }

    func goToHomeVC() -> Routable {
        let nav = self.window.rootViewController as! UINavigationController
        nav.pushViewController( HomeVC(), animated: true)
        return HomeRoutable()
    }
    
    func goToMyVC() -> Routable {
        let nav = self.window.rootViewController as! UINavigationController
        nav.pushViewController( MyVC(), animated: true)
        return MyRoutable()
    }
    
    // MARK: - Routable func 没参数？
    func changeRouteSegment(_ from: RouteElementIdentifier, to: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        if to == RouteNames.message {
            completionHandler()
            return goToMessageVC()
        } else if to == RouteNames.home {
            completionHandler()
            return goToHomeVC()
        } else if to == RouteNames.my {
            completionHandler()
            return goToMyVC()
        } else {
            fatalError("Route not supported！")
        }
    }
    
    func pushRouteSegment(_ routeElementIdentifier: RouteElementIdentifier, animated: Bool, completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        if routeElementIdentifier == RouteNames.message {
            completionHandler()
            return goToMessageVC()
        } else if routeElementIdentifier == RouteNames.home {
            completionHandler()
            return goToHomeVC()
        } else if routeElementIdentifier == RouteNames.my {
            completionHandler()
            return goToMyVC()
        } else {
            fatalError("Rout not supported!")
        }
    }
    

}
