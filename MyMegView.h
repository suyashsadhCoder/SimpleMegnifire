//
//  MyMegView.h
//  Genopal
//
//  Created by Suyash Sadh on 18/07/13.
//  Copyright (c) 2013 Avnish Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyMegView : UIView
{

    
    UIImageView *viewToMeg;
    UIImageView *pointImage;
    UIImage *imageToSet;
}

@property(nonatomic , retain) UIImageView *viewToMeg;
@property(nonatomic , retain) UIImageView *pointImage;
@property(nonatomic , retain) UIImage *imageToSet;
-(void)setImageinMeg:(UIImage *)image;
-(void)setSelfToBottom;
-(void)setSelfToTop;
@end
