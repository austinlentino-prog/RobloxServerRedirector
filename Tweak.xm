#import <Foundation/Foundation.h>

static NSString *RSRServerURL(void) {
    NSDictionary *p = [NSDictionary dictionaryWithContentsOfFile:
        @"/var/mobile/Library/Preferences/com.austin.robloxserverredirector.plist"];
    NSString *u = p[@"ServerURL"];
    return [u isKindOfClass:[NSString class]] ? u : @"";
}

static BOOL RSRIsRoblox(void) {
    NSString *b = [[NSBundle mainBundle] bundleIdentifier];
    return [b rangeOfString:@"roblox"
                    options:NSCaseInsensitiveSearch].location != NSNotFound;
}

%ctor {
    if (!RSRIsRoblox()) return;
    NSString *server = RSRServerURL();
    if (!server.length) return;

    // Version-specific Roblox networking hook goes here.
    // Server URL is read from the preference above.
}
