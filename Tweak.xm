#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

%hook SBIconController

-(void)_launchIcon:(id)icon {
    NSString *soundFilePath = @"/var/mobile/meme/meme.mp3";
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL error:nil];
    player.numberOfLoops = 0;
    [player play];
    return %orig;
}

%end
