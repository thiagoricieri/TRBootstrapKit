//
//  TRBootstrap.h
//  WeBeer
//
//  Created by Thiago Ricieri on 09/07/13.
//  Copyright (c) 2013 WeBeer. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef TRBootstrap_h
#define TRBootstrap_h

#import "TRURLUtils.h"
#import "TRFrameMacros.h"
#import "TRiDevicesMacros.h"

#endif

@interface TRBootstrap : NSObject

+ (CGRect) change: (CGRect) frame toX: (CGFloat) x;
+ (CGRect) change: (CGRect) frame toY: (CGFloat) y;
+ (CGRect) change: (CGRect) frame toWidth: (CGFloat) width;
+ (CGRect) change: (CGRect) frame toHeight: (CGFloat) height;
+ (CGRect) change: (CGRect) frame sumX: (CGFloat) x;
+ (CGRect) change: (CGRect) frame sumY: (CGFloat) y;
+ (CGRect) change: (CGRect) frame sumWidth: (CGFloat) width;
+ (CGRect) change: (CGRect) frame sumHeight: (CGFloat) height;
+ (CGRect) change: (CGRect) frame toX: (CGFloat) x andY: (CGFloat) y;
+ (CGRect) change: (CGRect) frame xToHorizontalCenter: (BOOL) horiz yToVerticalCenter: (BOOL) verti onBounds: (CGSize) bounds;
+ (CGRect) change: (CGRect) frame toWidth: (CGFloat) width andHeight: (CGFloat) height;
+ (CGRect) change: (CGRect) frame toWidth: (CGFloat) width andScaleHeight: (BOOL) scale;
+ (CGRect) change: (CGRect) frame toHeight: (CGFloat) height andScaleWidth: (BOOL) scale;

+ (UIBarButtonItem *) buttonWithImage: (UIImage *) image target:(id) target action:(SEL) action;

+ (NSDate *)dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day;
+ (NSDate *)dateForNextMonthWithDate: (NSDate *) currentDate;
+ (NSDate *)dateForPastMonthWithDate: (NSDate *)currentDate;
+ (NSDate *)dateFromString: (NSString *) stringDate;
+ (NSDate *)dateHourFromString: (NSString *) stringDate;
+ (NSDate *)dateFromComponents: (NSDateComponents *) comps;
+ (NSDateComponents *)componentsForStringDate: (NSString *) stringDate;
+ (NSInteger) dayWithDate: (NSDate *) date;
+ (NSInteger) monthWithDate: (NSDate *) date;
+ (NSInteger) yearWithDate: (NSDate *) date;
+ (NSInteger) weekdayWithDate: (NSDate *) date;
+ (NSArray *) reverseArray: (NSArray *) nonReversedArr;

+ (NSString *) unacent: (NSString *) acented;

+ (UIImage *) drawLineFromPoint:(CGPoint)fromPoint toPoint:(CGPoint)toPoint image:(UIImage *)image screenSize: (CGSize) screenSize colorRed: (CGFloat) red colorBlue: (CGFloat) blue colorGreen: (CGFloat) green;

+ (void) logWithTag: (NSString *) tag andMessage: (NSString *) message;

+ (NSDictionary *) JSONWithRawData: (NSData *) rawData;

+ (void) fileWrite: (NSDictionary *) dictionary andFileName: (NSString *) fileName;
+ (NSDictionary *) fileRead: (NSString *) fileName;
+ (BOOL) fileExists: (NSString *) fileName;
+ (void) fileDelete: (NSString *) fileName;

+ (NSString *)urlEncodeValue:(NSString *)str;
+ (BOOL) NSStringIsValidEmail:(NSString *)checkString;

@end
