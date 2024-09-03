//
//  Sound.swift
//  shops24
//
//  Created by Diederick de Buck on 22/11/2022.
//

import Foundation
import AVFoundation


public enum SoundId: SystemSoundID {
    case click = 1306
    case lock = 1100
}


public enum SoundFile: String {
    case trash
    case reject
}


public enum SoundExtension: String {
    case mp3
    case wav
    case aif
}


public class Sound {
    
    public static func playSound(_ soundId: SoundId, audible: Bool) {
        if (audible) {
            AudioServicesPlaySystemSound(soundId.rawValue)
        }
    }
    
    public static func playSound(_ soundFile: SoundFile, soundExtension: SoundExtension, audible: Bool) {
        if (audible) {
            let filePath: String? = Bundle.main.path(
                forResource: soundFile.rawValue,
                ofType: soundExtension.rawValue
            )!
            let fileURL: NSURL = NSURL(fileURLWithPath: filePath!)
            var soundID: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(fileURL, &soundID)
            AudioServicesPlaySystemSound(soundID)
        }
    }
}

