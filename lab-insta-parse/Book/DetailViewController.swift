
import UIKit
//import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var booktitleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var pagecountLabel: UILabel!
    
    @IBOutlet weak var snippetLabel: UILabel!
    

    
    var book: Book!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the image located at the `` URL and set it on the image view.
        //let imageUrl = URL(string:"https://image.tmdb.org/t/p/w500" + book.bookimage)!
            //Nuke.loadImage(with: imageUrl, into: bookImageView)

            // Set labels with the associated book values.
            booktitleLabel.text = book.title
            authorLabel.text = book.author
            summaryLabel.text = book.summary
            genreLabel.text = book.genre
            pagecountLabel.text = String(book.pagecount)
            
           


            }
            



}
