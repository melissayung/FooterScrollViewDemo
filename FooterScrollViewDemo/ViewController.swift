//
//  ViewController.swift
//  FooterScrollViewDemo
//
//  Created by Melissa Yung on 11/09/16.
//  Copyright © 2016 MY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelDemoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDemoDescription.text = "This project demonstrates showing and hiding a bottom footer upon tap. \n\nThe footer is of a fixed height with a fixed header for the title and a scroll view to cater for the entire content. \n\nThe scroll view also only bounces when scrolling up."
        labelDemoDescription.sizeToFit()
    }
    
    @IBAction func tapDetected(sender: UITapGestureRecognizer) {
        let footerVC = storyboard?.instantiateViewControllerWithIdentifier("FooterVC") as! FooterVC
        footerVC.modalPresentationStyle = .OverFullScreen
        presentViewController(footerVC, animated: true, completion: nil)
    }
}

