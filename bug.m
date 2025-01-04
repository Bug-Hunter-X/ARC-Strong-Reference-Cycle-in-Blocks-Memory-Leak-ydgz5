In Objective-C, a common yet subtle error arises when dealing with memory management using ARC (Automatic Reference Counting).  Specifically, strong reference cycles within blocks can easily lead to memory leaks. Consider this example:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *someString;
@end

@implementation MyClass
- (void)someMethod {
    self.someString = [NSString stringWithFormat:@