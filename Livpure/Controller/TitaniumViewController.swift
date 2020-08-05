//
//  TitaniumViewController.swift
//  Livpure
//
//  Created by Madhavan on 04/08/20.
//  Copyright © 2020 myApp. All rights reserved.
//

import UIKit

class TitaniumViewController: UIViewController {
    
    @IBOutlet weak var btn_Subscribe: UIButton!
    @IBOutlet weak var vw_Price: UIView!
    @IBOutlet weak var vw_semiY: UIView!
    @IBOutlet weak var vw_Yearly: UIView!
    @IBOutlet weak var vw_Monthly: UIView!
    @IBOutlet weak var planVw: UIView!
    var mainVW = UIView()
    var bck_vw = UIView()
    var logo = UIImageView()
    var planTitle = "Titanium"
    var planDuration = "12 Months"
    var PlanAmt = "\(575*12)"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
        let gesture1 = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
        let gesture2 = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
        
        vw_Price.layer.cornerRadius = vw_Price.frame.size.height/2
        vw_Price.clipsToBounds = true
        vw_Yearly.addGestureRecognizer(gesture)
        vw_semiY.addGestureRecognizer(gesture1)
        vw_Monthly.addGestureRecognizer(gesture2)
        
        vw_Yearly.layer.borderWidth = 3.0
        vw_Yearly.layer.borderColor = UIColor(red: 78/255, green: 25/255, blue: 144/255, alpha: 1).cgColor
        
        vw_semiY.layer.borderWidth = 3.0
        vw_semiY.layer.borderColor = UIColor.clear.cgColor
        
