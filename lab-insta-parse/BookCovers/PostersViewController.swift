import UIKit
import Nuke

class PostersViewController: UIViewController, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        posters.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Get a collection view cell (based in the identifier you set in storyboard) and cast it to our custom AlbumCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell
        
        // Use the indexPath.item to index into the albums array to get the corresponding album
        let posters = posters[indexPath.item]
        
        // Get the artwork image url
        let imageUrl = URL(string:"https://image.tmdb.org/t/p/w500" + posters.poster_path)!
        
        // Set the image on the image view of the cell
        Nuke.loadImage(with: imageUrl, into: cell.posterImageView) //Wouldn't work; need to find out why "loadImage" doesn't work
        
        return cell
    }
    
    
    var posters: [Posters] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let url = URL(string: "")!
        
        let request = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            
            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }
            
            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }
            
           
            do {
                let decoder = JSONDecoder()
                // Try to parse the response into our custom model
                let response = try decoder.decode(PostersSearchResponse.self, from: data)
                let posters = response.results
                print(posters)
                DispatchQueue.main.async {
                    self?.posters = posters
                    self?.collectionView.reloadData()
                }
            } 
            
            catch let parsingError{
                print(parsingError)
                //print(error.localizedDescription)
            }
        }
        
        // Initiate the network request
        task.resume()
        collectionView.dataSource = self
        // Get a reference to the collection view's layout
        // We want to dynamically size the cells for the available space and desired number of columns.
        // NOTE: This collection view scrolls vertically, but collection views can alternatively scroll horizontally.
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        // The minimum spacing between adjacent cells (left / right, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumInteritemSpacing = 4
        
        // The minimum spacing between adjacent cells (top / bottom, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumLineSpacing = 4
        
        // Set this to however many columns you want to show in the collection.
        let numberOfColumns: CGFloat = 3
        
        // Calculate the width each cell need to be to fit the number of columns, taking into account the spacing between cells.
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns - 1)) / numberOfColumns
        
        // Set the size that each tem/cell should display at
        layout.itemSize = CGSize(width: width, height: width)
        
        
        
        
    }
//    var tracks: [Track] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // TODO: Pt 1 - Pass the selected track to the detail view controller
        // Get the cell that triggered the segue
        if let cell = sender as? UICollectionViewCell,
           // Get the index path of the cell from the table view
           let indexPath = collectionView.indexPath(for: cell),
           // Get the detail view controller
           let detailViewController2 = segue.destination as? DetailViewController2 {

            // Use the index path to get the associated track
            let posters = posters[indexPath.row]

            // Set the track on the detail view controller
            detailViewController2.posters = posters
        }

    }
    
    
    
}
