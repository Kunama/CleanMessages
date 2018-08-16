#import <UIKit/UIKit.h>

// // IMCore
// @interface IMMessage : NSObject
// -(NSString *)guid;
// -(BOOL)isFromMe;
// @end

// @interface IMChat : NSObject
// -(IMMessage *)lastFinishedMessage;
// @end

// // ChatKit
// @interface CKMessagePartChatItem
// -(BOOL)isFromMe;
// -(IMMessage *)message;
// @end

// // ChatKit
// @interface CKConversation : NSObject
// -(IMChat *)chat;
// -(BOOL)isGroupConversation;
// -(NSString *)groupID;
// @end

// @interface CKAvatarView : UIView
// -(UIViewController *)presentingViewController;
// @end

// @interface CKConversationListCellLayout
// +(id)sharedInstance;
// -(CGRect)unreadFrame;
// @end

// @interface CKConversationListCell : UITableViewCell
// +(double)cellHeight;
// -(CKAvatarView *)avatarView;
// -(CKConversation *)conversation;

// -(void)addLongPressRecognizer;
// -(UIImageView *)getIndicator;
// -(void)setIndicator:(UIImageView *)indicator;
// @end

@interface CKUITheme : NSObject
- (UIColor *)entryFieldButtonColor;
- (id)blue_balloonColors;
- (id)green_balloonColors;
- (id)gray_balloonColors;
- (UIColor *)transcriptBackgroundColor;
- (UIColor *)browserBackgroundColor;
- (UIColor *)transcriptNavBarTextColor;
@end

@interface CKGradientReferenceView : UIViewController
@property(nonatomic, assign, readwrite) UIColor *backgroundColor;
@end

// @interface UILayoutContainerView : UIView
// @property(nonatomic, assign, readwrite) UIColor *backgroundColor;
// @end

@interface CKTranscriptCollectionView : NSObject
@property(nonatomic, copy, readwrite) UIColor *backgroundColor;
-(void)setBackgroundView:(UIView *)arg1;
@end

@interface _UIVisualEffectSubview : NSObject
@property(nonatomic, assign, readwrite) CGFloat alpha;
@end

// @interface CKTranscriptCollectionViewController : UIViewController
// @end

@interface CKViewController : UIViewController
@end

@interface CKAvatarNavigationBar : UINavigationBar
- (UIColor *)barTintColor;
-(double)_backgroundOpacity;
-(double)_titleOpacity;

@end
@interface CKEntryViewButton : UIButton
@property (nonatomic,retain) UIColor * ckTintColor; 
@end
@interface CKMessageEntryView : UIView <UIAlertViewDelegate>
@property(nonatomic, assign, readwrite) UIColor *backgroundColor;
@property (nonatomic,retain) CKEntryViewButton * browserButton;                                                         //@synthesize browserButton=_browserButton - In the implementation block
@property (nonatomic,retain) CKEntryViewButton * photoButton;
@property (nonatomic,retain) CKEntryViewButton * audioButton;                                                           //@synthesize audioButton=_audioButton - In the implementation block
@property (nonatomic,retain) CKEntryViewButton * arrowButton;
@property (nonatomic,retain) CKEntryViewButton * sendButton;                                                            //@synthesize sendButton=_sendButton - In the implementation block


@end
@interface _UIBackdropView : UIView
@end
@interface _UIBackdropViewSettings : NSObject
@property (nonatomic,retain) UIColor * colorTint; 

@end

// @interface

// @interface UIColor (CleanMessages)

// +(UIColor *) bgColor;

// @end

// @implementation UIColor (CleanMessages)
//  CGRect screenRect = [[UIScreen mainScreen] bounds];
// 	CGFloat screenWidth = screenRect.size.width;
// 	CGFloat screenHeight = screenRect.size.height;
// 	CGSize size = CGSizeMake(screenWidth, screenHeight);
// 	CAGradientLayer *layer = [CAGradientLayer layer];
// 	layer.frame = CGRectMake(0, 0, size.width, size.height);
// 	layer.colors = @[(__bridge id) UIColorFromRGB(0x12c2e9).CGColor,  // start color
// 					(__bridge id) UIColorFromRGB(0xc471ed).CGColor,
// 					(__bridge id) UIColorFromRGB(0xf64f59).CGColor]; // end color
// 	layer.startPoint = CGPointZero;
// 	layer.endPoint = CGPointMake(.3, 1);
// 	UIGraphicsBeginImageContext(size);
// 	@try {
// 	[layer renderInContext:UIGraphicsGetCurrentContext()];
// 	// UIImage *backgroundImage = UIGraphicsGetImageFromCurrentImageContext();
// 	//UIColor *bgColor = [UIColor colorWithPatternImage:UIGraphicsGetImageFromCurrentImageContext()];
// 	+(UIColor *) bgColor { return [UIColor colorWithPatternImage:UIGraphicsGetImageFromCurrentImageContext()]; }

// 	} @finally {
// 	UIGraphicsEndImageContext();
// 	}


// @end

// @interface _UIBarBackground : UIView
// @end

// @interface _UIBarBackground (CleanMessages)
// @property (nonatomic, assign) BOOL DDIsInAvatarNavigationBar;
// @end

@interface CKMessageEntryContentView : UIView 
@property(nonatomic, assign, readwrite) UIColor *backgroundColor;
@end