+ (UIColor *)bgColor 
{
    static UIColor *bgColor = nil;
    static dispatch_once_t dispatchToken;

    dispatch_once(&dispatchToken, ^{
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
        //UIColor *bgColor = [UIColor colorWithPatternImage:UIGraphicsGetImageFromCurrentImageContext()];
        +(UIColor *) bgColor { return [UIColor colorWithPatternImage:UIGraphicsGetImageFromCurrentImageContext()]; }

        } @finally {
        UIGraphicsEndImageContext();
        }
            // bgColor = [UIColor colorWithRed:48.0/255 green:160.0/255 blue:255.0/255 alpha:1.0];
    });

    return bgColor;
}