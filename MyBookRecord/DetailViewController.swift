import UIKit

class DetailViewController: UIViewController {
    // MARK: - UI
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    // MARK: - Properties
    var index: Int?
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = Book.BookData[index!].coverImage
        titleLabel.text = "\(Book.BookData[index!].title!) / \(Book.BookData[index!].author!)"
        descriptionLabel.text = Book.BookData[index!].introduction
        titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
    }
    // MARK: - Actions
    @IBAction func deleteButton(_ sender: UIButton) {
    alert()
    }
    
    func alert() {
    let alert = UIAlertController(title: "정말 삭제하시겠습니까?", message: "", preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "아니오", style: .default)
        let ok = UIAlertAction(title: "예", style: .destructive) { action in
            Book.BookData.remove(at: self.index!)
            self.navigationController?.popViewController(animated: true)
        }
    alert.addAction(ok)
    alert.addAction(cancel)
    present(alert, animated: true, completion: nil)
    }
}
