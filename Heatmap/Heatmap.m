//
//  Heatmap.m
//  Heatmap
//
//  Created by David Eberle on 23.03.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Heatmap.h"


@implementation Heatmap

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
       
    }
    return self;
}

- (void)loadHeatmapWithGameID:(NSString*)gameid andTeamID:(NSString *)teamid
{
    reload = YES;
    URLGETHEATMAP = @"http://motva.m2werkbox.moldenmedia.de:999/heatmap/";
#warning Device ID ändern für iPad!
    did = @"03-7dc217-17312d-023d-4db746b3-d8ea-428c-9d76-e6e409f9e348";//[UIDevice currentDevice].uniqueIdentifier;

    NSString * urlstring = [URLGETHEATMAP stringByAppendingFormat:@"%@/%@/team/%@/live", did, gameid, teamid];
    NSLog(@"string: %@", urlstring);
    NSURL *url = [NSURL URLWithString:urlstring];
    NSData * imageData = [[[NSData alloc] initWithContentsOfURL:url]autorelease];
    UIImage * heatmapImage = [UIImage imageWithData:imageData];
    
    [self setImage:heatmapImage];
    [self performSelector:@selector(reloadHeatmapWithURL:) withObject:url afterDelay:1.0];
}


/*#warning TEST
 - (IBAction)stopButtonClicked:(id)sender {
 [self stopreloading];
 }*/

- (void)loadHeatmapWithGameID:(NSString*)gameid andPlayerID:(NSString *)playerid
{    
    reload = YES;
    URLGETHEATMAP = @"http://motva.m2werkbox.moldenmedia.de:999/heatmap/";
#warning Device ID ändern für iPad!
    did = @"03-7dc217-17312d-023d-4db746b3-d8ea-428c-9d76-e6e409f9e348";//[UIDevice currentDevice].uniqueIdentifier;
    
    NSString * urlstring = [URLGETHEATMAP stringByAppendingFormat:@"%@/%@/team/%@/live", did, gameid, playerid];
    NSLog(@"start: %@", urlstring);
    NSURL *url = [NSURL URLWithString:urlstring];
    NSData * imageData = [[[NSData alloc] initWithContentsOfURL:url]autorelease];
    UIImage * heatmapImage = [UIImage imageWithData:imageData];
    
    [self setImage:heatmapImage];
    [self performSelector:@selector(reloadHeatmapWithURL:) withObject:url afterDelay:1.0];
}

- (void)reloadHeatmapWithURL:(NSURL*)url
{
    if (reload == YES) {
        NSLog(@"reload: %@", url);
        NSData * imageData = [[[NSData alloc] initWithContentsOfURL:url]autorelease];
        UIImage * heatmapImage = [UIImage imageWithData:imageData];
        
        [self setImage:heatmapImage];
        [self performSelector:@selector(reloadHeatmapWithURL:) withObject:url afterDelay:1.0];
    }
}

- (void)stopreloading
{
    NSLog(@"Stopped");
    reload = NO;
}

- (void)dealloc
{
    [super dealloc];
}

@end
