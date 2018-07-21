@interface SBLockScreenViewControllerBase : UIViewController
@end
%hook CKConversationListCell
- (void)viewDidLoad {
    %orig;	
    //New code
    UIView *redRectangle = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
	[redRectangle setBackgroundColor:[UIColor redColor]];
	[self.view addSubview:redRectangle];
}
%end