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
// -(void)tryIm;
@end

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

@property (nonatomic,retain) CKEntryViewButton * browserButton;                                                         //@synthesize browserButton=_browserButton - In the implementation block
@property (nonatomic,retain) CKEntryViewButton * photoButton;
@property (nonatomic,retain) CKEntryViewButton * audioButton;                                                           //@synthesize audioButton=_audioButton - In the implementation block



@end

// @interface _UIBarBackground : UIView
// @end

// @interface _UIBarBackground (CleanMessages)
// @property (nonatomic, assign) BOOL DDIsInAvatarNavigationBar;
// @end