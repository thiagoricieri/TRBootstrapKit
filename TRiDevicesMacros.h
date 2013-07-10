//
//  TRiDevicesMacros.h
//  StylePopz
//
//  Created by Thiago Ricieri on 02/07/13.
//  Copyright (c) 2013 Thiago Ricieri. All rights reserved.
//

#ifndef TRiDevicesMacros_h
#define TRiDevicesMacros_h

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)
#define WIDTH_IPAD 1024
#define WIDTH_IPHONE_5 568
#define WIDTH_IPHONE_4 480
#define HEIGHT_IPAD 768
#define HEIGHT_IPHONE 320
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE_5 ( [ [ UIScreen mainScreen ] bounds ].size.height == WIDTH_IPHONE_5 )
#define IS_IPHONE_4 ( [ [ UIScreen mainScreen ] bounds ].size.height == WIDTH_IPHONE_4 )
#define cp_ph4(__X__, __Y__) ccp(cx_ph4(__X__), cy_ph4(__Y__))
#define cx_ph4(__X__) (IS_IPAD ? (__X__ * WIDTH_IPAD / WIDTH_IPHONE_4) : (IS_IPHONE_5 ? (__X__ * WIDTH_IPHONE_5 / WIDTH_IPHONE_4) : (__X__)))
#define cy_ph4(__Y__) (IS_IPAD ? (__Y__ * HEIGHT_IPAD / HEIGHT_IPHONE) : (__Y__))
#define cp_pad(__X__, __Y__) ccp(cx_pad(__X__), cy_pad(__Y__))
#define cx_pad(__X__) (IS_IPAD ? (__X__) : (IS_IPHONE_5 ? (__X__ * WIDTH_IPHONE_5 / WIDTH_IPAD) : (__X__ * WIDTH_IPHONE_4 / WIDTH_IPAD)))
#define cy_pad(__Y__) (IS_IPAD ? (__Y__) : (__Y__ * HEIGHT_IPHONE / HEIGHT_IPAD))
#define IPHONE5_PLUSHEIGHT   (IS_IPHONE_5 ? (88) : (0))

#endif
