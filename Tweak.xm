#import "forwardDeclarations.h"
#import <libcolorpicker.h>
#define kBundlePath @"/Library/Application Support/CleanMessages/CleanMessagesBundle.bundle"



@interface CKUITheme : NSObject
- (UIColor *)entryFieldButtonColor;
- (id)blue_balloonColors;
- (id)green_balloonColors;
- (id)gray_balloonColors;
- (UIColor *)transcriptBackgroundColor;
- (UIColor *)transcriptNavBarTextColor;
@end

//@interface CKGradientReferenceView : NSObject
//- (UIColor *)CKGradientReferenceView;
//@end


static CKUITheme *cleanMessages;

%hook CKUIBehaviorPhone
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
//Changes bubble colors to clear
%hook CKUITheme
/*
- (id)blue_balloonColors {
	return @[ [UIColor colorWithRed:183.0f/255.0f
                green:183.0f/255.0f
                 blue:183.0f/255.0f
                alpha:0.1f] ];
}
- (id)green_balloonColors {
		return @[ [UIColor clearColor], [UIColor clearColor]];
}
- (id)gray_balloonColors {
		return @[[UIColor colorWithRed:0.61 green:0.59 blue:0.77 alpha:.5]];
}

//Changes ballon text color
- (id)blue_balloonTextColor {
	return [UIColor colorWithRed:0.61 green:0.59 blue:0.77 alpha:.8];
}
- (id)green_balloonTextColor {
	return [UIColor colorWithRed:0.61 green:0.59 blue:0.77 alpha:.8];
}
- (id)gray_balloonTextColor {
	return [UIColor colorWithRed:0.61 green:0.59 blue:0.77 alpha:.8];
}*/

//NSBundle *bundle = [[[NSBundle alloc] initWithPath:kBundlePath] autorelease];
//NSString *imagePath = [bundle pathForResource:@"Timber" ofType:@"png"];
NSBundle *CleanMessagesAssets = [[NSBundle alloc] initWithPath:kBundlePath];
//UIImage *backgroundIm = [UIImage imageNamed:@"Timber1.png" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil];


//Changes the background color of the message thread
- (UIColor *)transcriptBackgroundColor {
	return [UIColor colorWithPatternImage:[UIImage imageNamed:@"Timber.png" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]];//colorWithRed:0.2 green:0.2 blue:1 alpha:1]; //colorWithRed:0.61 green:0.59 blue:0.77 alpha:.8];
}
- (UIColor *)transcriptNavBarTextColor {
	return [UIColor colorWithRed:0.9 green:0.2 blue:.1 alpha:1]; //colorWithRed:0.61 green:0.59 blue:0.77 alpha:.8];
}

%end
/*
%hook CKGradientReferenceView
- (UIColor *)backgroundColor {
	return [UIColor colorWithRed:0.61 green:0.59 blue:0.77 alpha:1];
}
%end*/
%ctor {
	//NSLog(@"%@", imagePath);
	@autoreleasepool {
		cleanMessages = [[%c(CKUITheme) alloc] init];
		%init;
		
	}
	
}
