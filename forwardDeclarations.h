#import <UIKit/UIKit.h>

// IMCore
@interface IMMessage : NSObject
-(NSString *)guid;
-(BOOL)isFromMe;
@end

@interface IMChat : NSObject
-(IMMessage *)lastFinishedMessage;
@end

// ChatKit
@interface CKMessagePartChatItem
-(BOOL)isFromMe;
-(IMMessage *)message;
@end

// ChatKit
@interface CKConversation : NSObject
-(IMChat *)chat;
-(BOOL)isGroupConversation;
-(NSString *)groupID;
@end

@interface CKAvatarView : UIView
-(UIViewController *)presentingViewController;
@end

@interface CKConversationListCellLayout
+(id)sharedInstance;
-(CGRect)unreadFrame;
@end

@interface CKConversationListCell : UITableViewCell
+(double)cellHeight;
-(CKAvatarView *)avatarView;
-(CKConversation *)conversation;

-(void)addLongPressRecognizer;
-(UIImageView *)getIndicator;
-(void)setIndicator:(UIImageView *)indicator;
@end