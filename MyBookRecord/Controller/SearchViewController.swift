import UIKit

class SearchViewController: UIViewController {
    @IBOutlet var searchTableView: UITableView!
    
    var bookNamesArray: [String] = []
    var filterArr: [String] = []
    
    var isFiltering: Bool {
            let searchController = self.navigationItem.searchController
            let isActive = searchController?.isActive ?? false
            let isSearchBarHasText = searchController?.searchBar.text?.isEmpty == false
            return isActive && isSearchBarHasText
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchCotroller()
        setUpTableView()
        bookTitles()
    }
    
    func setupSearchCotroller() {
    let searchController = UISearchController(searchResultsController: nil)
    searchController.searchBar.placeholder = "책 이름을 입력해주세요."
    searchController.hidesNavigationBarDuringPresentation = false
    searchController.searchResultsUpdater = self
    
    self.navigationItem.searchController = searchController
    self.navigationItem.title = " 도서 검색"
    self.navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    func setupTableView() {
        searchTableView.dataSource = self
        searchTableView.delegate = self
    }
    
    func bookTitles() {
        for index in 0...8 {
            if let bookTitle = Book.BookData[index].title {
                bookNamesArray.append(bookTitle)
            }
        }
    }
}

extension SearchViewController: UISearchResultsUpdating {
// ViewController가 UISearchResultsUpdating를 준수하도록 하고, ViewController가 UISearchResultsUpdating의 Delegate가 되도록
// 설정하면 된다.
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        
        self.filterArr = self.bookNamesArray.filter { $0.hasPrefix(text) }
        self.searchTableView.reloadData()
    }
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.isFiltering ? self.filterArr.count : self.bookNamesArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath) as? SearchCell
        else { return UITableViewCell() }
        if self.isFiltering {
            cell.textLabel?.text = self.filterArr[indexPath.row]
        } else {
            cell.textLabel?.text = self.bookNamesArray[indexPath.row]
        }
        return cell
    }
}

