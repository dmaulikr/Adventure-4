//
//  FLXViewController.m
//  Adventure
//
//  Created by Administrator on 3/11/14.
//  Copyright (c) 2014 FileLogix. All rights reserved.
//

#import "FLXViewController.h"
#import "FLXAdventureViewController.h"

@interface FLXViewController ()
@property (weak, nonatomic) IBOutlet UITextView *previousStoryEnding;

@end

@implementation FLXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton*)sender   {
    NSLog(@"Prepare for segue %@", segue.sourceViewController);
//    self.navigationItem.title=sender.titleLabel.text;
    FLXAdventureViewController * vc = segue.destinationViewController;
    vc.title=sender.titleLabel.text;
    
}

- (IBAction)unwindFromAdventureViewController:(UIStoryboardSegue*)sender {
    NSLog(@"VC Rewind... %@", sender.identifier);

//    FLXAdventureViewController * sc = [sender sourceViewController];
    
    
    NSLog(@"VC Source View %@", sender.identifier);
    self.previousStoryEnding.text = [NSString stringWithFormat:@"Story ended with %@",sender.identifier];
    self.previousStoryEnding.alpha = 1.0f;

}


@end
