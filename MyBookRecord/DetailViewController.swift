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
}
