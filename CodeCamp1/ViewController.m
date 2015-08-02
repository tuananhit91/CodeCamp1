//
//  ViewController.m
//  CodeCamp1
//
//  Created by admin on 8/2/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "ViewController.h"
#import "AVFoundation/AVFoundation.h"

@interface ViewController ()

@end

@implementation ViewController
{
    BOOL isStartSound;
    AVAudioPlayer* player, *player1;
    NSTimer* timer;
    UIImageView *windmill,*backgound;
    UIImageView* wing1, *wing2;
    UIImageView* dutchlady, * dutchlady1, *milk;
    UIImageView* house, * thesun, *cow;
    UIImageView* clou1, *clou2, *clou3, *clou4, *clou5 , *clou6;
    UIImageView* night, *moon, *moon1;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addWindmillAndWing];
    [self addCloudy];
    [self addTheSun];
    [self addCow];
    [self addMoon];
    
    [self animateWing];
    [self animateDutchLady];
    [self animateCow];
    [self animateCloudy];
    [self animateCloudy1];
    [self animateCloudy2];
    [self animateCloudy3];
    [self animateBackGround];
    //[cow.viewForBaselineLayout addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(startSoundCow)]];
}

-(void) addWindmillAndWing{
    backgound = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"canhdong.png"]];
    backgound.frame = CGRectMake(0, 0, self.view.bounds.size.height, self.view.bounds.size.width);
    //backgound.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:backgound];
    
    windmill = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"coixaygio.png"]];
    windmill.center = CGPointMake(self.view.bounds.size.height - 467, self.view.bounds.size.width - 125);
    [self.view addSubview:windmill];
    
    wing1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"canh1.png"]];
    wing1.center = CGPointMake(self.view.bounds.size.height - 472, self.view.bounds.size.width - 175);
    [self.view addSubview:wing1];
    
    wing2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"canh2.png"]];
    wing2.center = CGPointMake(self.view.bounds.size.height - 472, self.view.bounds.size.width - 175);
    [self.view addSubview:wing2];
    
    house = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"house1.png"]];
    house.center = CGPointMake(self.view.bounds.size.height - 107, self.view.bounds.size.width - 75);
    [self.view addSubview:house];
    
    dutchlady1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cogaihalan1.png"]];
    dutchlady1.center = CGPointMake(self.view.bounds.size.height - 200, self.view.bounds.size.width - 75);
    [self.view addSubview:dutchlady1];
    
    dutchlady = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cogaihalan.png"]];
    dutchlady.center = CGPointMake(self.view.bounds.size.height - 345, self.view.bounds.size.width - 90);
    [self.view addSubview:dutchlady];
    
    milk = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sua.png"]];
    milk.center = CGPointMake(self.view.bounds.size.height - 380, self.view.bounds.size.width - 65);
    [self.view addSubview:milk];
    
    night = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"black.png"]];
    [self.view addSubview:night];

}

- (void) addCloudy{
    clou1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"may.png"]];
    clou1.frame = CGRectMake(150, 25 , 80, 80);
    [self.view addSubview:clou1];
    
    clou2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"may1.png"]];
    [self.view addSubview:clou2];
    
    clou3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"may2.png"]];
    [self.view addSubview:clou3];
    
    clou4 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"may3.png"]];
    [self.view addSubview:clou4];
    
    clou5 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"may4.png"]];
    clou5.center = CGPointMake(-clou5.bounds.size.width / 2, 80);
    [self.view addSubview:clou5];
    
    clou6 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"may5.png"]];
    clou6.center = CGPointMake(-clou6.bounds.size.width / 2, 80);
    [self.view addSubview:clou6];
    
}

- (void) addCow{
    cow = [[UIImageView alloc] initWithFrame:CGRectMake(400, 285, 100, 75)];
    cow.userInteractionEnabled = true;
    cow.multipleTouchEnabled = true;
    cow.animationImages = @[[UIImage imageNamed:@"cow.png"], [UIImage imageNamed:@"cow1.png"], [UIImage imageNamed:@"cow2.png"],
                            [UIImage imageNamed:@"cow3.png"], [UIImage imageNamed:@"cow4.png"], [UIImage imageNamed:@"cow5.png"],
                            [UIImage imageNamed:@"cow6.png"], [UIImage imageNamed:@"cow7.png"], [UIImage imageNamed:@"cow8.png"],
                            [UIImage imageNamed:@"cow9.png"], [UIImage imageNamed:@"cow10.png"], [UIImage imageNamed:@"cow11.png"],
                            [UIImage imageNamed:@"cow12.png"], [UIImage imageNamed:@"cow13.png"], [UIImage imageNamed:@"cow14.png"],
                            [UIImage imageNamed:@"cow15.png"], [UIImage imageNamed:@"cow16.png"],[UIImage imageNamed:@"cow17.png"]
                            ];
    cow.animationRepeatCount = -1;
    cow.animationDuration = 2;
    [self.view addSubview:cow];
    [cow startAnimating];
}

