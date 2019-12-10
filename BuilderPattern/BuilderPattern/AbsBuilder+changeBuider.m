//
//  AbsBuilder+changeBuider.m
//  BuilderPattern
//
//  Created by linkjob on 2019/12/10.
//  Copyright © 2019 GeekBand. All rights reserved.
//

#import "AbsBuilder+changeBuider.h"

#import <AppKit/AppKit.h>
#import "Director.h"

@implementation AbsBuilder (changeBuider)

-(Director *)build_setBuilder:(AbsBuilder *)builder{
    NSAssert(self.phoneDisplay, @"屏幕硬顶要设置");
    Director *director = nil;
    if([builder isKindOfClass: [AndroidBuilder class]]){
            director = [[AndroidDirector alloc] init];
          }else if([builder isKindOfClass: [IosBuilder class]]){
            director = [[IOSDirector alloc] init];
          }
    director.builder = builder;
//    [director constructandBuilder:builder];
    return director;
}

+ (Director *)createBuilder:(Builderblock)block{
    NSParameterAssert(block != nil);
    AbsBuilder *builder = nil;
    builder = [AndroidBuilder new];
    block(builder);
    return [builder build_setBuilder:builder];
}

@end
