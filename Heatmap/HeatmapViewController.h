//
//  HeatmapViewController.h
//  Heatmap
//
//  Created by David Eberle on 22.03.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Heatmap.h"

@interface HeatmapViewController : UIViewController {
    
    Heatmap* heatmapImageView;
    //UIButton *stopButton;
    //NSMutableData * heatmapData;
//    NSString * did;
//    NSString * URLGETHEATMAP;
//    BOOL reload;
}
@property (nonatomic, retain) IBOutlet UIImageView *heatmapImageView;


/*/Test
@property (nonatomic, retain) IBOutlet UIButton *stopButton;
- (IBAction)stopButtonClicked:(id)sender;
/*/


//-(void)loadHeatmapWithGameID:(NSString*)gameid andPlayerID:(NSString *)playerid;
//-(void)loadHeatmapWithGameID:(NSString*)gameid andTeamID:(NSString *)teamid;
//-(void)reloadHeatmapWithURL:(NSURL*)url;
//-(void)stopreloading;

@end
