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

#import "JSQPhotoMediaItem.h"

#import <MobileCoreServices/UTCoreTypes.h>

@interface JSQPhotoMediaItemTests : XCTestCase

@end


@implementation JSQPhotoMediaItemTests

- (UIImage *)newDemoImage {
    return [UIImage imageNamed:@"test_demo_image" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testPhotoItemInit
{
    JSQPhotoMediaItem *item = [[JSQPhotoMediaItem alloc] initWithImage:[self newDemoImage]];
    XCTAssertNotNil(item);
}

- (void)testPhotoItemIsEqual
{
    JSQPhotoMediaItem *item = [[JSQPhotoMediaItem alloc] initWithImage:[self newDemoImage]];
    
    JSQPhotoMediaItem *copy = [item copy];
    
    XCTAssertEqualObjects(item, copy, @"Copied items should be equal");
    
    XCTAssertEqual([item hash], [copy hash], @"Copied item hashes should be equal");
    
    XCTAssertEqualObjects(item, item, @"Item should be equal to itself");
}

- (void)testPhotoItemArchiving
{
    JSQPhotoMediaItem *item = [[JSQPhotoMediaItem alloc] initWithImage:[self newDemoImage]];
    
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:item];
    
    JSQPhotoMediaItem *unarchivedItem = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    XCTAssertEqualObjects(item, unarchivedItem);
}

- (void)testMediaDataProtocol
{
    JSQPhotoMediaItem *item = [[JSQPhotoMediaItem alloc] initWithImage:nil];
    
    XCTAssertTrue(!CGSizeEqualToSize([item mediaViewDisplaySize], CGSizeZero));
    XCTAssertNotNil([item mediaPlaceholderView]);
    XCTAssertNil([item mediaView], @"Media view should be nil if image is nil");
    
    item.image = [self newDemoImage];
    
    XCTAssertNotNil([item mediaView], @"Media view should NOT be nil once item has media data");
}

- (void)testCopyableItemInMediaProtocol {
    JSQPhotoMediaItem *item = [[JSQPhotoMediaItem alloc] initWithImage:[self newDemoImage]];
    XCTAssertNotNil(item);
    XCTAssertEqual([item mediaDataType], (NSString *)kUTTypeJPEG);
    
    UIImage *itemImage = [[UIImage alloc] initWithData:[item mediaData]];
    XCTAssertNotNil(itemImage);
}

@end
