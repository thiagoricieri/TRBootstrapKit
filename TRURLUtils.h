//
//  TRURLUtils.h
//  WeBeer
//
//  Created by Thiago Ricieri on 09/07/13.
//  Copyright (c) 2013 WeBeer. All rights reserved.
//

#ifndef WeBeer_TRURLUtils_h
#define WeBeer_TRURLUtils_h

#define kGetPaths NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)
#define kGetFilePath(fp, fn)    [[fp objectAtIndex:0] stringByAppendingPathComponent:fn];
#define url(theURL) [NSURL URLWithString:theURL]

#endif