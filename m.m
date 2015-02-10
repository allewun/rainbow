@protocol Colorful
@end

@interface Rainbow () <Colorful>
@property (nonatomic, assign) CGFloat brightness;
@property (nonatomic, assign) CGFloat alpha;
@end


@implementation Rainbow

- (instancetype)initWithBrightness:(CGFloat)brightness
                             alpha:(CGFloat)alpha
{
  self = [super init];
  if (self) {
    _brightness = brightness;
    _alpha = alpha;
  }
  return self;
}

@end