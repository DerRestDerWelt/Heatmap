//
//  Heatmap.h
//  Heatmap
//
//  Created by David Eberle on 23.03.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Heatmap : UIImageView {
    NSString * did;
    NSString * URLGETHEATMAP;
    BOOL reload;
}

-(void)loadHeatmapWithGameID:(NSString*)gameid andPlayerID:(NSString *)playerid;
-(void)loadHeatmapWithGameID:(NSString*)gameid andTeamID:(NSString *)teamid;
-(void)reloadHeatmapWithURL:(NSURL*)url;
-(void)stopreloading;

@end
