import UIKit

class SignUpViewController: UIViewController{

    let validation = Validation()
    
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnShowPassword(_ sender: Any) {
        txtPassword.isSecureTextEntry = !txtPassword.isSecureTextEntry
        txtConfirmPassword.isSecureTextEntry = !txtConfirmPassword.isSecureTextEntry
    }
    // arrumar segue
    
    @IBAction func btnSignUpTapped(_ sender: Any) {
        
        let email = txtEmail.text ?? ""
        let fullName = txtFullName.text ?? ""
        let password = txtPassword.text ?? ""
        let confirmPassword = txtConfirmPassword.text ?? ""
        
        let newUser = User(fullName: txtFullName.text!.lowercased(), email: txtEmail.text!.lowercased(), password: txtPassword.text!)
        
        if validation.isValidEmail(email: email) &&
                   validation.isValidFullName(name: fullName) &&
                   validation.doPasswordsMatch(password: password, confirmPassword: confirmPassword) {
            performSegue(withIdentifier: Segue.signUpToMainViewController, sender: self)
        } else {
            var errorMessage = ""

            if !validation.isValidEmail(email: email) {
                errorMessage += "Invalid email address.\n"
            }
            if !validation.isValidFullName(name: fullName) {
                errorMessage += "Invalid full name.\n"
            }
            if !validation.doPasswordsMatch(password: password, confirmPassword: confirmPassword) {
                errorMessage += "Passwords do not match."
            }
            
            // Controle de qualidade
            print(newUser)

            showAlertDialog(message: errorMessage)
        }
    }
    
    private func showAlertDialog(message: String) {
            let alert = UIAlertController(title: "Validation Error", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btnBackToMain(_ sender: Any) {
        performSegue(withIdentifier: Segue.signUpToMainViewController, sender: self)
    }
    
}
