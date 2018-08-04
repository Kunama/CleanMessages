#line 1 "Tweak.xm"
#import "forwardDeclarations.h"
#import <libcolorpicker.h>
#define kBundlePath @"/Library/Application Support/CleanMessages/CleanMessagesBundle.bundle"

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

@class CKUITheme; @class CKMessageEntryView; @class CKTranscriptCollectionView; @class CKGradientReferenceView; @class CKDetailsContactsTableViewCell; @class CKNavigationBarCanvasView; @class CKBalloonView; @class CKAvatarNavigationBar; @class CKUIBehavior; 
static id (*_logos_orig$_ungrouped$CKUIBehavior$theme)(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUIBehavior$theme(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKNavigationBarCanvasView$titleView)(_LOGOS_SELF_TYPE_NORMAL CKNavigationBarCanvasView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKNavigationBarCanvasView$titleView(_LOGOS_SELF_TYPE_NORMAL CKNavigationBarCanvasView* _LOGOS_SELF_CONST, SEL); static UILabel * (*_logos_orig$_ungrouped$CKDetailsContactsTableViewCell$nameLabel)(_LOGOS_SELF_TYPE_NORMAL CKDetailsContactsTableViewCell* _LOGOS_SELF_CONST, SEL); static UILabel * _logos_method$_ungrouped$CKDetailsContactsTableViewCell$nameLabel(_LOGOS_SELF_TYPE_NORMAL CKDetailsContactsTableViewCell* _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$_ungrouped$CKUITheme$transcriptNavBarTextColor)(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$CKUITheme$transcriptNavBarTextColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKUITheme$blue_balloonColors)(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUITheme$blue_balloonColors(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKUITheme$green_balloonColors)(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUITheme$green_balloonColors(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKUITheme$gray_balloonColors)(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUITheme$gray_balloonColors(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKUITheme$blue_balloonTextColor)(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUITheme$blue_balloonTextColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKUITheme$green_balloonTextColor)(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUITheme$green_balloonTextColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CKUITheme$gray_balloonTextColor)(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CKUITheme$gray_balloonTextColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CKTranscriptCollectionView$setContentSize$)(_LOGOS_SELF_TYPE_NORMAL CKTranscriptCollectionView* _LOGOS_SELF_CONST, SEL, CGSize); static void _logos_method$_ungrouped$CKTranscriptCollectionView$setContentSize$(_LOGOS_SELF_TYPE_NORMAL CKTranscriptCollectionView* _LOGOS_SELF_CONST, SEL, CGSize); static void (*_logos_orig$_ungrouped$CKGradientReferenceView$setFrame$)(_LOGOS_SELF_TYPE_NORMAL CKGradientReferenceView* _LOGOS_SELF_CONST, SEL, CGRect); static void _logos_method$_ungrouped$CKGradientReferenceView$setFrame$(_LOGOS_SELF_TYPE_NORMAL CKGradientReferenceView* _LOGOS_SELF_CONST, SEL, CGRect); static BOOL (*_logos_orig$_ungrouped$CKBalloonView$canUseOpaqueMask)(_LOGOS_SELF_TYPE_NORMAL CKBalloonView* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$CKBalloonView$canUseOpaqueMask(_LOGOS_SELF_TYPE_NORMAL CKBalloonView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CKBalloonView$setCanUseOpaqueMask$)(_LOGOS_SELF_TYPE_NORMAL CKBalloonView* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$CKBalloonView$setCanUseOpaqueMask$(_LOGOS_SELF_TYPE_NORMAL CKBalloonView* _LOGOS_SELF_CONST, SEL, BOOL); static double (*_logos_orig$_ungrouped$CKAvatarNavigationBar$_backgroundOpacity)(_LOGOS_SELF_TYPE_NORMAL CKAvatarNavigationBar* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$CKAvatarNavigationBar$_backgroundOpacity(_LOGOS_SELF_TYPE_NORMAL CKAvatarNavigationBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CKAvatarNavigationBar$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL CKAvatarNavigationBar* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CKAvatarNavigationBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CKAvatarNavigationBar* _LOGOS_SELF_CONST, SEL); static UIColor * (*_logos_orig$_ungrouped$CKMessageEntryView$ckTintColor)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL); static UIColor * _logos_method$_ungrouped$CKMessageEntryView$ckTintColor(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CKMessageEntryView$setCkTintColor$)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL, UIColor *); static void _logos_method$_ungrouped$CKMessageEntryView$setCkTintColor$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL, UIColor *); static void (*_logos_orig$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL, BOOL); static void (*_logos_orig$_ungrouped$CKMessageEntryView$updateEntryView)(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CKMessageEntryView$updateEntryView(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CKUITheme(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CKUITheme"); } return _klass; }
#line 7 "Tweak.xm"

static id _logos_method$_ungrouped$CKUIBehavior$theme(_LOGOS_SELF_TYPE_NORMAL CKUIBehavior* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
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


static UIColor * _logos_method$_ungrouped$CKUITheme$transcriptNavBarTextColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return [UIColor colorWithRed:0.9 green:0.2 blue:.1 alpha:1]; 
}










static void _logos_method$_ungrouped$CKTranscriptCollectionView$setContentSize$(_LOGOS_SELF_TYPE_NORMAL CKTranscriptCollectionView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGSize arg1){
	self.backgroundColor = [UIColor colorWithRed:0.61 green:0.59 blue:0.77 alpha:0];
	_logos_orig$_ungrouped$CKTranscriptCollectionView$setContentSize$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$CKUITheme$blue_balloonColors(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return @[[UIColor colorWithRed:1 green:1 blue:1 alpha:.15]];
}
static id _logos_method$_ungrouped$CKUITheme$green_balloonColors(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return @[[UIColor colorWithRed:1 green:1 blue:1 alpha:.15]];
}
static id _logos_method$_ungrouped$CKUITheme$gray_balloonColors(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return @[[UIColor colorWithRed:1 green:1 blue:1 alpha:.15]];
}

static id _logos_method$_ungrouped$CKUITheme$blue_balloonTextColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return [UIColor colorWithRed:1 green:1 blue:1 alpha:.9];
}
static id _logos_method$_ungrouped$CKUITheme$green_balloonTextColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return [UIColor colorWithRed:1 green:1 blue:1 alpha:.9];
}
static id _logos_method$_ungrouped$CKUITheme$gray_balloonTextColor(_LOGOS_SELF_TYPE_NORMAL CKUITheme* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return [UIColor colorWithRed:1 green:1 blue:1 alpha:9];
}



NSBundle *CleanMessagesAssets = [[NSBundle alloc] initWithPath:kBundlePath];


 
static void _logos_method$_ungrouped$CKGradientReferenceView$setFrame$(_LOGOS_SELF_TYPE_NORMAL CKGradientReferenceView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect arg1){
	self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"1" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]];
	
	_logos_orig$_ungrouped$CKGradientReferenceView$setFrame$(self, _cmd, arg1);
}




































static BOOL _logos_method$_ungrouped$CKBalloonView$canUseOpaqueMask(_LOGOS_SELF_TYPE_NORMAL CKBalloonView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return NO;
}
static void _logos_method$_ungrouped$CKBalloonView$setCanUseOpaqueMask$(_LOGOS_SELF_TYPE_NORMAL CKBalloonView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
    _logos_orig$_ungrouped$CKBalloonView$setCanUseOpaqueMask$(self, _cmd, NO);
}










	


static double _logos_method$_ungrouped$CKAvatarNavigationBar$_backgroundOpacity(_LOGOS_SELF_TYPE_NORMAL CKAvatarNavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	return 0.5;
}




static void _logos_method$_ungrouped$CKAvatarNavigationBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL CKAvatarNavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
	_logos_orig$_ungrouped$CKAvatarNavigationBar$layoutSubviews(self, _cmd);
	[self setTranslucent:NO];
	[self setBarTintColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"1" inBundle:CleanMessagesAssets compatibleWithTraitCollection:nil]]];
	
	
	self.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor], NSFontAttributeName:[UIFont fontWithName:@"Futura-Medium" size:15.5f]};
	[self setBarStyle:1];
}












