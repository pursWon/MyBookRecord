import UIKit

extension DetailViewController {
    func alert() {
    let alert = UIAlertController(title: "정말 삭제하시겠습니까?", message: "", preferredStyle: UIAlertController.Style.alert)
        let cancel = UIAlertAction(title: "아니오", style: .default)
        let ok = UIAlertAction(title: "예", style: .destructive) {
            action in Book.BookData.remove(at: self.index!)
            self.navigationController?.popViewController(animated: true)
        }
    alert.addAction(cancel)
    alert.addAction(ok)
    present(alert, animated: true, completion: nil)
    }
}
