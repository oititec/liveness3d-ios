//
//  ViewController.swift
//  sampleUsageLivenessSDK
//
//  Created by Leonardo Amaral Amaral on 28/06/22.
//

import UIKit
import FaceCaptcha

class ViewController: UIViewController {
    final var APP_KEY = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressedLiveness3D(_ sender: Any) {
        let vc = Liveness3DViewController(endpoint: "", liveness3DUser: Liveness3DUser(appKey: APP_KEY, environment: .HML), debugOn: true)
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.present(alert, animated: true, completion: nil)
        }
    }
}

extension ViewController: Liveness3DDelegate {
    func handleLiveness3DValidation(validateModel: Liveness3DSuccess) {
        self.showAlert(title: "Resultado Liveness3D", message: "VALID = \(String(describing: validateModel.valid)) - CAUSE = \(String(describing: validateModel.cause))")
    }
    
    func handleLiveness3DError(error: Liveness3DError) {
        self.showAlert(title: "Resultado Liveness3D", message:"\(error.errorCode) - \(error.errorMessage)")
    }
    
    func handleLiveness3DCanceled() {
        debugPrint("Cancelado")
    }
}

