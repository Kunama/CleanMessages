#line 1 "Tweak.xm"
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






static CKUITheme *cleanMessages;


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CKUITheme; @class CKDetailsContactsTableViewCell; @class CKNavigationBarCanvasView; @class CKUIBehaviorPhone; 
static id (*_logos_orig$_ungrouped$CKUIBehaviorPhone$theme)(_LOGOS_SELF_TYPE_NORMAL CKUIBehaviorPhone* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUIBehaviorPhone$theme(_LOGOS_SELF_TYPE_NORMAL CKUIBehaviorPhone* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKNavigationBarCanvasView$titleView)(_LOGOS_SELF_TYPE_NORMAL CKNavigationBarCanvasView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKNavigationBarCanvasView$titleView(_LOGOS_SELF_TYPE_NORMAL CKNavigationBarCanvasView* _LOGOS_SELF_CONST, SEL); static UILabel * (*_logos_orig$_ungrouped$CKDetailsContactsTableViewCell$nameLabel)(_LOGOS_SELF_TYPE_NORMAL CKDetailsContactsTableViewCell* _LOGOS_SELF_CONST, SEL); static UILabel * _logos_method$_ungrouped$CKDetailsContactsTableViewCell$nameLabel(_LOGOS_SELF_TYPE_NORMAL CKDetailsContactsTableViewCell* _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$_ungrouped$CKUITheme$transcriptBackgroundColor)(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$CKUITheme$transcriptBackgroundColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$_ungrouped$CKUITheme$transcriptNavBarTextColor)(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$CKUITheme$transcriptNavBarTextColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CKUITheme(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CKUITheme"); } return _klass; }
#line 23 "Tweak.xm"

static id _logos_method$_ungrouped$CKUIBehaviorPhone$theme(_LOGOS_SELF_TYPE_NORMAL CKUIBehaviorPhone* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return cleanMessages;
}



static id _logos_method$_ungrouped$CKNavigationBarCanvasView$titleView(_LOGOS_SELF_TYPE_NORMAL CKNavigationBarCanvasView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	
		id tv = _logos_orig$_ungrouped$CKNavigationBarCanvasView$titleView(self, _cmd);
		if (tv && [tv respondsToSelector:@selector(setTextColor:)]) {
			[(UILabel *)tv setTextColor:UIColor.redColor];
		}
		return tv;
	
}



static UILabel * _logos_method$_ungrouped$CKDetailsContactsTableViewCell$nameLabel(_LOGOS_SELF_TYPE_NORMAL CKDetailsContactsTableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	
		UILabel *nl = _logos_orig$_ungrouped$CKDetailsContactsTableViewCell$nameLabel(self, _cmd);
		nl.textColor = UIColor.redColor;
		return nl;
	
}






























NSBundle *CleanMessagesAssets = [[NSBundle alloc] initWithPath:kBundlePath];




static UIColor * _logos_method$_ungrouped$CKUITheme$transcriptBackgroundColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return [UIColor colorWithPatternImage:[UIImage imageNamed:@"Timber.png" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]];
}
static UIColor * _logos_method$_ungrouped$CKUITheme$transcriptNavBarTextColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return [UIColor colorWithRed:0.9 green:0.2 blue:.1 alpha:1]; 
}








static __attribute__((constructor)) void _logosLocalCtor_85ce3af9(int __unused argc, char __unused **argv, char __unused **envp) {
	
	@autoreleasepool {
		cleanMessages = [[_logos_static_class_lookup$CKUITheme() alloc] init];
		{Class _logos_class$_ungrouped$CKUIBehaviorPhone = objc_getClass("CKUIBehaviorPhone"); MSHookMessageEx(_logos_class$_ungrouped$CKUIBehaviorPhone, @selector(theme), (IMP)&_logos_method$_ungrouped$CKUIBehaviorPhone$theme, (IMP*)&_logos_orig$_ungrouped$CKUIBehaviorPhone$theme);Class _logos_class$_ungrouped$CKNavigationBarCanvasView = objc_getClass("CKNavigationBarCanvasView"); MSHookMessageEx(_logos_class$_ungrouped$CKNavigationBarCanvasView, @selector(titleView), (IMP)&_logos_method$_ungrouped$CKNavigationBarCanvasView$titleView, (IMP*)&_logos_orig$_ungrouped$CKNavigationBarCanvasView$titleView);Class _logos_class$_ungrouped$CKDetailsContactsTableViewCell = objc_getClass("CKDetailsContactsTableViewCell"); MSHookMessageEx(_logos_class$_ungrouped$CKDetailsContactsTableViewCell, @selector(nameLabel), (IMP)&_logos_method$_ungrouped$CKDetailsContactsTableViewCell$nameLabel, (IMP*)&_logos_orig$_ungrouped$CKDetailsContactsTableViewCell$nameLabel);Class _logos_class$_ungrouped$CKUITheme = objc_getClass("CKUITheme"); MSHookMessageEx(_logos_class$_ungrouped$CKUITheme, @selector(transcriptBackgroundColor), (IMP)&_logos_method$_ungrouped$CKUITheme$transcriptBackgroundColor, (IMP*)&_logos_orig$_ungrouped$CKUITheme$transcriptBackgroundColor);MSHookMessageEx(_logos_class$_ungrouped$CKUITheme, @selector(transcriptNavBarTextColor), (IMP)&_logos_method$_ungrouped$CKUITheme$transcriptNavBarTextColor, (IMP*)&_logos_orig$_ungrouped$CKUITheme$transcriptNavBarTextColor);}
		
	}
	
}
