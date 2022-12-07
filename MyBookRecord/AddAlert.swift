import UIKit

extension AddViewController {
    func alert() {
        let alert = UIAlertController(title: "일부 항목이 비어있습니다. 마저 작성해주세요.", message: "", preferredStyle: UIAlertController.Style.alert)
        present(alert, animated: true, completion: nil)
        let cancel = UIAlertAction(title: "닫기", style: .default)
        alert.addAction(cancel)
    }
}
