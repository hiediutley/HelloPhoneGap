//
//  ActivityIndicatorCommand.h
//  HelloPhoneGap
//
//  Created by Hiedi Utley on 4/8/11.
//  Copyright 2011 Chariot Solutions, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneGapCommand.h"

@interface ActivityIndicatorCommand : PhoneGapCommand {
    
}

- (void) show:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;
- (void) hide:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;
- (void) updateMessage:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;
@end
