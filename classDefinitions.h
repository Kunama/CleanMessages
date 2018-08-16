// #import "forwardDeclarations.h"
// #import <libcolorpicker.h>

// @interface CKUITheme : NSObject
// @end

// @interface CKUIThemeDark : CKUITheme
// - (UIColor *)entryFieldButtonColor;
// - (UIColor *)entryFieldDarkStyleButtonColor;
// - (id)blue_balloonColors;
// - (id)green_balloonColors;
// - (id)gray_balloonColors;
// @end

// static CKUIThemeDark *darkTheme;

// //Changes the theme to the dark theme, just does darker text until the bottom %ctor is added
// %hook CKUIBehaviorPhone
// - (id)theme {
// 	return darkTheme;
// }
// %end

// //Makes the new message label after creating a new text message red
// %hook CKNavigationBarCanvasView
// - (id)titleView {
	
// 		id tv = %orig;
// 		if (tv && [tv respondsToSelector:@selector(setTextColor:)]) {
// 			[(UILabel *)tv setTextColor:UIColor.redColor];
// 		}
// 		return tv;
	
// }
// %end

// //Makes the contacts names red
// %hook CKDetailsContactsTableViewCell
// - (UILabel *)nameLabel {
	
// 		UILabel *nl = %orig;
// 		nl.textColor = UIColor.redColor;
// 		return nl;
	
// }
// %end

// //Makes the background black
// %ctor {
// 	@autoreleasepool {
	
		
// 		darkTheme = [[%c(CKUIThemeDark) alloc] init];
// 		%init;
		
		
		
// 	}
// }
