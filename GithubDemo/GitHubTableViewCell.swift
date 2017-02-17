//
//  GitHubTableViewCell.swift
//  GithubDemo
//
//  Created by nhi phùng on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class GitHubTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var forkImage: UIImageView!
    @IBOutlet weak var starImage: UIImageView!

    var repo: GithubRepo? {
        didSet {
            if let repo = repo {
                nameLabel.text = repo.name!
                avatarImage.setImageWith(URL(string: repo.ownerAvatarURL!)!)
                descriptionLabel.text = repo.descriptionRepo!
                starLabel.text = String(repo.stars!)
                forkLabel.text = String(repo.forks!)
                
                starImage.image = UIImage(imageLiteralResourceName: "star")
                forkImage.image = UIImage(imageLiteralResourceName: "fork")
                ownerLabel.text = repo.ownerHandle
            }
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
