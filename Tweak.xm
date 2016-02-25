%hook SpringBoard
-(void)_openURLCore:(id)arg1 display:(id)arg2 animating:(BOOL)arg3 sender:(id)arg4 activationSettings:(id)arg5 withResult:(id)arg6{
	if([[arg2 bundleIdentifier] containsString:@"com.apple.mobilesafari"] && [arg4 containsString:@"ph.telegra.Telegraph"])
		return ;
	%orig;
}
%end