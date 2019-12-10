//
//  main.m
//  BuilderPattern
//
//  Created by linkjob on 2019/12/8.
//  Copyright © 2019 GeekBand. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Director.h"
#import "AbsBuilder+changeBuider.h"
#import "Builder.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        AndroidBuilder* abuilder = [[AndroidBuilder alloc] init];
//        IosBuilder* ibuidler = [IosBuilder new];
//
//        AndroidDirector* adirector = [AndroidDirector new];
//        [adirector initDirector:adirector];
//        [adirector constructandBuilder:abuilder];
//        
//        IOSDirector* idirector =[IOSDirector new];
//        [idirector initDirector:idirector];
//        [idirector constructandBuilder:ibuidler];
//        
//        abuilder.phoneDisplay = @"华为100";
//        abuilder.phoneCpu = @"麒麟12580";
//        abuilder.phoneChip = @"芯片";
//        abuilder.phoneBattery = @"100%";
//        
//        [idirector constructandBuilder:abuilder];

        AndroidDirector *adirector2 = [AbsBuilder createBuilder:^(AbsBuilder *builder) {
            builder.phoneDisplay = @"123";
            builder.phoneCpu = @"麒麟123";
            builder.phoneBattery = @"100";
        }];
        [adirector2 constructandBuilder];
        
//        [AndroidDirector performSelector:@selector(abc)];
    }
    return 0;
}
