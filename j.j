@implementation Address : CPObject
{
  CPString name;
  CPString city;
  CPString zipcode;
  CPString state;
  CPString country;
  CPString planet;
}

- (id)initWithName:(CPString)aName city:(CPString)aCity
{
  self = [super init];

  name = aName;
  city = aCity;

  return self;
}

- (void)setName:(CPString)aName
{
  name = aName;
}

- (CPString)name
{
  return name;
}

+ (id)newAddressWithName:(CPString)aName city:(CPString)aCity
{
  return [[self alloc] initWithName:aName city:aCity];
}

- (void)setZipcode:(CPString)aZipcode
{
  zipcode = aZipcode;
}

- (CPString)zipcode
{
  return zipcode;
}

- (void)setState:(CPString)aState
{
  state = aState;
}

- (CPString)state
{
  return state;
}

- (void)setCountry:(CPString)aCountry
{
  country = aCountry;
}

- (CPString)country
{
  return country;
}

- (void)setPlanet:(CPString)aPlanet
{
  planet = aPlanet;
}

- (CPString)planet
{
  return planet;
}


@end