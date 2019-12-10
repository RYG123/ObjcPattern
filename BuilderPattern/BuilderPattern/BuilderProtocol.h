
@interface AbsBuilder : NSObject

-(void)setDisplay:(NSString*)display;
-(void)setCpu:(NSString*)cpu;
-(void)setChip:(NSString*)chip;
-(void)setBattery:(NSString*)battery;

@end

@interface AndroidBuilder : AbsBuilder

@end

@interface IosBuilder : AbsBuilder

@end
