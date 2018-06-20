import UIKit
import AVFoundation

@objc(MainViewController)
class MainViewController: UIViewController {
    
    @IBAction
    func notePressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")!
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            guard let player = audioPlayer else { return }
            player.prepareToPlay()
            player.play()
        }catch {
            print(error.localizedDescription)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
    }

    private func setupNavigation(){
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = true
        }
        title = "XylophoneSwift"
        navigationController?.navigationBar.barStyle = .blackTranslucent
        navigationController?.navigationBar.tintColor = .white
    }
    
    private var audioPlayer: AVAudioPlayer!
}

