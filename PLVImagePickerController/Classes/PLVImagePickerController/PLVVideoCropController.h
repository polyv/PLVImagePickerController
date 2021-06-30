//
//  PLVVideoCropController.h
//  PLVImagePickerController
//
//  Created by 肖兰月 on 2021/5/27.
//  Copyright © 2021 谭真. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class PLVAssetModel,PLVImagePickerController;

@interface PLVVideoCropController : UIViewController<UIViewControllerTransitioningDelegate>
@property (nonatomic, strong) PLVAssetModel *model;
@property (nonatomic, weak) PLVImagePickerController *imagePickerVc;
@end

@protocol PLVVideoEditViewDelegate <NSObject>
- (void)editViewCropRectBeginChange;
- (void)editViewCropRectEndChange;
@end

@interface PLVVideoEditView : UIView
@property (strong, nonatomic) UIImageView *beginImgView;
@property (strong, nonatomic) UIImageView *endImgView;
@property (strong, nonatomic) UIView *indicatorLine;
@property (assign, nonatomic) CGFloat videoDuration;
@property (assign, nonatomic) NSInteger maxCropVideoDuration;
@property (assign, nonatomic) CGRect cropRect;
@property (assign, nonatomic) CGFloat allImgWidth;
@property (assign, nonatomic) CGFloat minCropRectWidth;

@property (nonatomic, weak) id<PLVVideoEditViewDelegate> delegate;

- (void)resetIndicatorLine;
- (void)indicatorLineAnimateWithDuration:(NSTimeInterval)duration cropRect:(CGRect)cropRect;
@end



@interface PLVVideoPictureCell : UICollectionViewCell
@property (strong, nonatomic) UIImageView *imgView;
@end

NS_ASSUME_NONNULL_END
