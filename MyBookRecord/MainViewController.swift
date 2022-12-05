import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
// MARK: - UI
    @IBOutlet weak var tableView: UITableView!
    
// MARK: - Properties
    
// MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() {
    tableView.dataSource = self
    tableView.delegate = self
    }
    
// MARK: - Actions
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        guard let addVC = self.storyboard?.instantiateViewController(withIdentifier: "AddViewController" ) as? AddViewController else { return }
        addVC.title = "도서 추가하기"
        self.navigationController?.pushViewController(addVC, animated: true)
        
    }
// MARK: - TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Book.BookData.count
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as? BookCell else { return UITableViewCell() }
        cell.largeContentTitle = "나의 도서 목록"
        cell.bookTitleLabel.text = Book.BookData[indexPath.row].title
        cell.bookTitleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        cell.authorLabel.text = Book.BookData[indexPath.row].author
        cell.bookImageView.image = Book.BookData[indexPath.row].coverImage
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController")
                as? DetailViewController else { return }
        
        detailVC.title = "상세 정보"
        detailVC.index = indexPath.row
        print(detailVC.index!)
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}



