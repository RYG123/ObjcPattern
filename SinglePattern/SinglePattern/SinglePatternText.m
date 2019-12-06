#import <Foundation/Foundation.h>
#import "SinglePatternText.h"



@implementation SingletonTest

static SingletonTest* _instance = nil;

+(SingletonTest*)getInstance
{
    @synchronized (self.class) {
        if(_instance == nil){
            _instance = [[self.class alloc] init];
        }
        return _instance;
    }
}

@end

