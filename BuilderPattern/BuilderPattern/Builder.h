
@interface AbsBuilder : NSObject

@property (nonatomic)NSString *phoneDisplay;
@property (nonatomic)NSString *phoneCpu;
@property (nonatomic)NSString *phoneChip;
@property (nonatomic)NSString *phoneBattery;
-(void)setDisplay;
-(void)setCpu;
-(void)setChip;
-(void)setBattery;

@end

@interface AndroidBuilder : AbsBuilder

@end

@interface IosBuilder : AbsBuilder

@end
