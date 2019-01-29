//
//  GoalTableViewCell.swift
//  Goalpost
//
//  Created by Hanisha Goyal on 5/7/18.
//  Copyright © 2018 Hanisha Goyal. All rights reserved.
//

import UIKit

class GoalTableViewCell: UITableViewCell {
    
    @IBOutlet weak var goalDescriptionLabel: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLabel.text = goal.goalDescription
        self.goalTypeLabel.text = goal.goalType
        self.goalProgressLabel.text = String(describing: goal.goalProgress)
//        if goal.goalProgress == goal.goalCompletionValue {
//            self.completionView.isHidden = false
//        } else {
//            self.completionView.isHidden = true
//        }
    }

}
