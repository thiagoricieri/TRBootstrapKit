//
//  TRBootstrap.m
//  WeBeer
//
//  Created by Thiago Ricieri on 09/07/13.
//  Copyright (c) 2013 WeBeer. All rights reserved.
//

#import "TRBootstrap.h"

@implementation TRBootstrap

+ (CGRect) change: (CGRect) frame toX: (CGFloat) x {
    CGRect newFrame = CGRectMake(x, frame.origin.y, frame.size.width, frame.size.height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame toY: (CGFloat) y {
    CGRect newFrame = CGRectMake(frame.origin.x, y, frame.size.width, frame.size.height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame toWidth: (CGFloat) width {
    CGRect newFrame = CGRectMake(frame.origin.x, frame.origin.y, width, frame.size.height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame sumX: (CGFloat) x {
    CGRect newFrame = CGRectMake(frame.origin.x + x, frame.origin.y, frame.size.width, frame.size.height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame sumY: (CGFloat) y {
    CGRect newFrame = CGRectMake(frame.origin.x,frame.origin.y + y, frame.size.width, frame.size.height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame sumWidth: (CGFloat) width {
    CGRect newFrame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width + width, frame.size.height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame sumHeight: (CGFloat) height {
    CGRect newFrame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, frame.size.height + height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame xToHorizontalCenter: (BOOL) horiz yToVerticalCenter: (BOOL) verti onBounds: (CGSize) bounds {
    CGRect newFrame = frame;
    if(horiz) {
        int hCenter = (bounds.width/2) - (newFrame.size.width/2);
        newFrame.origin.x = hCenter;
    }
    if(verti) {
        int vCenter = (bounds.height/2) - (newFrame.size.height/2);
        newFrame.origin.y = vCenter;
    }
    return newFrame;
}
+ (CGRect) change: (CGRect) frame toHeight: (CGFloat) height {
    CGRect newFrame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame toX: (CGFloat) x andY: (CGFloat) y {
    CGRect newFrame = CGRectMake(x, y, frame.size.width, frame.size.height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame toWidth: (CGFloat) width andHeight: (CGFloat) height {
    CGRect newFrame = CGRectMake(frame.origin.x, frame.origin.y, width, height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame toWidth: (CGFloat) width andScaleHeight: (BOOL) scale {
    CGFloat newHeight = ceil((width/frame.size.width) * frame.size.height);
    CGRect newFrame = CGRectMake(frame.origin.x, frame.origin.y, width, scale ? newHeight : frame.size.height);
    return newFrame;
}
+ (CGRect) change: (CGRect) frame toHeight: (CGFloat) height andScaleWidth: (BOOL) scale {
    CGFloat newWidth = ceil((height/frame.size.height) * frame.size.width);
    CGRect newFrame = CGRectMake(frame.origin.x, frame.origin.y, scale ? newWidth : frame.size.width, height);
    return newFrame;
}
+ (UIBarButtonItem *) buttonWithImage: (UIImage *) image target:(id) target action:(SEL) action {
    UIButton *favButton = [[UIButton alloc] init];
    [favButton setImage:image forState:UIControlStateNormal];
    [favButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [favButton setFrame:frame(0, 0, image.size.width, image.size.height)];
    UIBarButtonItem *buttonBarItem = [[UIBarButtonItem alloc] initWithCustomView:favButton];
    return buttonBarItem;
}
+ (NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init] ;
    [components setYear:year];
    [components setMonth:month];
    [components setDay:day];
    [components setHour:4];
    [components setMinute:6];
    return [calendar dateFromComponents:components];
}
+ (NSDate *)dateForPastMonthWithDate: (NSDate *)currentDate {
    int day = [TRBootstrap dayWithDate:currentDate];
    NSDate *monthAgo = [currentDate dateByAddingTimeInterval:-1*24*60*60*(day + 1)];
    return monthAgo;
}
+ (NSDate *)dateForNextMonthWithDate: (NSDate *) currentDate {
    NSDate *monthAgo = [currentDate dateByAddingTimeInterval:29*24*60*60];
    return monthAgo;
}
+ (NSDate *)dateFromComponents: (NSDateComponents *) comps {
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    return [calendar dateFromComponents:comps];
}
+ (NSDate *)dateFromString: (NSString *) stringDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat: @"yyyy-MM-dd"];
    NSDate *date = [dateFormatter dateFromString:stringDate];
    return date;
}
+ (NSDateComponents *)componentsForStringDate: (NSString *) stringDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat: @"yyyy-MM-dd"];
    NSDate *date = [dateFormatter dateFromString:stringDate];
    NSDateComponents *components;
    if(date != nil){
        NSUInteger unitFlags = NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit;
        components = [[NSCalendar currentCalendar] components:unitFlags fromDate:date];
    }
    return components;
}
+ (NSInteger) dayWithDate: (NSDate *) date {
    NSUInteger unitFlags = NSDayCalendarUnit;
    NSDateComponents *components = [[NSCalendar currentCalendar] components:unitFlags fromDate:date];
    return [components day];
}
+ (NSInteger) monthWithDate: (NSDate *) date{
    NSUInteger unitFlags = NSMonthCalendarUnit;
    NSDateComponents *components = [[NSCalendar currentCalendar] components:unitFlags fromDate:date];
    return [components month];
}
+ (NSInteger) yearWithDate: (NSDate *) date{
    NSUInteger unitFlags = NSYearCalendarUnit;
    NSDateComponents *components = [[NSCalendar currentCalendar] components:unitFlags fromDate:date];
    return [components year];
}
+ (NSInteger) weekdayWithDate:(NSDate *)date {
    NSUInteger unitFlags = NSWeekdayCalendarUnit;
    NSDateComponents *components = [[NSCalendar currentCalendar] components:unitFlags fromDate:date];
    return [components weekday];
}

+ (UIImage *) drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint image:(UIImage *)image screenSize: (CGSize) screenSize colorRed: (CGFloat) red colorBlue: (CGFloat) blue colorGreen: (CGFloat) green {
    UIGraphicsBeginImageContext(screenSize);
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    [image drawInRect:CGRectMake(0, 0, screenSize.width, screenSize.height)];
    
    CGContextSetLineCap(currentContext, kCGLineCapRound);
    CGContextSetLineWidth(currentContext, 1.0);
    CGContextSetRGBStrokeColor(currentContext, red, blue, green, 1);
    CGContextBeginPath(currentContext);
    CGContextMoveToPoint(currentContext, fromPoint.x, fromPoint.y);
    CGContextAddLineToPoint(currentContext, toPoint.x, toPoint.y);
    CGContextStrokePath(currentContext);
    
    UIImage *ret = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return ret;
}

+ (NSString *) unacent:(NSString *)acented {
    NSArray *pieces = [acented componentsSeparatedByString:@" "];
    NSString *unacented = [pieces componentsJoinedByString:@"-"];
    return unacented;
}

+ (NSArray *) reverseArray: (NSArray *) nonReversedArr {
    NSMutableArray* reversedMessages = [NSMutableArray arrayWithCapacity:[nonReversedArr count]];
    NSEnumerator*   reverseEnumerator = [nonReversedArr reverseObjectEnumerator];
    for (id object in reverseEnumerator) {
        [reversedMessages addObject:object];
    }
    return reversedMessages;
}

+ (void) logWithTag: (NSString *) tag andMessage: (NSString *) message {
    NSLog(@"%@: %@", tag, message);
}

+ (NSDictionary *) JSONWithRawData: (NSData *) rawData {
    NSError* error;
    NSDictionary *json;
    @try {
        json = [NSJSONSerialization
                JSONObjectWithData:rawData
                options:kNilOptions
                error:&error];
    }
    @catch (NSException *exception) {
        UIAlertView *alerta = [[UIAlertView alloc] initWithTitle:@":(" message:exception.reason delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alerta show];
    }
    return json;
}

+ (void) fileWrite: (NSDictionary *) dictionary andFileName: (NSString *) fileName {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    if ([paths count] > 0) {
        NSString *path = [[paths objectAtIndex:0] stringByAppendingPathComponent:fileName];
        [dictionary writeToFile:path atomically:YES];
    }
}
+ (NSDictionary *) fileRead: (NSString *) fileName {
    NSArray *paths = kGetPaths;
    NSDictionary *dictionary = [NSDictionary dictionary];
    if ([paths count] > 0) {
        NSString *path = kGetFilePath(paths, fileName);
        dictionary = [NSDictionary dictionaryWithContentsOfFile:path];
    }
    return dictionary;
}
+ (void) fileDelete: (NSString *) fileName {
    NSArray *paths = kGetPaths;
    if ([paths count] > 0) {
        NSString *path = kGetFilePath(paths, fileName);
        NSFileManager *fileMgr = [NSFileManager defaultManager];
        NSError *error;
        [fileMgr removeItemAtPath:path error:&error];
    }
}
+ (BOOL) fileExists:(NSString *)fileName {
    NSString* documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString* foofile = [documentsPath stringByAppendingPathComponent:fileName];
    return [[NSFileManager defaultManager] fileExistsAtPath:foofile];;
}

+ (NSString *)urlEncodeValue:(NSString *)str {
    NSString *result = (NSString *) CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef)str, NULL, CFSTR("?=&+"), kCFStringEncodingUTF8));
    return result;
}

+ (BOOL) NSStringIsValidEmail:(NSString *)checkString {
    BOOL stricterFilter = YES; // Discussion http://blog.logichigh.com/2010/09/02/validating-an-e-mail-address/
    NSString *stricterFilterString = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSString *laxString = @".+@.+\\.[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:checkString];
}

@end
