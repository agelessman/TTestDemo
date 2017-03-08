//
//  ViewController.swift
//  TTestDemo
//
//  Created by M.C on 17/3/8.
//  Copyright © 2017年 M.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let request = TestRequest(name: "mama", userId: "12345");
        AlamofireClient.default.send(request) { (response, error) in
            print(response)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cellAction(_ sender: Any) {
        
        let viewController = ConfigurableTableViewController(items: [
            CellConfigurator<TextTableViewCell>(viewData: TextCellViewData(title: "Foo")),
            CellConfigurator<ImageTableViewCell>(viewData: ImageCellViewData(image: UIImage(named: "og")!)),
            CellConfigurator<ImageTableViewCell>(viewData: ImageCellViewData(image: UIImage(named: "GoogleLogo")!)),
            CellConfigurator<TextTableViewCell>(viewData: TextCellViewData(title: "Bar")),
            ])
        
        self.present(viewController, animated: true, completion: nil)
    }

}