        vw_Monthly.layer.borderWidth = 3.0
        vw_Monthly.layer.borderColor = UIColor.clear.cgColor
    }
    
    
    
    @objc func checkAction(_ sender : UITapGestureRecognizer) {
        let tap_vw = sender.view
        
        if tap_vw == vw_Yearly {
            
            vw_Yearly.layer.borderColor = UIColor(red: 78/255, green: 25/255, blue: 144/255, alpha: 1).cgColor
            vw_semiY.layer.borderColor = UIColor.clear.cgColor
            vw_Monthly.layer.borderColor = UIColor.clear.cgColor
            
            planDuration = "12 Months"
            PlanAmt = "\(575*12)"
        } else if tap_vw == vw_semiY {
            
            vw_Yearly.layer.borderColor = UIColor.clear.cgColor
            vw_semiY.layer.borderColor = UIColor(red: 78/255, green: 25/255, blue: 144/255, alpha: 1).cgColor
            vw_Monthly.layer.borderColor = UIColor.clear.cgColor
            
            planDuration = "6 Months"
            PlanAmt = "\(600*6)"
        }else if tap_vw == vw_Monthly {
            
            vw_Yearly.layer.borderColor = UIColor.clear.cgColor
            vw_semiY.layer.borderColor = UIColor.clear.cgColor
            vw_Monthly.layer.borderColor = UIColor(red: 78/255, green: 25/255, blue: 144/255, alpha: 1).cgColor
            planDuration = "1 Month"
            PlanAmt = "625"
        }
        
    }
    
    @IBAction func didTapSubs(_ sender: Any) {
        
        mainVW = UIView.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        mainVW.backgroundColor = UIColor .white.withAlphaComponent(0.5)
        view.addSubview(mainVW)
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.closeAction))
        mainVW.addGestureRecognizer(gesture)
        
        bck_vw = UIView.init(frame: CGRect(x: 10, y: 40, width: UIScreen.main.bounds.width-20, height: 300))
        bck_vw.backgroundColor = .white
        view.addSubview(bck_vw)
        
        let lbl_Head = UILabel.init(frame: CGRect(x: 0, y: 0, width: bck_vw.frame.size.width, height: 50))
        lbl_Head.text = "Plan Confirmation"
        lbl_Head.textAlignment = NSTextAlignment.center
        lbl_Head.backgroundColor = UIColor(red: 76/255, green: 25/255, blue: 146/255, alpha: 1)
        lbl_Head.textColor = .white
        bck_vw.addSubview(lbl_Head)
        
        let lbl_plan = UILabel.init(frame: CGRect(x: 0, y: lbl_Head.frame.origin.y+lbl_Head.frame.size.height, width: bck_vw.frame.size.width/2, height: 50))
        lbl_plan.text = "Plan Name"
        lbl_plan.textAlignment = NSTextAlignment.center
        bck_vw.addSubview(lbl_plan)
        
        let lbl_planT = UILabel.init(frame: CGRect(x: bck_vw.frame.size.width/2, y: lbl_Head.frame.origin.y+lbl_Head.frame.size.height, width: bck_vw.frame.size.width/2, height: 50))
        lbl_planT.text = planTitle
        lbl_planT.textAlignment = NSTextAlignment.center
        lbl_planT.font = UIFont(name: "Menlo-Bold", size: 17)
        bck_vw.addSubview(lbl_planT)
        
        let lbl_planDur = UILabel.init(frame: CGRect(x: 0, y: lbl_plan.frame.origin.y+lbl_plan.frame.size.height, width: bck_vw.frame.size.width/2, height: 50))
        lbl_planDur.text = "Plan Duration"
        lbl_planDur.textAlignment = NSTextAlignment.center
        bck_vw.addSubview(lbl_planDur)
        
        let lbl_planDurT = UILabel.init(frame: CGRect(x: bck_vw.frame.size.width/2, y: lbl_plan.frame.origin.y+lbl_plan.frame.size.height, width: bck_vw.frame.size.width/2, height: 50))
        lbl_planDurT.text = planDuration
        lbl_planDurT.textAlignment = NSTextAlignment.center
        lbl_planDurT.font = UIFont(name: "Menlo-Bold", size: 17)
        bck_vw.addSubview(lbl_planDurT)
        
        let lbl_planamt = UILabel.init(frame: CGRect(x: 0, y: lbl_planDur.frame.origin.y+lbl_planDur.frame.size.height, width: bck_vw.frame.size.width/2, height: 50))
        lbl_planamt.text = "Plan Amount"
        lbl_planamt.textAlignment = NSTextAlignment.center
        bck_vw.addSubview(lbl_planamt)
        
        let lbl_planamtT = UILabel.init(frame: CGRect(x: bck_vw.frame.size.width/2, y: lbl_planDur.frame.origin.y+lbl_planDur.frame.size.height, width: bck_vw.frame.size.width/2, height: 50))
        lbl_planamtT.text = "Rs. \(PlanAmt)"
        lbl_planamtT.textAlignment = NSTextAlignment.center
        lbl_planamtT.font = UIFont(name: "Menlo-Bold", size: 17)
        bck_vw.addSubview(lbl_planamtT)
        
        let btn_Pay = UIButton.init(frame: CGRect(x: bck_vw.frame.size.width/4, y: lbl_planamtT.frame.origin.y+lbl_planamtT.frame.size.height + 20, width: bck_vw.frame.size.width/2, height: 50))
        btn_Pay.backgroundColor = UIColor(red: 255/255, green: 105/255, blue: 0, alpha: 1)
        btn_Pay.layer.cornerRadius = 5;
        btn_Pay.clipsToBounds = true
        btn_Pay .setTitle("Pay", for: .normal)
        btn_Pay.titleLabel?.font = UIFont(name: "Menlo-Bold", size: 17)
        btn_Pay.addTarget(self, action: #selector(self.didtapPay), for: .touchUpInside)
        bck_vw.addSubview(btn_Pay)
        
    }
    @objc func closeAction(_ sender : UITapGestureRecognizer) {
        mainVW.isHidden = true
        bck_vw.isHidden = true
    }
    
    @objc func didtapPay(){
        let alert = UIAlertController(title: "Payment Success!", message: "Your Livpure Smart - \(planTitle) plan for \(planDuration) has been activated!!!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { action in
            self.mainVW.isHidden = true
            self.bck_vw.isHidden = true
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
