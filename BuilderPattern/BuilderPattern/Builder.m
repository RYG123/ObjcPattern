#import <Foundation/Foundation.h>
#import "Builder.h"

#define MethodNotImplemented() \
@throw \
[NSException exceptionWithName:NSInternalInconsistencyException \
                        reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)] \
                      userInfo:nil]

@implementation AbsBuilder

-(void)setDisplay
{
    MethodNotImplemented();
}
-(void)setCpu
{
    MethodNotImplemented();
}

-(void)setChip
{
    MethodNotImplemented();
}

-(void)setBattery
{
    MethodNotImplemented();
}


@end

@implementation AndroidBuilder : AbsBuilder
 
NSString* androidDisplay = @"HONOR20 display";
NSString* androidCpu = @"Huawei Kirin 980";
NSString* androidChip = @"android chip";
NSString* androidBattery = @"40000ma";

@dynamic phoneChip;

-(void)setDisplay{
   NSLog(@"Android phone display : %@",androidDisplay);
    [self setPhoneChip:@"123"];
}

-(void)setCpu{
    NSLog(@"Android phone cpu : %@",androidCpu);
}

-(void)setChip{
    NSLog(@"Android phone cpu : %@",androidChip);
}

-(void)setBattery{
    NSLog(@"Android phone battery : %@",androidBattery);
}

-(NSString*) phoneDisplay{
    return androidDisplay;
}

-(void)setPhoneDisplay:(NSString *)phoneDisplay{
    androidDisplay = phoneDisplay;
}

-(NSString*) phoneCpu{
    return androidCpu;
}

-(void)setPhoneCpu:(NSString *)phoneCpu{
    androidCpu = phoneCpu;
}

-(NSString*)phoneBattery{
    return androidBattery;
}

-(void)setPhoneBattery:(NSString *)phoneBattery{
    androidBattery = phoneBattery;
}






@end

@implementation IosBuilder : AbsBuilder
 
NSString* iosDisplay = @"IPhone11 display";
NSString* iosCpu = @"IOS Kirin 980";
NSString* iosChip = @"IOS chip";
NSString* iosBattery = @"50000ma";

-(void)setDisplay{
   NSLog(@"IPHONE display : %@",iosDisplay);
}

-(void)setCpu{
    NSLog(@"Android phone cpu : %@",iosCpu);
}

-(void)setChip{
    NSLog(@"Android phone cpu : %@",iosChip);
}

-(void)setBattery{
    NSLog(@"Android phone battery : %@",iosBattery);
}

-(NSString*) phoneDisplay{
    return iosDisplay;
}

-(void)setPhoneDisplay:(NSString *)phoneDisplay{
    iosDisplay = phoneDisplay;
}

-(NSString*) phoneCpu{
    return iosCpu;
}

-(void)setPhoneCpu:(NSString *)phoneCpu{
    iosCpu = phoneCpu;
}

-(NSString*)phoneChip
{
    return iosChip;
}

-(void)setPhoneChip:(NSString *)phoneChip{
    iosChip = phoneChip;
}

-(NSString*)phoneBattery{
    return iosBattery;
}

-(void)setPhoneBattery:(NSString *)phoneBattery{
    iosBattery = phoneBattery;
}



@end
