import UIKit
import AVFoundation // audio/visual foundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    // this is of type AVAudioPlayer
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
//        selectedNote = "note\(sender.tag)"
        
        playSound(soundFileName: "note\(sender.tag)")
       
    }
    
    func playSound(soundFileName : String) {
        // sets up the location of where our sound is
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
}

