//
//  RemoteVolumeAppDelegate.m
//  RemoteVolume
//
//  Created by Christopher Rizzo on 12/5/11.
//  Copyright (c) 2011 Crizzo Designs. All rights reserved.
//

#import "RemoteVolumeAppDelegate.h"

@implementation RemoteVolumeAppDelegate

@synthesize window = _window;
@synthesize textField = _textField;
@synthesize slider = _slider;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)mute:(id)sender {
    NSLog(@ "recieved a mute message");
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    
    NSString *senderName = nil;
    if (sender == _textField) {
        senderName = @"textField";
    }
    else {
        senderName = @"slider";
    }
    NSLog(@"%@ sent takeFloatValueForVolumeFrom: with value %1.2f", senderName, [sender floatValue]);
}
@end
