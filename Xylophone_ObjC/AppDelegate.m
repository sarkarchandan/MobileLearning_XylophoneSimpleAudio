#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    UIStoryboard* storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MainViewController* viewController = [storyBoard instantiateInitialViewController];
    UIWindow* window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [window setRootViewController:[[UINavigationController alloc] initWithRootViewController:viewController]];
    [window makeKeyAndVisible];
    [self setWindow:window];
    return YES;
}

@end
