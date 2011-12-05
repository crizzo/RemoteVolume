//
//  RemoteVolumeAppDelegate.h
//  RemoteVolume
//
//  Created by Christopher Rizzo on 12/5/11.
//  Copyright (c) 2011 Crizzo Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Track;
@interface RemoteVolumeAppDelegate : NSObject <NSApplicationDelegate>

- (void)updateUserInterface;

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;

@property (strong) Track *track;


- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (IBAction)mute:(id)sender;


@end
