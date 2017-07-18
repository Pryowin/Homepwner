//
//  DateCreatedController.swift
//  Homepwner
//
//  Created by David Burke on 7/17/17.
//  Copyright © 2017 amberfire. All rights reserved.
//

import UIKit

class DateCreatedController: UIViewController {
    
    var item: Item!
    
    @IBOutlet var dateCreatedPicker: UIDatePicker!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dateCreatedPicker.date = item.dateCreated
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        item.dateCreated = dateCreatedPicker.date
        
    }
}
