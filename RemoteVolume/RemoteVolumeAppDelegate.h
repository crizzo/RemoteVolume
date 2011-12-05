//
//  RemoteVolumeAppDelegate.h
//  RemoteVolume
//
//  Created by Christopher Rizzo on 12/5/11.
//  Copyright (c) 2011 Crizzo Designs. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RemoteVolumeAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;


- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (IBAction)mute:(id)sender;
@end
