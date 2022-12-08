import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var defaultImage: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        contentTextField.placeholder = "이 책의 소개글을 작성해주세요."
        contentTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.top
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "추가하기", style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = .red
        titleTextField.placeholder = "책 제목을 입력해주세요."
        authorTextField.placeholder = "작가의 이름을 입력해주세요."
    }
    
    
   
    @objc func addTapped() {
        if !titleTextField.text!.isEmpty && !authorTextField.text!.isEmpty && !contentTextField.text!.isEmpty {
        let book = Book(title: titleTextField.text, author: authorTextField.text, coverImage: defaultImage.image, introduction: contentTextField.text)
        Book.BookData.insert(book, at: 0)
        navigationController?.popViewController(animated: true)
        } else {
        alert()
        }
    }
}
