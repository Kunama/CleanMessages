#import "forwardDeclarations.h"
// #import <libcolorpicker.h>
// #import <UIKit/UIKit.h> 
#define kBundlePath @"/Library/Application Support/CleanMessages/CleanMessagesBundle.bundle"
#define UIColorFromRGB(rgbHex) [UIColor colorWithRed:((float)((rgbHex & 0xFF0000) >> 16))/255.0 green:((float)((rgbHex & 0xFF00) >> 8))/255.0 blue:((float)(rgbHex & 0xFF))/255.0 alpha:1.0]
// #import "cleanMessagesColors.h"
static CKUITheme *cleanMessages;
// static UIColor *bgColor;



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
// %hook UILayoutContainerView
// -(void)setFrame:(CGRect)arg1{
// 	self.backgroundColor = [UIColor whiteColor];
// }
// %end

%hook CKGradientReferenceView
//NSBundle *CleanMessagesAssets = [[NSBundle alloc] initWithPath:kBundlePath];
// NSArray *imageNameArray = [[NSArray alloc] initWithObjects:@"1.png", @"2.png", @"3.png", @"4.png", @"5.png", nil];
// UIImage *gradientIm = 
 
-(void)setFrame:(CGRect)arg1{
	CGRect screenRect = [[UIScreen mainScreen] bounds];
	CGFloat screenWidth = screenRect.size.width;
	CGFloat screenHeight = screenRect.size.height;
	CGSize size = CGSizeMake(screenWidth, screenHeight);
	CAGradientLayer *layer = [CAGradientLayer layer];
	layer.frame = CGRectMake(0, 0, size.width, size.height);
	layer.colors = @[(__bridge id) UIColorFromRGB(0x12c2e9).CGColor,  // start color
					(__bridge id) UIColorFromRGB(0xc471ed).CGColor,
					(__bridge id) UIColorFromRGB(0xf64f59).CGColor]; // end color
	layer.startPoint = CGPointZero;
	layer.endPoint = CGPointMake(.3, 1);
	UIGraphicsBeginImageContext(size);
	@try {
	[layer renderInContext:UIGraphicsGetCurrentContext()];
	// UIImage *backgroundImage = UIGraphicsGetImageFromCurrentImageContext();
	UIColor *bgColor = [UIColor colorWithPatternImage:UIGraphicsGetImageFromCurrentImageContext()];
	self.backgroundColor = bgColor;
	// self.backgroundColor = bgColor;//[UIImage imageNamed:@"1" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]];

	} @finally {
	UIGraphicsEndImageContext();
	}
	
	
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
	return 0.8;
}
// #define BACKGROUNDCOLOR 
// #define IMESSAGEBUBBLE [UIColor colorWithRed:0.49 green:0.73 blue:0.83 alpha:1.0]
// #define SMSBUBBLE [UIColor colorWithRed:1 green:1 blue:1 alpha:1.0]
// #define BLACKTEXT [UIColor colorWithRed:0.57 green:0.59 blue:0.62 alpha:1.0]
-(void)layoutSubviews{
	%orig;
	[self setTranslucent:NO];


	CGRect screenRect = [[UIScreen mainScreen] bounds];
	CGFloat screenWidth = screenRect.size.width;
	CGFloat screenHeight = screenRect.size.height;
	CGSize size = CGSizeMake(screenWidth, screenHeight);
	CAGradientLayer *layer = [CAGradientLayer layer];
	layer.frame = CGRectMake(0, 0, size.width, size.height);
	layer.colors = @[(__bridge id) UIColorFromRGB(0x12c2e9).CGColor,  // start color
					(__bridge id) UIColorFromRGB(0xc471ed).CGColor,
					(__bridge id) UIColorFromRGB(0xf64f59).CGColor]; // end color
	layer.startPoint = CGPointZero;
	layer.endPoint = CGPointMake(.3, 1);
	UIGraphicsBeginImageContext(size);
	@try {
	[layer renderInContext:UIGraphicsGetCurrentContext()];
	// UIImage *backgroundImage = UIGraphicsGetImageFromCurrentImageContext();
	UIColor *bgColor = [UIColor colorWithPatternImage:UIGraphicsGetImageFromCurrentImageContext()];
	// self.backgroundColor = bgColor;//[UIImage imageNamed:@"1" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]];
	[self setBarTintColor:bgColor];
	} @finally {
	UIGraphicsEndImageContext();
	}


	//[UIColor colorWithPatternImage:[UIImage imageNamed:@"1" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]]];
	// [self setTintColor:SMSBUBBLE];
	
	self.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName:[UIFont fontWithName:@"Futura-Medium" size:15.5f]};
	[self setBarStyle:0];
}




