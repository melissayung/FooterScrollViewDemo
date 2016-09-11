//
//  FooterVC.swift
//  FooterScrollViewDemo
//
//  Created by Melissa Yung on 11/09/16.
//  Copyright © 2016 MY. All rights reserved.
//

import UIKit

extension FooterVC: UIScrollViewDelegate {
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // disable the bounce in the scroll view when scrolling up
        if scrollView.contentOffset.y < 0 {
            scrollView.contentOffset.y = 0
        }
    }
}

class FooterVC: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var labelDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelDescription.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis quis mauris in libero eleifend scelerisque. Nullam aliquet ultricies egestas. Donec lacinia sem ante, faucibus scelerisque metus semper at. Sed laoreet risus vitae tempus scelerisque. Sed vel congue lacus, tristique pretium neque. Curabitur lacinia condimentum tellus, ut euismod metus varius ut. Aliquam ante dui, congue sed consectetur id, posuere eu nulla. Proin ut diam a nunc faucibus imperdiet. Cras egestas dui eget eros ullamcorper, eget congue nunc dictum. Proin eget ipsum dolor. In a ligula facilisis, dictum magna faucibus, pellentesque diam."
        labelDescription.sizeToFit()
    }
    
    @IBAction func tapDetected(sender: UITapGestureRecognizer) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
