//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Daria Salamakha on 07.02.2022.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var ShowLabel: UILabel!
    
    var eventNumber = 1
    
    func addEvent(from: String) {
        if let existingText = ShowLabel.text {
            ShowLabel.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
}
