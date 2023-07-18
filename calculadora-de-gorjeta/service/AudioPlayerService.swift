//
//  AudioPlayerService.swift
//  calculadora-de-gorjeta
//
//  Created by Mauricio Silva on 17/07/23.
//

import Foundation
import AVFoundation

protocol AudioPlayerService {
    func PlaySound()
}

final class DefaultAudioPlayer: AudioPlayerService {
    
    private var player: AVAudioPlayer?
    
    func PlaySound() {
        let path = Bundle.main.path(forResource: "click", ofType: "m4a")!
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch (let error) {
            print(error)
        }
    }
}
