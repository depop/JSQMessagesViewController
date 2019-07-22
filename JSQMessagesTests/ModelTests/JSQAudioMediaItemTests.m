//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  MIT License
//  Copyright (c) 2014 Jesse Squires
//  http://opensource.org/licenses/MIT
//

#import <XCTest/XCTest.h>

#import "JSQAudioMediaItem.h"

@interface JSQAudioMediaItemTests : XCTestCase

@end

@implementation JSQAudioMediaItemTests

- (NSData *)newDemoAudioData {
    NSString *path = [[NSBundle bundleForClass:[self class]] pathForResource:@"test_demo_audio" ofType:@"m4a"];
    return [NSData dataWithContentsOfFile:path];
}

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testAudioItemInit
{
    JSQAudioMediaItem *item = [[JSQAudioMediaItem alloc] initWithData:[NSData data]];
    XCTAssertNotNil(item);
}

- (void)testAudioItemIsEqual
{
    JSQAudioMediaItem *item = [[JSQAudioMediaItem alloc] initWithData:[self newDemoAudioData]];
    
    JSQAudioMediaItem *copy = [item copy];
    
    XCTAssertEqualObjects(item, copy, @"Copied items should be equal");
    
    XCTAssertEqual([item hash], [copy hash], @"Copied item hashes should be equal");
    
    XCTAssertEqualObjects(item, item, @"Item should be equal to itself");
}

- (void)testAudioItemArchiving
{
    JSQAudioMediaItem *item = [[JSQAudioMediaItem alloc] initWithData:[self newDemoAudioData]];
    
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:item];
    
    JSQAudioMediaItem *unarchivedItem = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    XCTAssertEqualObjects(item, unarchivedItem);
}

- (void)testMediaDataProtocol
{
    JSQAudioMediaItem *item = [[JSQAudioMediaItem alloc] init];
    
    XCTAssertTrue(!CGSizeEqualToSize([item mediaViewDisplaySize], CGSizeZero));
    XCTAssertNotNil([item mediaPlaceholderView]);
    XCTAssertNil([item mediaView], @"Media view should be nil if image is nil");

    item.audioData = [self newDemoAudioData];
    
    XCTAssertNotNil([item mediaView], @"Media view should NOT be nil once item has media data");
}

@end
