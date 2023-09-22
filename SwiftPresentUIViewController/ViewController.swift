//
//  ViewController.swift
//  SwiftPresentUIViewController
//
//  Created by Dev on 22/9/2566 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var overCurrentContext: UIButton!
    
    @IBOutlet weak var overFullScr: UIButton!
    
    @IBOutlet weak var popOver: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overCurrentContext.addTarget(self, action: #selector(actionOverCurrentContext), for: .touchUpInside)
        overFullScr.addTarget(self, action: #selector(actionoverFullScr), for: .touchUpInside)
            }
    
    @objc func actionOverCurrentContext(){
        let vc = PresentVC()
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true)
    }
    
    @objc func actionoverFullScr(){
        let vc = PresentVC()
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
    
    @IBAction func showPopover(_ sender: UIButton) {
        let popoverContent = PopoverViewController(infoText: "Username must be between 3-20 and can only consist of alphanumeric characters.")
        presentPopover(self, popoverContent, sender: popOver, size: CGSize(width: 315, height: 120), arrowDirection: .down)
    }
}


