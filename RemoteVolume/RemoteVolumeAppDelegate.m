//
//  RemoteVolumeAppDelegate.m
//  RemoteVolume
//
//  Created by Christopher Rizzo on 12/5/11.
//  Copyright (c) 2011 Crizzo Designs. All rights reserved.
//

#import "RemoteVolumeAppDelegate.h"
#import "Track.h"

@implementation RemoteVolumeAppDelegate


@synthesize window = _window;
@synthesize textField = _textField;
@synthesize slider = _slider;
@synthesize track = _track;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    Track *aTrack = [[Track alloc] init];
    [self setTrack:aTrack];
    
    [self updateUserInterface];
}


- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];
    
    NSString *senderName = nil;
    if (sender == _textField) {
        senderName = @"textField";
    }
    
    else {
        senderName = @"slider";
    }
    NSLog(@"%@ sent takeFloatValueForVolumeFrom: with value %1.2f", senderName, [sender floatValue]);
}


- (IBAction)mute:(id)sender {
    [self.track setVolume:0.0];
    [self updateUserInterface];
}

- (void)updateUserInterface {
    
    float volume = [self.track volume];
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}


@end
