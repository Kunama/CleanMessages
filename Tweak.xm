#import "forwardDeclarations.h"
#import <libcolorpicker.h>
#define kBundlePath @"/Library/Application Support/CleanMessages/CleanMessagesBundle.bundle"

static CKUITheme *cleanMessages;

%hook CKUIBehavior
- (id)theme {
	return cleanMessages;
}
%end

%hook CKNavigationBarCanvasView
- (id)titleView {
	
		id tv = %orig;
		if (tv && [tv respondsToSelector:@selector(setTextColor:)]) {
			[(UILabel *)tv setTextColor:UIColor.redColor];
		}
		return tv;
	
}
%end

%hook CKDetailsContactsTableViewCell
- (UILabel *)nameLabel {
		UILabel *nl = %orig;
		nl.textColor = UIColor.redColor;
		return nl;
}
%end
%hook CKUITheme
- (UIColor *)transcriptNavBarTextColor {
	return [UIColor colorWithRed:0.9 green:0.2 blue:.1 alpha:1]; 
}

// NSBundle *CleanMessagesAssets = [[NSBundle alloc] initWithPath:kBundlePath];
// NSArray *imageNameArray = [[NSArray alloc] initWithObjects:@"1.png", @"2.png", @"3.png", @"4.png", @"5.png", nil];
// - (UIColor *)transcriptBackgroundColor {
// 	return [UIColor colorWithPatternImage:[UIImage imageNamed:[imageNameArray objectAtIndex:arc4random_uniform((uint32_t)[imageNameArray count])] inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]];//colorWithRed:0.2 green:0.2 blue:1 alpha:1]; //colorWithRed:0.61 green:0.59 blue:0.77 alpha:.8];
// }

%end

%hook CKTranscriptCollectionView
-(void)setContentSize:(CGSize)arg1{
	self.backgroundColor = [UIColor colorWithRed:0.61 green:0.59 blue:0.77 alpha:0];
	%orig;
}
%end

%hook CKUITheme
- (id)blue_balloonColors {
	return @[[UIColor colorWithRed:1 green:1 blue:1 alpha:.15]];
}
- (id)green_balloonColors {
	return @[[UIColor colorWithRed:1 green:1 blue:1 alpha:.15]];
}
- (id)gray_balloonColors {
	return @[[UIColor colorWithRed:1 green:1 blue:1 alpha:.15]];
}

- (id)blue_balloonTextColor {
	return [UIColor colorWithRed:1 green:1 blue:1 alpha:.9];
}
- (id)green_balloonTextColor {
	return [UIColor colorWithRed:1 green:1 blue:1 alpha:.9];
}
- (id)gray_balloonTextColor {
	return [UIColor colorWithRed:1 green:1 blue:1 alpha:9];
}
%end

%hook CKGradientReferenceView
NSBundle *CleanMessagesAssets = [[NSBundle alloc] initWithPath:kBundlePath];
// NSArray *imageNameArray = [[NSArray alloc] initWithObjects:@"1.png", @"2.png", @"3.png", @"4.png", @"5.png", nil];
// UIImage *gradientIm = 
 
-(void)setFrame:(CGRect)arg1{
	self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"1" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]];
	
	%orig;
}
// 
// 	%orig;
// 	// UIImageView *imgV =[[UIImageView alloc] initWithFrame:self.view.frame];
// 	// imgV.image=[UIImage imageNamed:[imageNameArray objectAtIndex:arc4random_uniform((uint32_t)[imageNameArray count])] inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil];
// 	// [self.view addSubview:imgV];
// }
%end

// %hook CKViewController
// NSBundle *CleanMessagesAssets = [[NSBundle alloc] initWithPath:kBundlePath];
// NSArray *imageNameArray = [[NSArray alloc] initWithObjects:@"1.png", @"2.png", @"3.png", @"4.png", @"5.png", nil];

// -(void)viewWillAppear:(BOOL)arg1{
// 	UIImageView *imgV =[[UIImageView alloc] initWithFrame:self.view.frame];
// 	imgV.image=[UIImage imageNamed:[imageNameArray objectAtIndex:arc4random_uniform((uint32_t)[imageNameArray count])] inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil];
// 	[self.view addSubview:imgV];
// }
// %end

// %hook CKTranscriptCollectionView
// NSBundle *CleanMessagesAssets = [[NSBundle alloc] initWithPath:kBundlePath];
// NSArray *imageNameArray = [[NSArray alloc] initWithObjects:@"1.png", @"2.png", @"3.png", @"4.png", @"5.png", nil];

// -(void)setBackgroundColor:(UIColor *)color
// {
// 	color = [UIColor colorWithPatternImage:[UIImage imageNamed:[imageNameArray objectAtIndex:arc4random_uniform((uint32_t)[imageNameArray count])] inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]];

// 	%orig;
// }



// %end

%hook CKBalloonView

-(BOOL)canUseOpaqueMask {
	return NO;
}
-(void)setCanUseOpaqueMask:(BOOL)arg1 {
    %orig(NO);
}
%end

%hook CKAvatarNavigationBar
// -(UIColor *)barTintColor{
// 	return [UIColor colorWithRed:0.2 green:0.1 blue:0.1 alpha:1];
// }

// -(void) layoutSubviews {
// 	%orig;
// 	self.barTintColor = [UIColor whiteColor];
	
// 	}

-(double)_backgroundOpacity{
	return 0.5;
}
// #define BACKGROUNDCOLOR 
// #define IMESSAGEBUBBLE [UIColor colorWithRed:0.49 green:0.73 blue:0.83 alpha:1.0]
// #define SMSBUBBLE [UIColor colorWithRed:1 green:1 blue:1 alpha:1.0]
// #define BLACKTEXT [UIColor colorWithRed:0.57 green:0.59 blue:0.62 alpha:1.0]
-(void)layoutSubviews{
	%orig;
	[self setTranslucent:NO];
	[self setBarTintColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"1" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]]];
	// [self setTintColor:SMSBUBBLE];
	
	self.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName:[UIFont fontWithName:@"Futura-Medium" size:15.5f]};
	[self setBarStyle:1];
}




// -(void)_commonNavBarInit {
//     %orig;
//     _UIBarBackground *barBackgroundView = MSHookIvar<_UIBarBackground *>(self, "_barBackgroundView");
//     [barBackgroundView setDDIsInAvatarNavigationBar:YES];
// }

%end
%hook CKMessageEntryView
-(UIColor *)ckTintColor {
	// UIColor *tintColor = %orig;
	// if([self.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")] || [self.superview.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")] || [self.superview.superview.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")]){
	return [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0];
	// }
	// return %orig;

}
-(void)setCkTintColor:(UIColor *)tintColor {
	%orig([UIColor colorWithRed:1 green:0 blue:0 alpha:1.0]);
}
-(void)setShouldHideBackgroundView:(BOOL)arg1{
	arg1=true;
	%orig;
}
- (void)updateEntryView {
	
	%orig;
	self.browserButton.hidden = YES;
	self.audioButton.hidden = YES;
	// self.photoButton.ckTintColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0];
}
%end
%ctor {
	//NSLog(@"%@", imagePath);
	@autoreleasepool {
		cleanMessages = [[%c(CKUITheme) alloc] init];
		%init;
	}
}



