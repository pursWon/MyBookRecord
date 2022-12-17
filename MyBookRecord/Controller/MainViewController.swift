import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - UI
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        headerSet()
    }
    
    func headerSet() {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        let headerLabel = UILabel(frame: header.bounds)
        headerLabel.text = "나의 도서 목록"
        headerLabel.font = UIFont.boldSystemFont(ofSize: 40)
        header.addSubview(headerLabel)
        tableView.tableHeaderView = header
    }
    
    func configure() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - Actions
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        guard let addVC = self.storyboard?.instantiateViewController(withIdentifier: "AddViewController" ) as? AddViewController else { return }
        addVC.title = "도서 추가하기"
        navigationController?.pushViewController(addVC, animated: true)
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
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}