- (void) animateCow{
    cow.transform = CGAffineTransformIdentity;
    [UIView animateWithDuration:20 animations:^{
        cow.center = CGPointMake(170, cow.center.y);
    }completion:^(BOOL finished){
        cow.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(-1, 1), CGAffineTransformMakeRotation(2*M_PI));
        [UIView animateWithDuration:20 animations:^{
            cow.center = CGPointMake(400, cow.center.y);
        }completion:^(BOOL finished){
            [self animateCow];
        }];
    }];
}

- (void) animateWing{
    [UIView animateWithDuration:3 animations:^{
        wing1.transform = CGAffineTransformMakeRotation(M_PI_2);
        wing2.transform = CGAffineTransformMakeRotation(M_PI_2);
    }completion:^(BOOL finished){
        [UIView animateWithDuration:3 animations: ^{
            wing1.transform = CGAffineTransformMakeRotation(-M_PI_2);
            wing2.transform = CGAffineTransformMakeRotation(-M_PI_2);
        }completion:^(BOOL finished){
            [self animateWing];
        }];
    }];
}

- (void) animateDutchLady{
    //dutchlady.transform = CGAffineTransformIdentity;
    //dutchlady1.transform = CGAffineTransformIdentity;
    [UIView animateWithDuration:5 animations:^{
        dutchlady.hidden = true;
        dutchlady1.center = CGPointMake(322, 285);
        dutchlady.center = CGPointMake(322, 285);
        
    }completion:^(BOOL finished){
        dutchlady.hidden = false;
        dutchlady1.hidden = true;
        
        [UIView animateWithDuration:5 animations:^{
            dutchlady.center = CGPointMake(467, 300);
            dutchlady1.center = CGPointMake(467, 300);
        }completion:^(BOOL finished){
            //dutchlady.hidden = true;
            dutchlady1.hidden = false;
            [self animateDutchLady];
        }];
    }];
}

- (void) animateCloudy{
    clou3.frame = CGRectMake(150, 20, 10, 10);
    clou3.alpha = 0.2;
    
    clou2.frame = CGRectMake(300, 20, 10, 10);
    clou2.alpha = 0.2;
    
    clou4.frame = CGRectMake(400, 20, 10, 10);
    clou4.alpha = 0.2;
    [UIView animateWithDuration:5 animations:^{
        clou3.frame = CGRectMake(450, 50 , 80, 83);
        clou3.alpha = 1;
    }completion:^(BOOL finished){
        [UIView animateWithDuration:5 animations:^{
            clou2.frame = CGRectMake(500, 20, 80, 82);
            clou2.alpha = 1;
        }completion:^(BOOL finished){
            [UIView animateWithDuration:5 animations:^{
                clou4.frame = CGRectMake(550, 50, 80, 70);
                clou4.alpha = 1;
            }completion:^(BOOL finished){
                [self animateCloudy];
            }];
        }];
    }];
}

- (void) animateCloudy1{
    [UIView animateWithDuration:1 animations:^{
        clou1.transform = CGAffineTransformMakeRotation(-0.1);
    }completion:^(BOOL finished){
        [UIView animateWithDuration:1
                         animations:^{
                             clou1.transform = CGAffineTransformMakeRotation(0.1);
                         }completion:^(BOOL finished){
                             [self animateCloudy1];
                         }];
    }];
}

- (void) animateCloudy2{
    clou5.transform = CGAffineTransformIdentity;
    [UIView animateWithDuration:10 animations:^{
        clou5.center = CGPointMake(self.view.bounds.size.width + clou5.bounds.size.width / 2, 80);
    }completion:^(BOOL finished){
        clou5.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(-1, 1),
                                                  CGAffineTransformMakeRotation(2*M_PI));
        [UIView animateWithDuration:10 animations:^{
            clou5.center = CGPointMake(-clou5.bounds.size.width / 2 , 80);
        }completion:^(BOOL finished){
        [self animateCloudy2];
        }];
    }];
}

