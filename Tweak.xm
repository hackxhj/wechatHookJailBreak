
%hook WCPayTouchIDAuthHelper


+ (_Bool)isDeviceJailBreak{
	
	NSLog(@"hook  ok------");
	return NO;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end

/* wechat  AppDelegate
%hook MicroMessengerAppDelegate

 
- (_Bool)application:(id)arg1 didFinishLaunchingWithOptions:(id)arg2
{
	%orig;
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"1" message:@"1" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
    [alert show];
    [alert release];

	return YES;

}
%end*/

%hook JailBreakHelper

- (_Bool)IsJailBreak{
	return NO;
}
%end

