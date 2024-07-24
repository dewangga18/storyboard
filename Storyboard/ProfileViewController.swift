import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var btnFollow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCircleImageView()
    }
    
    private var isFollow: Bool = false
    
    @IBAction func setFollow(_ sender: UIButton) {
        isFollow = !isFollow
        btnFollow.setTitle(isFollow ? "Following" : "Follow", for: .normal)
    }
    
    private func setupCircleImageView() {
        // Menentukan lebar dari border/garis batas
        profileImageView.layer.borderWidth = 1
         
        // Menentukan apakah perlu melakukan masking
        profileImageView.layer.masksToBounds = false
         
        // Menentukan warna border
        profileImageView.layer.borderColor = UIColor.black.cgColor
         
        // Menentukan apakah sudutnya akan membulat (rounded)
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
         
        // Menentukan apakah subview terbatas pada batas tampilan
        profileImageView.clipsToBounds = true
    }

}

