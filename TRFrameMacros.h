//
//  TRFrameMacros.h
//  StylePopz
//
//  Created by Thiago Ricieri on 02/07/13.
//  Copyright (c) 2013 Thiago Ricieri. All rights reserved.
//

#ifndef TRFrameMacros_h
#define TRFrameMacros_h

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define RGB(r, g, b, a) [UIColor colorWithRed:(r/255.) green:(g/255.) blue:(b/255.) alpha:a]

#define own_width   self.view.frame.size.width
#define own_height  self.view.frame.size.height

#define branco      [UIColor whiteColor]
#define preto       [UIColor blackColor]
#define transparent [UIColor clearColor]

#define changeX(o, xx)	o.frame = frame(xx, o.frame.origin.y, o.frame.size.width, o.frame.size.height);
#define changeY(o, yy)	o.frame = frame(o.frame.origin.x, yy, o.frame.size.width, o.frame.size.height);
#define changeXY(o, xx, yy)	o.frame = frame(xx, yy, o.frame.size.width, o.frame.size.height);
#define changeWidth(o, ww)	o.frame = frame(o.frame.origin.x, o.frame.origin.y, ww, o.frame.size.height);
#define changeHeight(o, hh)	o.frame = frame(o.frame.origin.x, o.frame.origin.y, o.frame.size.width, hh);
#define changeWidthHeight(o, ww, hh)	o.frame = frame(o.frame.origin.x, o.frame.origin.y, ww, hh);

#define frame(x, y, w, h) CGRectMake(x, y, w, h)
#define allframe    CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
#define allframenav CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 44)
#define allframenavstatus CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 64)

#define bindx(o, xx) CGRectMake(o.frame.origin.x + o.frame.size.width + xx, o.frame.origin.y, o.frame.size.width, o.frame.size.height)
#define bindy(o, yy) CGRectMake(o.frame.origin.x, o.frame.origin.y + o.frame.size.height + yy, o.frame.size.width, o.frame.size.height)
#define bindxy(o, xx, yy) CGRectMake(o.frame.origin.x + o.frame.size.width + xx, o.frame.origin.y  + o.frame.size.height + yy, o.frame.size.width, o.frame.size.height)
#define bindxw(o, xx, w) CGRectMake(o.frame.origin.x + o.frame.size.width + xx, o.frame.origin.y, w, o.frame.size.height)
#define bindxh(o, xx, w, h) CGRectMake(o.frame.origin.x + o.frame.size.width + xx, o.frame.origin.y, o.frame.size.width, h)
#define bindxwh(o, xx, w, h) CGRectMake(o.frame.origin.x + o.frame.size.width + xx, o.frame.origin.y, w, h)
#define bindyw(o, yy, w) CGRectMake(o.frame.origin.x, o.frame.origin.y + o.frame.size.height + yy, w, o.frame.size.height)
#define bindyh(o, yy, h) CGRectMake(o.frame.origin.x, o.frame.origin.y + o.frame.size.height + yy, o.frame.size.width, h)
#define bindywh(o, yy, w, h) CGRectMake(o.frame.origin.x, o.frame.origin.y + o.frame.size.height + yy, w, h)
#define bindxywh(o, xx, yy, w, h) CGRectMake(o.frame.origin.x + o.frame.size.width + xx, o.frame.origin.y  + o.frame.size.height + yy, w, h)

#define xpad(o)	o.frame.origin.x + o.frame.size.width
#define ypad(o)	o.frame.origin.y + o.frame.size.height

#define x(o)	o.frame.origin.x
#define y(o)	o.frame.origin.y
#define width(o)	o.frame.size.width
#define height(o)	o.frame.size.height

#define xw(o)	o.frame.origin.x + o.frame.size.width
#define yh(o)	o.frame.origin.y + o.frame.size.height

#define degrees2radians(angle) ((angle) / 180.0 * M_PI)

#define val(dict, key)	[dict valueForKey:key]

#endif
