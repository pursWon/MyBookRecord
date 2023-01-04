import UIKit

class MainViewController: UIViewController {
    // MARK: - UI
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        title = "도서 목록"
    }
    
    override func viewWillAppear(_ animated: Bool) {
    collectionView.reloadData()
    }
    
    @IBAction func addButton(_ sender: UIBarButtonItem) {
    guard let addVC = self.storyboard?.instantiateViewController(withIdentifier: "AddViewController") as? AddViewController else { return }
    addVC.title = "도서 추가하기"
    self.navigationController?.pushViewController(addVC, animated: true)
    }
    
    @IBAction func searchButton(_ sender: UIBarButtonItem) {
        guard let searchVC = self.storyboard?.instantiateViewController(withIdentifier: "SearchViewController") as? SearchViewController else { return }
        self.navigationController?.pushViewController(searchVC, animated: true)
    }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return Book.BookData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? BookCell else { return UICollectionViewCell() }
        cell.bookImageView.image = Book.BookData[indexPath.row].coverImage
        cell.bookTitleLabel.text = Book.BookData[indexPath.row].title
        cell.authorLabel.text = Book.BookData[indexPath.row].author
        cell.bookTitleLabel.font = UIFont.boldSystemFont(ofSize: 13)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width
        let widthCount: CGFloat = 3
        let widthSize: CGFloat = width / widthCount
        return CGSize(width: widthSize, height: widthSize * 2)
     }
        
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
        detailVC.title = "상세 정보"
        detailVC.index = indexPath.item
        print(indexPath.item)
        navigationController?.pushViewController(detailVC, animated: true)    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}



