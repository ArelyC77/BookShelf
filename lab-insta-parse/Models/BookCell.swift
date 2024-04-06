//
//  BookCell2.swift
//  BookShelf
//
//  Created by Arely Correa on 4/5/24.
//

import UIKit

class BookCell2: UITableViewCell {
    
    //@IBOutlet weak var bookImageView: UIImageView!
    //@IBOutlet weak var titleLabel: UILabel!
    //@IBOutlet weak var authorNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    /// Configures the cell's UI for the given book.
    func configure(with book: Book) {
        titleLabel.text = book.title
        authorNameLabel.text = book.author

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: book.cover as! ImageRequestConvertible, into: bookImageView)
    }

}
