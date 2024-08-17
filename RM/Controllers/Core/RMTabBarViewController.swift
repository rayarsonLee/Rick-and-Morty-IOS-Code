//
//  ViewController.swift
//  RM
//
//  Created by ljx on 2024/8/17.
//

import UIKit

final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        setupTabs()
    }

    private func setupTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingVC = RMSettingViewController()
        
        let nav1 = {
            let nav = UINavigationController(rootViewController: characterVC)
            nav.tabBarItem = UITabBarItem(title: "character", image: UIImage(systemName: "person"), tag: 1)
            return nav
        }()
        
        let nav2 = {
            let nav = UINavigationController(rootViewController: locationVC)
            nav.tabBarItem = UITabBarItem(title: "location", image: UIImage(systemName: "globe"), tag: 2)
            return nav
        }()
        
        let nav3 = {
            let nav = UINavigationController(rootViewController: episodeVC)
            nav.tabBarItem = UITabBarItem(title: "episode", image: UIImage(systemName: "tv"), tag: 3)
            return nav
        }()
        
        let nav4 = {
            let nav = UINavigationController(rootViewController: settingVC)
            nav.tabBarItem = UITabBarItem(title: "setting", image: UIImage(systemName: "gear"), tag: 4)
            return nav
        }()
        
        let navs = [nav1, nav2, nav3, nav4]
        
        navs.forEach { nav in
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(navs, animated: true)
    }
}