- (void) animateCloudy3{
    clou6.transform = CGAffineTransformIdentity;
    [UIView animateWithDuration:8 animations:^{
        clou6.center = CGPointMake(self.view.bounds.size.width + clou6.bounds.size.width / 2, 80);
    }completion:^(BOOL finished){
        clou6.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(-1, 1),
                                                  CGAffineTransformMakeRotation(2*M_PI));
        [UIView animateWithDuration:8 animations:^{
            clou6.center = CGPointMake(-clou6.bounds.size.width / 2 , 80);
        }completion:^(BOOL finished){
            [self animateCloudy3];
        }];
    }];
}

- (void) addTheSun{
    thesun = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.height + thesun.bounds.size.width / 2, 90, 133, 100)];
    thesun.animationImages = @[[UIImage imageNamed:@"sun.png"],[UIImage imageNamed:@"sun1.png"],
                               [UIImage imageNamed:@"sun2.png"],[UIImage imageNamed:@"sun3.png"],
                               [UIImage imageNamed:@"sun4.png"],[UIImage imageNamed:@"sun5.png"],
                               [UIImage imageNamed:@"sun6.png"],[UIImage imageNamed:@"sun7.png"],
                               [UIImage imageNamed:@"sun8.png"],[UIImage imageNamed:@"sun9.png"],
                               [UIImage imageNamed:@"sun10.png"],
                               ];
    thesun.animationRepeatCount = -1;
    thesun.animationDuration = 3;
    [self.view addSubview:thesun];
    [thesun startAnimating];
}

- (void) addMoon{
    moon = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.height + moon.bounds.size.width / 2, 90, 80, 87)];
    moon.animationImages = @[[UIImage imageNamed:@"moon.png"],
                             [UIImage imageNamed:@"moon1.png"]
                               ];
    moon.animationRepeatCount = -1;
    moon.animationDuration = 3;
    [self.view addSubview:moon];
    [moon startAnimating];
}

- (void) animateBackGround{
    night.alpha = 0;
    [UIView animateWithDuration:10 animations:^{
        moon.center = CGPointMake(333 , 35);
        night.alpha = 0.7;
        cow.alpha = 0.5;
        clou1.alpha = 0.5;
        clou2.alpha = 0.5;
        clou3.alpha = 0.5;
        clou4.alpha = 0.5;
        clou5.alpha = 0.5;
        clou6.alpha = 0.5;
        NSURL* sound = [[NSBundle mainBundle] URLForResource:@"tiengbokeu" withExtension:@"mp3"];
        [self sound:sound];

    }completion:^(BOOL finished){
        [UIView animateWithDuration:10 animations:^{
            moon.center = CGPointMake(-moon.bounds.size.width / 2, 90);
            night.alpha = 0.9;
            cow.alpha = 0.5;
            clou1.alpha = 0.1;
            clou2.alpha = 0.1;
            clou3.alpha = 0.1;
            clou4.alpha = 0.1;
            clou5.alpha = 0.1;
            clou6.alpha = 0.1;
            NSURL* sound = [[NSBundle mainBundle] URLForResource:@"tiengdekeu" withExtension:@"mp3"];
            [self sound:sound];
        }completion:^(BOOL finished){
            [player stop];
            moon.center = CGPointMake(667 + moon.bounds.size.width / 2,90);
            [UIView animateWithDuration:10 animations:^{
                thesun.center = CGPointMake(333 , 35);
                night.alpha = 0;
                cow.alpha = 1;
                clou1.alpha = 1;
                clou2.alpha = 1;
                clou3.alpha = 1;
                clou4.alpha = 1;
                clou5.alpha = 1;
                clou6.alpha = 1;
                NSURL* sound = [[NSBundle mainBundle] URLForResource:@"tienggagay" withExtension:@"mp3"];
                [self sound:sound];
            }completion:^(BOOL finished){
                [UIView animateWithDuration:10 animations:^{
                    thesun.center = CGPointMake(-thesun.bounds.size.width / 2, 90);
                }completion:^(BOOL finished){
                    [player stop];
                    thesun.center = CGPointMake(667 + thesun.bounds.size.width / 2, 90);
                    [self animateBackGround];
                }];
            }];
        }];
    }];
}

/*- (void)startSoundCow{
    if (!isStartSound) {
        isStartSound = true;
        NSURL* sound = [[NSBundle mainBundle] URLForResource:@"tiengbokeu" withExtension:@"mp3"];
        [self soundCow:sound];
    }
}*/

- (void)sound:(NSURL*) url{
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    player.numberOfLoops = -1;
    [player play];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
