#import "forwardDeclarations.h"
#import <libcolorpicker.h>

@interface CKUITheme : NSObject
@end

@interface CKUIThemeDark : CKUITheme
- (UIColor *)entryFieldButtonColor;
- (UIColor *)entryFieldDarkStyleButtonColor;
- (id)blue_balloonColors;
- (id)green_balloonColors;
- (id)gray_balloonColors;
@end

static CKUIThemeDark *darkTheme;

%hook CKUIBehaviorPhone
- (id)theme {
	return darkTheme;
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
%hook CKUIThemeDark
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
		return @[ [UIColor clearColor], [UIColor clearColor] ];
}
/*
- (id)blue_balloonTextColor {
	if (isDark && blueBalloonColor && ![blueBalloonColor isEqualToString:@"default"]) {
		UIColor *balloonColor = [UIColor colorFromHexString:blueBalloonColor];
		return ([balloonColor isLightColor]) ? UIColor.blackColor : UIColor.whiteColor;
	} else {
		return %orig;
	}
}
- (id)green_balloonTextColor {
	if (isDark && greenBalloonColor && ![greenBalloonColor isEqualToString:@"default"]) {
		UIColor *balloonColor = [UIColor colorFromHexString:greenBalloonColor];
		return ([balloonColor isLightColor]) ? UIColor.blackColor : UIColor.whiteColor;
	} else {
		return %orig;
	}
}
- (id)gray_balloonTextColor {
	if (isDark && grayBalloonColor && ![grayBalloonColor isEqualToString:@"default"]) {
		UIColor *balloonColor = [UIColor colorFromHexString:grayBalloonColor];
		return ([balloonColor isLightColor]) ? UIColor.blackColor : UIColor.whiteColor;
	} else {
		return %orig;
	}
}*/
%end

%ctor {
	@autoreleasepool {
	
		
		darkTheme = [[%c(CKUIThemeDark) alloc] init];
		%init;
		
		
		
	}
}
