//
//  ViewController.swift
//  flipApp
//
//  Created by Нурдаулет on 05.03.2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var game = ConcetrationGame(numberOfPairsOfCards: (buttonCollection.count + 1) / 2)

    var touches = 0 {
        didSet {
            touchLabel.text = "Touches: \(touches)"
        }
    }
    func flipButton(emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = UIColor.white
        }
    }

    let emojiCollection = ["🦊", "🐰","🦊", "🐰"]

    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet var touchLabel: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
            game.chooseCard(at: buttonIndex)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

