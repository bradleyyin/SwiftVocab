//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Bradley Yin on 7/15/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {
    var cellColor: MyColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
        

        // Do any additional setup after loading the view.
    }
    func updateView(){
        if let cellColor = cellColor{
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
        
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
