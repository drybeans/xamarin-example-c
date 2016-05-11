//
//  Source.h
//  LibraryTest
//
//  Created by Jiansheng on 5/6/16.
//  Copyright © 2016 intel. All rights reserved.
//

#ifndef Source_h
#define Source_h

#if (defined( __WIN32__ ) || defined( _WIN32 )) && !defined(__ANDROID__)
#define SPORTLEAPEXPORT __declspec(dllexport)
#elif defined(_ANDROID)
#define SPORTLEAPEXPORT __attribute__ ((visibility ("default")))
#elif defined(_IOS)
#define SPORTLEAPEXPORT __attribute__ ((visibility ("default")))
#else
#define SPORTLEAPEXPORT
#endif

#ifdef __cplusplus
extern "C" {
#endif

SPORTLEAPEXPORT int getClickCount();
    
#ifdef __cplusplus
}
#endif

#endif /* Source_h */
