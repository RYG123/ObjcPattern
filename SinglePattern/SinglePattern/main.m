//
//  main.m
//  SinglePattern
//
//  Created by linkjob on 2019/12/6.
//  Copyright © 2019 GeekBand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SinglePatternText.h"

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        SingletonTest* single1 = [SingletonTest getInstance];
        NSLog(@"single1的值:%@",single1);
        
        SingletonTest* single2 = [SingletonTest getInstance];
        NSLog(@"single2的值:%@",single2);
        
        NSLog(@"single1和single2相等吗:%d",single1 == single2);
        NSLog(@"single1和single2相等吗:%d",[single2 isNotEqualTo:single1]);
    }
    return 0;
}
