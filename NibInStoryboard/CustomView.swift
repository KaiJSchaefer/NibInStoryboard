//
//  CustomView.swift
//  NibInStoryboard
//
//  Created by Kai Schäfer on 31.05.17.
//  Copyright © 2017 KaiSchaefer. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {

  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var switchX: UISwitch!
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }
  
  
  
  func setup() {
    guard let view = loadViewFromNib() else { return }
    view.frame = bounds
    addSubview(view)
    
  }
  
  
  
  func loadViewFromNib() -> UIView! {
    let bundle = Bundle(for: type(of: self))
    let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
    let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
    
    return view
  }

}
