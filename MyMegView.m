//
//  MyMegView.m
//  Genopal
//
//  Created by Suyash Sadh on 18/07/13.
//  Copyright (c) 2013 Avnish Sharma. All rights reserved.
//

#import "MyMegView.h"
#import <QuartzCore/QuartzCore.h>
@implementation MyMegView
@synthesize viewToMeg = _viewToMeg,pointImage =_pointImage, imageToSet = _imageToSet ;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        
        
        _imageToSet = [UIImage imageNamed:@"loopmask.png"];
        _viewToMeg = [[UIImageView alloc]init];
        _viewToMeg.frame = CGRectMake(0, 0, 80, 80);
        _viewToMeg.layer.borderWidth = 1.0;
        _viewToMeg.image = _imageToSet;
        _viewToMeg.layer.borderColor = [[UIColor whiteColor] CGColor];
        
        [self addSubview:_viewToMeg];
        
        _pointImage  = [[UIImageView alloc]init];
        _pointImage.frame =CGRectMake(20, 85, 40, 40);
        _pointImage.image = [UIImage imageNamed:@"node.png"];
        [self addSubview:_pointImage];
        
    
    }
    return self;
}
-(void)setSelfToBottom{

    _viewToMeg.frame = CGRectMake(0, 40, 80, 80);
    _pointImage.frame =CGRectMake(20, 0, 40, 40);


}
-(void)setSelfToTop{
    
    _viewToMeg.frame = CGRectMake(0, 0, 80, 80);
    _pointImage.frame =CGRectMake(20, 85, 40, 40);
    
    
}
-(void)setImageinMeg:(UIImage *)image{

    _imageToSet = image;
    [_viewToMeg setImage:image];


}


@end
