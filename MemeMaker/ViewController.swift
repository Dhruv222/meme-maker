//
//  ViewController.swift
//  MemeMaker
//
//  Created by Sharma, Dhruv on 4/4/19.
//  Copyright © 2019 Sharma, Dhruv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let topChoices: [CaptionOption] = [CaptionOption(emoji: "🕶", caption: "You know what's cool?"), CaptionOption(emoji: "🤯", caption: "You know what blows my mind?"), CaptionOption(emoji: "💕", caption: "You know what I love?")]
    let bottomChoices: [CaptionOption] = [CaptionOption(emoji: "🐱", caption: "Cats wearing Hats"), CaptionOption(emoji: "🐶", caption: "Dogs carrying logs"), CaptionOption(emoji: "🐵", caption: "Monkeys being funky!")]

    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionSegmentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        topCaptionSegmentControl.removeAllSegments()
        for topChoice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: topChoice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentControl.selectedSegmentIndex = 0
        bottomCaptionSegmentControl.removeAllSegments()
        for bottomChoice in bottomChoices {
            bottomCaptionSegmentControl.insertSegment(withTitle: bottomChoice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentControl.selectedSegmentIndex = 0
        setCaptionLabels()
    }
    
    func setCaptionLabels() {
        topCaptionLabel.text = topChoices[topCaptionSegmentControl.selectedSegmentIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomCaptionSegmentControl.selectedSegmentIndex].caption
    }

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        setCaptionLabels()
    }
    
}

