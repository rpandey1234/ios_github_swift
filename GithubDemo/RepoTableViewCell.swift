//
//  RepoTableViewCell.swift
//  GithubDemo
//
//  Created by Rahul Pandey on 10/20/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var repoImageView: UIImageView!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var forksLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            repoNameLabel.text = repo.name
            authorLabel.text = repo.ownerHandle
            descriptionLabel.text = repo.repoDescription
            starsLabel.text = String(repo.stars!)
            forksLabel.text = String(repo.forks!)
            repoImageView.setImageWith(URL(string: repo.ownerAvatarURL!)!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
