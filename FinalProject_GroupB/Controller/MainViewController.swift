import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    @IBAction func btnShowPassword(_ sender: Any) {
        txtPassword.isSecureTextEntry = !txtPassword.isSecureTextEntry
    }
    
    @IBAction func btnSignIn(_ sender: Any) {
        
        /*
        _ = txtEmail.text ?? ""
        _ = txtPassword.text ?? ""
         */
         
        /*
        let external_url_api = "nossaapi.endpoint.login"
        
        if external_url_api == 200{
            performSegue(withIdentifier: Segue.mainToTableViewController, sender: self)
        } else {
         saf
        }
        */
    }

}
