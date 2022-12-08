import UIKit

class DetailViewController: UIViewController {
    // MARK: - UI
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextView!
    // MARK: - Properties
    var index: Int?
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = Book.BookData[index!].coverImage
        titleTextField.text = "\(Book.BookData[index!].title!) / \(Book.BookData[index!].author!)"
        descriptionTextField.text = Book.BookData[index!].introduction
        titleTextField.font = UIFont.boldSystemFont(ofSize: 18)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "수정", style: .plain, target: self, action:
                                                                #selector(saveButton))
        navigationItem.rightBarButtonItem?.tintColor = .red
        titleTextField.isEnabled = false
        descriptionTextField.isEditable = false
    }
    // MARK: - Actions
    @IBAction func deleteButton(_ sender: UIButton) {
        alert()
    }
    
    @objc func saveButton() {
        if navigationItem.rightBarButtonItem?.title == "수정" {
            navigationItem.rightBarButtonItem?.title = "저장"
            titleTextField.isEnabled = true
            descriptionTextField.isEditable = true
            navigationItem.hidesBackButton = true
        } else {
            let title = titleTextField.text?.components(separatedBy: " / ")
            Book.BookData[index!].coverImage = imageView.image
            Book.BookData[index!].introduction = descriptionTextField.text
            Book.BookData[index!].title = title![0]
            Book.BookData[index!].author = title![1]
            navigationController?.popViewController(animated: true)
        }
    }
}
