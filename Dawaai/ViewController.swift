//
//  ViewController.swift
//  Dawaai
//
//  Created by user1 on 07/12/23.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {

    
    @IBOutlet weak var pillStepperValue: UITextField!
    
    @IBOutlet weak var medName: UITextField!
    
    @IBOutlet weak var pillStepper: UIStepper!
    
    @IBOutlet weak var daysStepperValue: DesignableTextField!
    
    @IBOutlet weak var daysStepper: UIStepper!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var photo: UIImageView!
    
    
    
    @IBOutlet weak var sView: UITextView!
    let saView = UITextView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saView.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.25)
        saView.layer.shadowOffset = CGSize(width: 6.0, height: 6.0)
        saView.layer.shadowOpacity = 1.0
        saView.layer.shadowRadius = 2.0
        saView.layer.masksToBounds = false
        saView.layer.cornerRadius = 4.0
        
//        photo.roundedImage()
        
       }

    @IBAction func pillStepper(_ sender: Any) {
        pillStepperValue.text = "\(Int(pillStepper.value))"
    }
    
    @IBAction func daysStepper(_ sender: Any) {
        daysStepperValue.text = "\(Int(daysStepper.value))"
    }
    
    @IBAction func unKn(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.white ? UIColor.green : UIColor.white
    }
    
    @IBAction func duringBtn(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.white ? UIColor.green : UIColor.white
    }
    @IBAction func afterBtn(_ sender: UIButton) {
        sender.backgroundColor = sender.backgroundColor == UIColor.white ? UIColor.green : UIColor.white
    }
    
    @IBAction func medTouch(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Medicine", sender: nil)
       
//            hello.layer.shadowRadius = 5.0
    }
    
//FOR CLICKING PHOTO
    
    @IBAction func didTapButton(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
        
    }
    
    @IBAction func scannerBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "Scanner", sender: nil)
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//
//            super .viewWillAppear(true)
//
//
//            self.imageVIew.layer.cornerRadius = self.imageVIew.frame.size.width / 2
//
//            self.imageVIew.clipsToBounds = true
//
//            self.imageVIew.layer.borderColor = UIColor.white.cgColor
//
//            self.imageVIew.layer.borderWidth = 5
//
//                }
    
    
}
extension ViewController: UIImagePickerControllerDelegate, UINavigationBarDelegate{
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[UIImagePickerController.InfoKey.editedImage] as?
                UIImage else{ return}
        imageView.image = image
    }
}
//FOR PHOTO UP TO HERE

// Background color = FFEDE0

// SHADOW DO NOT DISTURB

import UIKit

@IBDesignable
class DesignableView: UIView {
}

@IBDesignable
class DesignableButton: UIButton {
}

@IBDesignable
class DesignableLabel: UILabel {
}

@IBDesignable
class DesignableTextView: UITextView{
    
}

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }

    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}
// START THE CODE

extension UIImageView {
    
    func roundedImage() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
    
}
