import UIKit
import AVFoundation // audio/visual foundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    // this is of type AVAudioPlayer
    var audioPlayer: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        // sets up the location of where our sound is
        let soundURL = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")
    
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
        print(sender.tag)
    }
}

