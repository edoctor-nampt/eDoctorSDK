//
//  EClinic.swift
//  EDoctorEClinicSDK
//
//  Created by Nam Phan Thanh on 06/08/2022.
//

import Foundation
import SafariServices

public class EClinic {
    var brandColor: UIColor
    var textColor: UIColor
    
    public init(brandColor: UIColor? = UIColor(red: 239/255, green: 23/255, blue: 23/255, alpha: 1), textColor: UIColor? = .white){
        self.brandColor = brandColor ?? UIColor(red: 239/255, green: 23/255, blue: 23/255, alpha: 1)
        self.textColor = textColor ?? .white
    }
    public func openClinic(currentViewController: UIViewController) {
        if #available(iOS 14.3, *) {
            let webview = WebViewController(brandColor: self.brandColor, textColor: self.textColor)
            webview.modalPresentationStyle = .fullScreen
            currentViewController.present(webview, animated: true)
        } else {
            let safariViewController = SFSafariViewController(url: URL(string: "https://e-doctor.dev/pk/dai-ichi-life")!)
            safariViewController.preferredBarTintColor = brandColor
            safariViewController.preferredControlTintColor = textColor
            safariViewController.dismissButtonStyle = .close
            safariViewController.modalPresentationStyle = .fullScreen
            currentViewController.present(safariViewController, animated: true)
            
        }
        
    }
}
