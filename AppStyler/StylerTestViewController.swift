//
//  StylerTestViewController.swift
//  AppStyler
//
//  Created by Milo on 19/02/2019.
//  Copyright © 2019 Milo. All rights reserved.
//

import UIKit

class StylerTestViewController: UIViewController {
    
    @IBOutlet weak var primary1: UIView!
    @IBOutlet weak var primary2: UIView!
    @IBOutlet weak var darkest: UIView!
    @IBOutlet weak var darker: UIView!
    @IBOutlet weak var light: UIView!
    
    @IBOutlet weak var watermelon: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var fadedRed: UIView!
    @IBOutlet weak var green: UIView!
    
    @IBOutlet weak var black80: UIView!
    @IBOutlet weak var black60: UIView!
    @IBOutlet weak var black40: UIView!
    @IBOutlet weak var black20: UIView!
    @IBOutlet weak var black10: UIView!
    @IBOutlet weak var black04: UIView!
    
    @IBOutlet weak var black: UIView!
    @IBOutlet weak var white: UIView!
    @IBOutlet weak var brownGray: UIView!
    
    @IBOutlet weak var primary1Label: UILabel!
    @IBOutlet weak var primary2Label: UILabel!
    @IBOutlet weak var darkestLabel: UILabel!
    @IBOutlet weak var darkerLabel: UILabel!
    @IBOutlet weak var lightLabel: UILabel!
    @IBOutlet weak var otherColorsLabel: UILabel!
    @IBOutlet weak var blacksLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Backgrounds
        primary1.backgroundColor = AppStyle.default.colors.primary1
        primary2.backgroundColor = AppStyle.default.colors.primary2
        darkest.backgroundColor = AppStyle.default.colors.darkest
        darker.backgroundColor = AppStyle.default.colors.darker
        light.backgroundColor = AppStyle.default.colors.light
        watermelon.backgroundColor = AppStyle.default.colors.watermelon
        yellow.backgroundColor = AppStyle.default.colors.yellow
        fadedRed.backgroundColor = AppStyle.default.colors.fadedRed
        green.backgroundColor = AppStyle.default.colors.green
        black.backgroundColor = AppStyle.default.colors.black
        black04.backgroundColor = AppStyle.default.colors.black04
        black10.backgroundColor = AppStyle.default.colors.black10
        black20.backgroundColor = AppStyle.default.colors.black20
        black40.backgroundColor = AppStyle.default.colors.black40
        black60.backgroundColor = AppStyle.default.colors.black60
        black80.backgroundColor = AppStyle.default.colors.black80
        brownGray.backgroundColor = AppStyle.default.colors.brownGray
        white.backgroundColor = AppStyle.default.colors.white
        
        //Fonts
        primary1Label.font = AppStyle.default.fonts.heavy.withSize(26)
        primary2Label.font = AppStyle.default.fonts.heavy.withSize(20)
        darkestLabel.font = AppStyle.default.fonts.bold.withSize(18)
        darkerLabel.font = AppStyle.default.fonts.regular.withSize(16)
        lightLabel.font = AppStyle.default.fonts.light.withSize(14)
    }



}

