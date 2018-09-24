// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen
// Template 'objc-string-m' by Eric Slosser


#import "Localizable.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"

NSString* tr(NSString* key, ...) {
    va_list args;
    va_start(args, key);

    NSString *format = [NSBundle.mainBundle localizedStringForKey:key value:@"" table:nil];
    NSString *result = [[NSString alloc] initWithFormat:format arguments:args];
    return result;
};

@implementation Localizable : NSObject
+ (NSString*)alertMessage {
    return tr(@"alert_message"); // Some alert body there
}
+ (NSString*)alertTitle {
    return tr(@"alert_title"); // Title of the alert
}
+ (NSString*)objectOwnership:(NSInteger)p1 p1:(NSString*)p2 p2:(NSString*)p3
{
    return tr(@"ObjectOwnership", p1, p2, p3); // These are %3$@'s %1$d %2$@.
}
+ (NSString*)private:(NSString*)p1 p1:(NSInteger)p2
{
    return tr(@"private", p1, p2); // Hello, my name is %@ and I'm %d
}
+ (NSString*)applesCount:(NSInteger)p1
{
    return tr(@"apples.count", p1); // You have %d apples
}
+ (NSString*)bananasOwner:(NSInteger)p1 p1:(NSString*)p2
{
    return tr(@"bananas.owner", p1, p2); // Those %d bananas belong to %@.
}
+ (NSString*)settingsNavigationBarSelf {
    return tr(@"settings.navigation-bar.self"); // Some Reserved Keyword there
}
+ (NSString*)settingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep {
    return tr(@"settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep"); // DeepSettings
}
+ (NSString*)settingsNavigationBarTitleEvenDeeper {
    return tr(@"settings.navigation-bar.title.even.deeper"); // Settings
}
+ (NSString*)settingsUserProfileSectionFooterText {
    return tr(@"settings.user_profile_section.footer_text"); // Here you can change some user profile settings.
}
+ (NSString*)settingsUserProfileSectionHEADERTITLE {
    return tr(@"settings.user_profile_section.HEADER_TITLE"); // User Profile Settings
}
@end

@implementation LocMultiline : NSObject
+ (NSString*)multiline {
    return tr(@"MULTILINE"); // multi\nline
}
+ (NSString*)multiLineNKey {
    return tr(@"multiLine\nKey"); // test
}
+ (NSString*)multiline2 {
    return tr(@"MULTILINE2"); // another\nmulti\n    line
}
+ (NSString*)singleline {
    return tr(@"SINGLELINE"); // single line
}
+ (NSString*)singleline2 {
    return tr(@"SINGLELINE2"); // another single line
}
@end

#pragma clang diagnostic pop
