//
//  MAinViewController.m
//  SimpleMegnifire
//
//  Created by Suyash Sadh on 18/07/13.
//  Copyright (c) 2013 Avnish Sharma. All rights reserved.
//

#import "MAinViewController.h"

@interface MAinViewController ()

@end

@implementation MAinViewController
CGFloat firstX;
CGFloat firstY;
UIImage *mainImage;
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
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBarHidden =YES;
    UIPanGestureRecognizer *panGuesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panHandeler:)];
    
    
    megView = [[MyMegView alloc]initWithFrame:CGRectMake(0, 0, 80, 130)];
    [megView addGestureRecognizer:panGuesture];
    [self.view addSubview:megView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)panHandeler:(UIPanGestureRecognizer * )gesture{
    CGPoint translation = [gesture translationInView:self.view];
    gesture.view.center = CGPointMake(gesture.view.center.x + translation.x,gesture.view.center.y + translation.y);
    [gesture setTranslation:CGPointMake(0, 0) inView:self.view];
    
    if (megView.frame.origin.y<0) {
        [megView setSelfToBottom];
    }
    if (megView.frame.origin.y>megView.frame.size.height) {
    [megView setSelfToTop];
    
    }
    CGRect rectForImage = CGRectMake(gesture.view.frame.origin.x+megView.pointImage.frame.origin.x,gesture.view.frame.origin.y+megView.pointImage.frame.origin.y , 40, 40);
    UIImage *main = [UIImage imageNamed:@"300_.png"];
    UIImage *croppedImage = [self imageWithImage:main scaledToSize:rectForImage];
    [megView setImageinMeg:croppedImage];
    
}
- (UIImage*)imageWithImage:(UIImage*)image
              scaledToSize:(CGRect)rect;
{
    
    CGImageRef imageRef = CGImageCreateWithImageInRect(image.CGImage, rect);
    UIImage *result = [UIImage imageWithCGImage:imageRef scale:image.scale*100.0 orientation:image.imageOrientation];
    CGImageRelease(imageRef);
    return result;
    
    
}
@end
