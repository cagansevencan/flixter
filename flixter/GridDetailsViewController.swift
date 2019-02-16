//
//  GridDetailsViewController.swift
//  flixter
//
//  Created by Cagan Sevencan on 2/16/19.
//  Copyright © 2019 Cagan Sevencan. All rights reserved.
//

import UIKit

class GridDetailsViewController: UIViewController {
    var movie : [String:Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TitleLabel.text = movie["title"] as? String
        TitleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
    
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropView.af_setImage(withURL: backdropUrl!)
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
