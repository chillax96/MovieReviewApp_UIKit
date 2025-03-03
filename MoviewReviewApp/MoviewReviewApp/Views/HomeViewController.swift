import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView! // ✅ 스토리보드에서 연결
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        loadMovies()
    }
// ❌ 기존 코드 제거 (코드로 Collection View 생성하던 부분 제거)
//    private func setupCollectionView() {
//        let layout = UICollectionViewFlowLayout()
//        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
//        view.addSubview(collectionView)
      
    private func setupCollectionView() {
        
        // ✅ 스토리보드에서 추가한 Collection View와 연결
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // ✅ MovieColletionViewCell 등록
        collectionView.register(UINib(nibName: "MovieCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MovieCell")
    }
    
    private func loadMovies() {
        if let url = Bundle.main.url(forResource: "movies", withExtension: "json"),
           let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let movies = try? decoder.decode([Movie].self, from: data) { //
                print("Movie data loaded successfully: \(movies.count) movies")
            } else {
                print("Failed to decode movie data")
            }
        } else {
            print("Failed to load movie file")
        }
    }
}
