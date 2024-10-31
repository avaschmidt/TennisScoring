import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var displayOutlet: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        displayOutlet.text = "The game starts at Love All. In tennis, Love means zero and All eans both players have the same score. The player who wins the point is at 15. The scores increase to 30 and then 40. Once one person is at 40, you are at set point. If that person wins again, they win that point. If your score gets to 40 All, you are at deuce. If you are playing without add, the person not serving choses which side of the court they would like to recieve the ball. If you are playing with add, announce you are at deuce and play out the point. If the person serving wins, they are at add-in. If the reciever wins, then they are at add-out. If the person wins again, they win the set. However, if the other person wins, they are back to deuce. The process repeats until someone wins two in a row. You keep playing these points, starting at Love All (switch sides on odd numbers) to 6 points, winning by 2. If you get to 5-6 or 6-5, play one additional point to win 5-7 or 7-5. If you tie 6-6, play a tie break. A tie break is first to 7, taking turns serving twice. Whoever wins, wins the first set. Follow the rules again for the second set. If you split the set, play a 10 point tie break (same rules as the other tie break but this time play to 10 points). Whoever wins the tie break, wins the match."
    }
    


}
