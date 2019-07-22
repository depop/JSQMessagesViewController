//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import <UIKit/UIKit.h>

//! Project version number for JSQMessages.
FOUNDATION_EXPORT double JSQMessagesVersionNumber;

//! Project version string for JSQMessages.
FOUNDATION_EXPORT const unsigned char JSQMessagesVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <JSQMessages/PublicHeader.h>

#import <JSQMessages/JSQMessagesViewController.h>

//  Views
#import <JSQMessages/JSQMessagesCollectionView.h>
#import <JSQMessages/JSQMessagesCollectionViewCellIncoming.h>
#import <JSQMessages/JSQMessagesCollectionViewCellOutgoing.h>
#import <JSQMessages/JSQMessagesTypingIndicatorFooterView.h>
#import <JSQMessages/JSQMessagesLoadEarlierHeaderView.h>

//  Layout
#import <JSQMessages/JSQMessagesBubbleSizeCalculating.h>
#import <JSQMessages/JSQMessagesBubblesSizeCalculator.h>
#import <JSQMessages/JSQMessagesCollectionViewFlowLayout.h>
#import <JSQMessages/JSQMessagesCollectionViewLayoutAttributes.h>
#import <JSQMessages/JSQMessagesCollectionViewFlowLayoutInvalidationContext.h>
#import <JSQMessages/JSQAudioMediaViewAttributes.h>

//  Toolbar
#import <JSQMessages/JSQMessagesComposerTextView.h>
#import <JSQMessages/JSQMessagesInputToolbar.h>
#import <JSQMessages/JSQMessagesToolbarContentView.h>

//  Model
#import <JSQMessages/JSQMessage.h>

#import <JSQMessages/JSQMediaItem.h>
#import <JSQMessages/JSQAudioMediaItem.h>
#import <JSQMessages/JSQPhotoMediaItem.h>
#import <JSQMessages/JSQLocationMediaItem.h>
#import <JSQMessages/JSQVideoMediaItem.h>

#import <JSQMessages/JSQMessagesBubbleImage.h>
#import <JSQMessages/JSQMessagesAvatarImage.h>

//  Protocols
#import <JSQMessages/JSQMessageData.h>
#import <JSQMessages/JSQMessageMediaData.h>
#import <JSQMessages/JSQMessageAvatarImageDataSource.h>
#import <JSQMessages/JSQMessageBubbleImageDataSource.h>
#import <JSQMessages/JSQMessagesCollectionViewDataSource.h>
#import <JSQMessages/JSQMessagesCollectionViewDelegateFlowLayout.h>
#import <JSQMessages/JSQMessagesViewAccessoryButtonDelegate.h>

//  Factories
#import <JSQMessages/JSQMessagesAvatarImageFactory.h>
#import <JSQMessages/JSQMessagesBubbleImageFactory.h>
#import <JSQMessages/JSQMessagesMediaViewBubbleImageMasker.h>
#import <JSQMessages/JSQMessagesTimestampFormatter.h>
#import <JSQMessages/JSQMessagesToolbarButtonFactory.h>

//  Categories
#import <JSQMessages/NSString+JSQMessages.h>
#import <JSQMessages/UIColor+JSQMessages.h>
#import <JSQMessages/UIImage+JSQMessages.h>
#import <JSQMessages/UIView+JSQMessages.h>
#import <JSQMessages/NSBundle+JSQMessages.h>

#import <JSQMessages/JSQMessagesVideoThumbnailFactory.h>
#import <JSQMessages/JSQMessagesTypingView.h>
#import <JSQMessages/JSQMessagesMediaPlaceholderView.h>
