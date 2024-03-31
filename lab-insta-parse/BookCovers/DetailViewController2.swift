//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController2: UIViewController {
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var trackNameLabel: UILabel!

    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!

    // TODO: Pt 1 - Add a track property
    //var track: Track!
    var posters: Posters!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        
            let imageUrl = URL(string:"https://image.tmdb.org/t/p/w500" + posters.poster_path)!
            Nuke.loadImage(with: imageUrl, into: posterImageView)

            // Set labels with the associated track values.
            trackNameLabel.text = posters.title
            artistLabel.text = posters.overview
            albumLabel.text = String(posters.vote_average)
            genreLabel.text = String(posters.popularity)
            releaseDateLabel.text = String(posters.vote_count)

            // Create a date formatter to style our date and convert it to a string
//            let dateFormatter = DateFormatter()
//            dateFormatter.dateStyle = .medium
//            releaseDateLabel.text = dateFormatter.string(from: track.releaseDate)

            // Use helper method to convert milliseconds into `mm:ss` string format
            //durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)
        // TODO: Pt 1 - Configure the UI elements with the passed in track


    }



}
