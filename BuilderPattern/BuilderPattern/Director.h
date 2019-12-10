#import "Builder.h"
@interface Director : NSObject

@property NSString *directorName;
@property AbsBuilder* builder;

-(void)initDirector:(Director*)director;
-(void)constructandBuilder;

@end

@interface AndroidDirector : Director

@end

@interface IOSDirector : Director

@end