// -(void)_commonNavBarInit {
//     %orig;
//     _UIBarBackground *barBackgroundView = MSHookIvar<_UIBarBackground *>(self, "_barBackgroundView");
//     [barBackgroundView setDDIsInAvatarNavigationBar:YES];
// }

%end

%hook CKEntryViewButton

-(UIColor *)ckTintColor {
    UIColor *tintColor = %orig;
    if(([self.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")] || [self.superview.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")] || [self.superview.superview.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")])){
        return [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0];
    }
    return tintColor;
}

-(void)setCkTintColor:(UIColor *)tintColor {
    if(([self.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")] || [self.superview.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")] || [self.superview.superview.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")])){
        %orig([UIColor colorWithRed:1 green:0 blue:0 alpha:1.0]);
    } else {
        %orig;
    }
}

%end

%hook CKMessageEntryView
// -(UIColor *)ckTintColor {
// 	UIColor *tintColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0];
// 	// if([self.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")] || [self.superview.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")] || [self.superview.superview.superview isKindOfClass:NSClassFromString(@"CKMessageEntryView")]){
// 	return tintColor;
// 	// }
// 	// return %orig;

// }



// -(void)setCkTintColor:(UIColor *)tintColor {
// 	%orig([UIColor colorWithRed:1 green:0 blue:0 alpha:1.0]);
// }
-(void)setShouldHideBackgroundView:(BOOL)arg1{
	arg1=false;
	%orig;
}
- (void)updateEntryView {
	
	%orig;
	self.browserButton.hidden = YES;
	self.audioButton.hidden = YES;
	self.arrowButton.hidden = NO;
	self.sendButton.hidden = NO;
	CGRect screenRect = [[UIScreen mainScreen] bounds];
	CGFloat screenWidth = screenRect.size.width;
	CGFloat screenHeight = screenRect.size.height;
	CGSize size = CGSizeMake(screenWidth, screenHeight);
	CAGradientLayer *layer = [CAGradientLayer layer];
	layer.frame = CGRectMake(0, 0, size.width, size.height);
	layer.colors = @[(__bridge id) UIColorFromRGB(0x12c2e9).CGColor,  // start color
					(__bridge id) UIColorFromRGB(0xc471ed).CGColor,
					(__bridge id) UIColorFromRGB(0xf64f59).CGColor]; // end color
	layer.startPoint = CGPointZero;
	layer.endPoint = CGPointMake(.3, 1);
	UIGraphicsBeginImageContext(size);
	@try {
	[layer renderInContext:UIGraphicsGetCurrentContext()];
	// UIImage *backgroundImage = UIGraphicsGetImageFromCurrentImageContext();
	UIColor *bgColor = [UIColor colorWithPatternImage:UIGraphicsGetImageFromCurrentImageContext()];
	// self.backgroundColor = bgColor;//[UIImage imageNamed:@"1" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]];
	self.backgroundColor=bgColor;
	} @finally {
	UIGraphicsEndImageContext();
	}
	//MSHookIvar<UIView *>(self, "_grayscaleTintView").backgroundColor = [UIColor redColor];
	

	// self.photoButton.ckTintColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0];
}
%end

static UILabel *contactName;

%hook CKAvatarContactNameCollectionReusableView

-(void)layoutSubviews {
    contactName = MSHookIvar<UILabel *>(self, "_titleLabel");
    %orig;
}

%end

%hook CKMessageEntryContentView

-(void)setPlaceholderText:(NSString *)arg1 {
    if (contactName != nil) {
        %orig(contactName.text);
    } else {
        %orig;
    }
}

%end
//Hide Avatar in NavigationBar
// %hook CKAvatarNavigationBar
// -(void)layoutSubviews{
//     %orig;
//     self.backgroundColor = [UIColor clearColor];
// }
// %end

%hook CKMessageEntryContentView  
-(void)layoutSubviews
{ 
	%orig; 
	self.backgroundColor = [UIColor redColor]; 
} 
%end



%ctor {
	//NSLog(@"%@", imagePath);
	@autoreleasepool {
		cleanMessages = [[%c(CKUITheme) alloc] init];
		%init;
	}
}



