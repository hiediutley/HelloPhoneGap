//
//  iPodCommand.h
//  HelloPhoneGap
//
//  Created by Hiedi Utley on 4/1/11.
//  Copyright 2011 Chariot Solutions, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneGapCommand.h"
#import <MediaPlayer/MediaPlayer.h>

@interface iPodCommand : PhoneGapCommand <MPMediaPickerControllerDelegate, UITableViewDelegate> {
    
    

}

- (void) selectSong:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;
- (void) playSong:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;
- (void) showMediaPicker;


@end
