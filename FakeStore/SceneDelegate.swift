//
//  SceneDelegate.swift
//  FakeStore
//
//  Created by Кирилл Курочкин on 06.06.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
              window = UIWindow(windowScene: windowScene)
        let appsVC = AppsViewController()
        let arcadeVC = ArcadeViewController()
        let gamesVC = GamesViewController()
        let searchVC = SearchViewController()
        
        
        let appsNC = UINavigationController(rootViewController: appsVC)
        let arcadeNC = UINavigationController(rootViewController: arcadeVC)
        let gamesNC = UINavigationController(rootViewController: gamesVC)
        let searchNC = UINavigationController(rootViewController: searchVC)
        
        let tabBarController = UITabBarController()
        tabBarController.tabBar.backgroundColor = UIColor(named: "TabbackgroundColor")
        tabBarController.viewControllers = [appsNC, arcadeNC, gamesNC, searchNC]
        
        appsNC.tabBarItem = UITabBarItem(title: "App", image: UIImage(systemName: "square.stack.3d.up.fill"), tag: 0)
        gamesVC.tabBarItem = UITabBarItem(title: "Arcade", image: UIImage(systemName: "gamecontroller"), tag: 1)
        arcadeNC.tabBarItem = UITabBarItem(title: "Games", image: UIImage(systemName: "arcade.stick.console"), tag: 2)
        searchNC.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 3)
    
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

