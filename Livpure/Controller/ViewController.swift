//
//  ViewController.swift
//  Livpure
//
//  Created by Madhavan on 04/08/20.
//  Copyright © 2020 myApp. All rights reserved.
//

import UIKit
import PolioPager
class ViewController: PolioPagerViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.needSearchTab = false
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 52, height: 30))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "logo1")
        imageView.image = image
        navigationItem.titleView = imageView
        self.tabBackgroundColor = .black
        self.selectedBar.backgroundColor = .orange
        
        // Do any additional setup after loading the view.
    }
    
    override func tabItems()-> [TabItem] {
        return [TabItem(title: "Silver", normalColor: .white, highlightedColor: .orange), TabItem(title: "Gold", normalColor: .white, highlightedColor: .orange),TabItem(title: "Platinum", normalColor: .white, highlightedColor: .orange),TabItem(title: "Titanium", normalColor: .white, highlightedColor: .orange)]
    }
    
    override func viewControllers()-> [UIViewController]
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController1 = storyboard.instantiateViewController(withIdentifier: "SilverViewController")
        let viewController2 = storyboard.instantiateViewController(withIdentifier: "GoldViewController")
        let viewController3 = storyboard.instantiateViewController(withIdentifier: "PlatinumViewController")
        let viewController4 = storyboard.instantiateViewController(withIdentifier: "TitaniumViewController")
        
        return [viewController1, viewController2, viewController3, viewController4]
    }
}

