//
//  AbsBuilder+changeBuider.h
//  BuilderPattern
//
//  Created by linkjob on 2019/12/10.
//  Copyright © 2019 GeekBand. All rights reserved.
//

#import <AppKit/AppKit.h>


#import "Builder.h"
#import "Director.h"
NS_ASSUME_NONNULL_BEGIN

typedef void (^Builderblock) (AbsBuilder *builder);

@interface AbsBuilder (changeBuider)

+(Director*)createBuilder:(Builderblock)block;
-(Director*)build_setBuilder:(AbsBuilder *)builder;

@end

NS_ASSUME_NONNULL_END
