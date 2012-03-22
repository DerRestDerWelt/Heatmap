//
//  HeatmapAppDelegate.h
//  Heatmap
//
//  Created by David Eberle on 22.03.12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HeatmapViewController;

@interface HeatmapAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet HeatmapViewController *viewController;

@end
