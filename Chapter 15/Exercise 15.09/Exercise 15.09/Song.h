//
//  Song.h
//  Exercise 15.09
//
//  Created by Michał Listowski on 11.08.2014.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property NSString *title, *artist, *album;
@property NSUInteger timePlayed;

-(instancetype) initWithTitle: (NSString *) theTitle andArtist: (NSString *) theArtist andAlbum: (NSString *) theAlbum andTime: (NSUInteger) theTimePlayed;
-(NSString *) description;

@end
