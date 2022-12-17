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
        data()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "수정", style: .plain, target: self, action:
        #selector(saveButton))
        navigationItem.rightBarButtonItem?.tintColor = .red
        titleTextField.font = UIFont.boldSystemFont(ofSize: 18)
        titleTextField.isEnabled = false
        descriptionTextField.isEditable = false
    }
    
    func data() {
        let data = Book.BookData[index!]
        imageView.image = data.coverImage
        titleTextField.text = "\(data.title!) / \(data.author!)"
        descriptionTextField.text = data.introduction
    }
    // MARK: - Actions
    @IBAction func deleteButton(_ sender: UIButton) {
        alert()
    }
    
    @objc func saveButton() {
        let barItem = navigationItem.rightBarButtonItem!
        var data = Book.BookData[index!]
        if barItem.title == "수정" {
            barItem.title = "저장"
            titleTextField.isEnabled = true
            descriptionTextField.isEditable = true
            navigationItem.hidesBackButton = true
        } else {
            let title = titleTextField.text?.components(separatedBy: " / ")
            data.coverImage = imageView.image
            data.introduction = descriptionTextField.text
            data.title = title![0]
            data.author = title![1]
            navigationController?.popViewController(animated: true)
        }
    }
}
