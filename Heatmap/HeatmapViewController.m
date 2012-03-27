//
//  HeatmapViewController.m
//  Heatmap
//
//  Created by David Eberle on 22.03.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "HeatmapViewController.h"

@implementation HeatmapViewController
@synthesize heatmapImageView;
//@synthesize stopButton;

- (void)dealloc
{
    [heatmapImageView release];
    //[stopButton release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [heatmapImageView loadHeatmapWithGameID:@"420390" andTeamID:@"1897"];
//    URLGETHEATMAP = @"http://motva.m2werkbox.moldenmedia.de:999/heatmap/";
//#warning Device ID ändern für iPad!
//    did = @"03-7dc217-17312d-023d-4db746b3-d8ea-428c-9d76-e6e409f9e348";//[UIDevice currentDevice].uniqueIdentifier;
//    [self loadHeatmapWithGameID:@"420390" andTeamID:@"1897"];
}

//- (void)loadHeatmapWithGameID:(NSString*)gameid andTeamID:(NSString *)teamid
//{
//    reload = YES;
//    NSString * urlstring = [URLGETHEATMAP stringByAppendingFormat:@"%@/%@/team/%@/live", did, gameid, teamid];
//    NSLog(@"string: %@", urlstring);
//    NSURL *url = [NSURL URLWithString:urlstring];
//    NSData * imageData = [[[NSData alloc] initWithContentsOfURL:url]autorelease];
//    UIImage * heatmapImage = [UIImage imageWithData:imageData];
//    
//    [heatmapImageView setImage:heatmapImage];
//    [self performSelector:@selector(reloadHeatmapWithURL:) withObject:url afterDelay:1.0];
//}
//
//
///*#warning TEST
//- (IBAction)stopButtonClicked:(id)sender {
//    [self stopreloading];
//}*/
//
//- (void)loadHeatmapWithGameID:(NSString*)gameid andPlayerID:(NSString *)playerid
//{
//    NSString * urlstring = [URLGETHEATMAP stringByAppendingFormat:@"%@/%@/team/%@/live", did, gameid, playerid];
//    //NSLog(@"start: %@", urlstring);
//    NSURL *url = [NSURL URLWithString:urlstring];
//    NSData * imageData = [[[NSData alloc] initWithContentsOfURL:url]autorelease];
//    UIImage * heatmapImage = [UIImage imageWithData:imageData];
//    
//    [heatmapImageView setImage:heatmapImage];
//    [self performSelector:@selector(reloadHeatmapWithURL:) withObject:url afterDelay:1.0];
//}
//
//- (void)reloadHeatmapWithURL:(NSURL*)url
//{
//    if (reload == YES) {
//        NSLog(@"reload: %@", url);
//        NSData * imageData = [[[NSData alloc] initWithContentsOfURL:url]autorelease];
//        UIImage * heatmapImage = [UIImage imageWithData:imageData];
//    
//        [heatmapImageView setImage:heatmapImage];
//        [self performSelector:@selector(reloadHeatmapWithURL:) withObject:url afterDelay:1.0];
//    }
//}
//
//- (void)stopreloading
//{
//    NSLog(@"Stopped");
//    reload = NO;
//}

- (void)viewDidUnload
{
    [self setHeatmapImageView:nil];
    //[self setStopButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
