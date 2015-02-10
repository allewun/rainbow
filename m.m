@interface Rainbow ()
@property (nonatomic, assign) CGFloat brightness;
@property (nonatomic, assign) CGFloat alpha;
@property (nonatomic, assign) CGFloat completeness;
@end


@implementation Rainbow

- (instancetype)initWithBrightness:(CGFloat)brightness
                             alpha:(CGFloat)alpha
                      completeness:(CGFloat)completeness
{
  self = [super init];
  if (self) {
    _brightness = brightness;
    _alpha = alpha;
    _completeness = completeness;
  }
  return self;
}

@end