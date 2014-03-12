//
//  FLXAdventureViewController.m
//  Adventure
//
//  Created by Administrator on 3/12/14.
//  Copyright (c) 2014 FileLogix. All rights reserved.
//

#import "FLXAdventureViewController.h"

@interface FLXAdventureViewController ()

@end

@implementation FLXAdventureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton*)sender   {
    NSLog(@"Adventure VC Prepare for segue %@", sender.titleLabel.text);
    FLXAdventureViewController * vc = segue.destinationViewController;
    vc.title=sender.titleLabel.text;
}

@end
