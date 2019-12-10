#import <Foundation/Foundation.h>
#import "Director.h"
#import "Builder.h"
#define MethodNotImplemented() \
@throw \
[NSException exceptionWithName:NSInternalInconsistencyException \
                        reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)] \
                      userInfo:nil]

@implementation Director

-(void)initDirector:(Director *)director{
    if([director isKindOfClass: [AndroidDirector class]]){
      self.directorName = @"android手机组装工人";
      NSLog(@"这里是android手机组装工人,%@",director);
    }else if([director isKindOfClass: [IOSDirector class]]){
      self.directorName = @"android手机iphone手机组装工人装工人";
      NSLog(@"这里是iphone手机组装工人,%@",director);
    }
}

-(void)constructandBuilder:(id)builder{
    MethodNotImplemented();
}

@end

@implementation AndroidDirector

-(void)constructandBuilder{

    [self.builder setDisplay];
    [self.builder setCpu];
    [self.builder setChip];
    [self.builder setBattery];
}

@end

@implementation IOSDirector

-(void)constructandBuilder{
    [self.builder setChip];
    [self.builder setBattery];
    [self.builder setDisplay];
    [self.builder setCpu];
}

@end

