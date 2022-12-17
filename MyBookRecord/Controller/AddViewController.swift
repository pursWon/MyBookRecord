import UIKit

class AddViewController: UIViewController, UINavigationControllerDelegate {
// MARK: - UI
    @IBOutlet weak var defaultImage: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        contentTextField.placeholder = "이 책의 소개글을 작성해주세요."
        titleTextField.placeholder = "책 제목을 입력해주세요."
        authorTextField.placeholder = "작가의 이름을 입력해주세요."
        contentTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.top
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "추가하기", style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = .red
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(touchPhoto))
        defaultImage.addGestureRecognizer(tapGesture)
        defaultImage.isUserInteractionEnabled = true
    }
// MARK: - Actions
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

extension AddViewController: UIImagePickerControllerDelegate {
    @objc func touchPhoto() {
    let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        
        self.present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true) { () in
            let img = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
            self.defaultImage.image = img
        }
    }
}
