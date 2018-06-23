#import "MainViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface MainViewController ()
@property (nonatomic) AVAudioPlayer* audioPlayer;
@end

@implementation MainViewController

-(IBAction) notePressed:(UIButton*)sender
{
    NSString* soundFileName = [NSString stringWithFormat:@"%@%ld",@"note",[sender tag]];
    [self playSoundWithFile:soundFileName];
}

-(void) playSoundWithFile: (NSString*) name
{
    NSURL* url = [[NSBundle mainBundle] URLForResource: name withExtension:@"wav"];
    
    @try
    {
        _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        if([self audioPlayer] == nil)
        {
            return;
        }
        [[self audioPlayer] prepareToPlay];
        [[self audioPlayer] play];
    }
    @catch(NSException *exception)
    {
        NSLog(@"AVAudio Player could not play the soud due to: %@",[exception description]);
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupNavigation];
}

- (void) setupNavigation
{
    if (@available(iOS 11.0, *))
    {
        [[[self navigationController] navigationBar] setPrefersLargeTitles:YES];
    }
    [self setTitle: @"XylophoneObjC"];
    [[[self navigationController] navigationBar] setBarStyle:UIBarStyleBlackTranslucent];
    [[[self navigationController] navigationBar] setTintColor:[UIColor whiteColor]];
}
@end
