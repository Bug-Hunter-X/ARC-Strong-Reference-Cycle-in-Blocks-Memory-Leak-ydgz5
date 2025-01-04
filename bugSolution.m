@interface MyClass : NSObject
@property (strong, nonatomic) NSString *someString;
@end

@implementation MyClass
- (void)someMethod {
    __weak MyClass *weakSelf = self; // Create a weak reference to self
    self.someString = [NSString stringWithFormat:@