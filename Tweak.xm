@interface PSTableCell : UITableViewCell
@end

@interface PSBadgedTableCell : PSTableCell
@end

%hook PSBadgedTableCell
	- (void)badgeWithInteger:(int)arg1{
		if([[self valueForKey:@"text"] isEqualToString:@"General"] || [[self valueForKey:@"text"] isEqualToString:@"Software Update"]){
			arg1 = 0;
		}
		%orig;
	}
%end