static UIColor * _logos_method$_ungrouped$CKMessageEntryView$ckTintColor(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	
	
	return [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0];
	
	

}
static void _logos_method$_ungrouped$CKMessageEntryView$setCkTintColor$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIColor * tintColor) {
	_logos_orig$_ungrouped$CKMessageEntryView$setCkTintColor$(self, _cmd, [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0]);
}
static void _logos_method$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1){
	arg1=true;
	_logos_orig$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$(self, _cmd, arg1);
}
static void _logos_method$_ungrouped$CKMessageEntryView$updateEntryView(_LOGOS_SELF_TYPE_NORMAL CKMessageEntryView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	
	_logos_orig$_ungrouped$CKMessageEntryView$updateEntryView(self, _cmd);
	self.browserButton.hidden = YES;
	self.audioButton.hidden = YES;
	
}

static __attribute__((constructor)) void _logosLocalCtor_302198de(int __unused argc, char __unused **argv, char __unused **envp) {
	
	@autoreleasepool {
		cleanMessages = [[_logos_static_class_lookup$CKUITheme() alloc] init];
		{Class _logos_class$_ungrouped$CKUIBehavior = objc_getClass("CKUIBehavior"); MSHookMessageEx(_logos_class$_ungrouped$CKUIBehavior, @selector(theme), (IMP)&_logos_method$_ungrouped$CKUIBehavior$theme, (IMP*)&_logos_orig$_ungrouped$CKUIBehavior$theme);Class _logos_class$_ungrouped$CKNavigationBarCanvasView = objc_getClass("CKNavigationBarCanvasView"); MSHookMessageEx(_logos_class$_ungrouped$CKNavigationBarCanvasView, @selector(titleView), (IMP)&_logos_method$_ungrouped$CKNavigationBarCanvasView$titleView, (IMP*)&_logos_orig$_ungrouped$CKNavigationBarCanvasView$titleView);Class _logos_class$_ungrouped$CKDetailsContactsTableViewCell = objc_getClass("CKDetailsContactsTableViewCell"); MSHookMessageEx(_logos_class$_ungrouped$CKDetailsContactsTableViewCell, @selector(nameLabel), (IMP)&_logos_method$_ungrouped$CKDetailsContactsTableViewCell$nameLabel, (IMP*)&_logos_orig$_ungrouped$CKDetailsContactsTableViewCell$nameLabel);Class _logos_class$_ungrouped$CKUITheme = objc_getClass("CKUITheme"); MSHookMessageEx(_logos_class$_ungrouped$CKUITheme, @selector(transcriptNavBarTextColor), (IMP)&_logos_method$_ungrouped$CKUITheme$transcriptNavBarTextColor, (IMP*)&_logos_orig$_ungrouped$CKUITheme$transcriptNavBarTextColor);MSHookMessageEx(_logos_class$_ungrouped$CKUITheme, @selector(blue_balloonColors), (IMP)&_logos_method$_ungrouped$CKUITheme$blue_balloonColors, (IMP*)&_logos_orig$_ungrouped$CKUITheme$blue_balloonColors);MSHookMessageEx(_logos_class$_ungrouped$CKUITheme, @selector(green_balloonColors), (IMP)&_logos_method$_ungrouped$CKUITheme$green_balloonColors, (IMP*)&_logos_orig$_ungrouped$CKUITheme$green_balloonColors);MSHookMessageEx(_logos_class$_ungrouped$CKUITheme, @selector(gray_balloonColors), (IMP)&_logos_method$_ungrouped$CKUITheme$gray_balloonColors, (IMP*)&_logos_orig$_ungrouped$CKUITheme$gray_balloonColors);MSHookMessageEx(_logos_class$_ungrouped$CKUITheme, @selector(blue_balloonTextColor), (IMP)&_logos_method$_ungrouped$CKUITheme$blue_balloonTextColor, (IMP*)&_logos_orig$_ungrouped$CKUITheme$blue_balloonTextColor);MSHookMessageEx(_logos_class$_ungrouped$CKUITheme, @selector(green_balloonTextColor), (IMP)&_logos_method$_ungrouped$CKUITheme$green_balloonTextColor, (IMP*)&_logos_orig$_ungrouped$CKUITheme$green_balloonTextColor);MSHookMessageEx(_logos_class$_ungrouped$CKUITheme, @selector(gray_balloonTextColor), (IMP)&_logos_method$_ungrouped$CKUITheme$gray_balloonTextColor, (IMP*)&_logos_orig$_ungrouped$CKUITheme$gray_balloonTextColor);Class _logos_class$_ungrouped$CKTranscriptCollectionView = objc_getClass("CKTranscriptCollectionView"); MSHookMessageEx(_logos_class$_ungrouped$CKTranscriptCollectionView, @selector(setContentSize:), (IMP)&_logos_method$_ungrouped$CKTranscriptCollectionView$setContentSize$, (IMP*)&_logos_orig$_ungrouped$CKTranscriptCollectionView$setContentSize$);Class _logos_class$_ungrouped$CKGradientReferenceView = objc_getClass("CKGradientReferenceView"); MSHookMessageEx(_logos_class$_ungrouped$CKGradientReferenceView, @selector(setFrame:), (IMP)&_logos_method$_ungrouped$CKGradientReferenceView$setFrame$, (IMP*)&_logos_orig$_ungrouped$CKGradientReferenceView$setFrame$);Class _logos_class$_ungrouped$CKBalloonView = objc_getClass("CKBalloonView"); MSHookMessageEx(_logos_class$_ungrouped$CKBalloonView, @selector(canUseOpaqueMask), (IMP)&_logos_method$_ungrouped$CKBalloonView$canUseOpaqueMask, (IMP*)&_logos_orig$_ungrouped$CKBalloonView$canUseOpaqueMask);MSHookMessageEx(_logos_class$_ungrouped$CKBalloonView, @selector(setCanUseOpaqueMask:), (IMP)&_logos_method$_ungrouped$CKBalloonView$setCanUseOpaqueMask$, (IMP*)&_logos_orig$_ungrouped$CKBalloonView$setCanUseOpaqueMask$);Class _logos_class$_ungrouped$CKAvatarNavigationBar = objc_getClass("CKAvatarNavigationBar"); MSHookMessageEx(_logos_class$_ungrouped$CKAvatarNavigationBar, @selector(_backgroundOpacity), (IMP)&_logos_method$_ungrouped$CKAvatarNavigationBar$_backgroundOpacity, (IMP*)&_logos_orig$_ungrouped$CKAvatarNavigationBar$_backgroundOpacity);MSHookMessageEx(_logos_class$_ungrouped$CKAvatarNavigationBar, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$CKAvatarNavigationBar$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$CKAvatarNavigationBar$layoutSubviews);Class _logos_class$_ungrouped$CKMessageEntryView = objc_getClass("CKMessageEntryView"); MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryView, @selector(ckTintColor), (IMP)&_logos_method$_ungrouped$CKMessageEntryView$ckTintColor, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryView$ckTintColor);MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryView, @selector(setCkTintColor:), (IMP)&_logos_method$_ungrouped$CKMessageEntryView$setCkTintColor$, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryView$setCkTintColor$);MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryView, @selector(setShouldHideBackgroundView:), (IMP)&_logos_method$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryView$setShouldHideBackgroundView$);MSHookMessageEx(_logos_class$_ungrouped$CKMessageEntryView, @selector(updateEntryView), (IMP)&_logos_method$_ungrouped$CKMessageEntryView$updateEntryView, (IMP*)&_logos_orig$_ungrouped$CKMessageEntryView$updateEntryView);}
	}
}



