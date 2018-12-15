//
//  ViewController.swift
//  orientation
//
//  Created by James Chun on 12/14/18.
//  Copyright © 2018 James Chun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var imageView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    
    let names: [String] = [
        "", // 0 unused
        "pic01", // 1 home button at bottom
        "pic02", // 2 home button at top
        "pic03", // 3 home button at right
        "pic04", // 4 home button at left
        "pic05", // 5 screen facing up
        "pic06", // 6 screen facing down
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
//        imageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height))
        
        imageView.contentMode = .scaleAspectFit
        
        NotificationCenter.default.addObserver(
            self, selector: #selector (orientationChanged), name: UIDevice.orientationDidChangeNotification, object: nil)
        
        self.view.addSubview(imageView)
        
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//
//        let leftConstraint = NSLayoutConstraint(item: imageView, attribute: .left, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: .left, multiplier: 1.0, constant: 0.0)
//        let rightConstraint = NSLayoutConstraint(item: imageView, attribute: .right, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: .right, multiplier: 1.0, constant: 0.0)
//        let topConstraint = NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 0.0)
//        let heightConstraint = NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: self.view.frame.height)
//
//        imageView.addConstraints([leftConstraint, rightConstraint, topConstraint, heightConstraint])

        }

    @objc func orientationChanged (_ notification: NSNotification) {
        imageView.image = UIImage(named: names[UIDevice.current.orientation.rawValue])
        print(UIDevice.current.orientation.rawValue)
    }

}

