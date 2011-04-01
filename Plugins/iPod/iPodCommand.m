//
//  iPodCommand.m
//  HelloPhoneGap
//
//  Created by Hiedi Utley on 4/1/11.
//  Copyright 2011 Chariot Solutions, LLC. All rights reserved.
//

#import "iPodCommand.h"
#import <MediaPlayer/MediaPlayer.h>



@implementation iPodCommand


- (void) selectSong:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
    
    [self showMediaPicker];
    
}
- (void) playSong:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
    
}


// Configures and displays the media item picker.
- (void) showMediaPicker {
    
	MPMediaPickerController *picker =
    [[MPMediaPickerController alloc] initWithMediaTypes: MPMediaTypeAnyAudio];
	
	picker.delegate						= self;
	picker.allowsPickingMultipleItems	= YES;
	picker.prompt						= @"Select a song.";
	
	[[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleDefault animated:YES];
    
	[[self appViewController] presentModalViewController: picker animated: YES];
	[picker release];
}


// Responds to the user tapping Done after choosing music.
- (void) mediaPicker: (MPMediaPickerController *) mediaPicker didPickMediaItems: (MPMediaItemCollection *) mediaItemCollection {
    
	[[self appViewController] dismissModalViewControllerAnimated: YES];
	//[self.delegate updatePlayerQueueWithMediaCollection: mediaItemCollection];
	//[self.mediaItemCollectionTable reloadData];
    
	[[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleBlackOpaque animated:YES];
}


// Responds to the user tapping done having chosen no music.
- (void) mediaPickerDidCancel: (MPMediaPickerController *) mediaPicker {
    
	[[self appViewController] dismissModalViewControllerAnimated: YES];
    
	[[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleBlackOpaque animated:YES];
}



@end
