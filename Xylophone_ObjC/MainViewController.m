#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNavigation];
}

- (void) setupNavigation {
    if (@available(iOS 11.0, *)) {
        [[[self navigationController] navigationBar] setPrefersLargeTitles:YES];
    }
    [self setTitle: @"Xylophone"];
    [[[self navigationController] navigationBar] setBarStyle:UIBarStyleBlackTranslucent];
    [[[self navigationController] navigationBar] setTintColor:[UIColor whiteColor]];
}
@end
