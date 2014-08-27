//
//  Song.m
//  Exercise 15.09
//
//  Created by Michał Listowski on 11.08.2014.
//

#import "Song.h"

@implementation Song

@synthesize title, artist, album, timePlayed;

-(instancetype) initWithTitle: (NSString *) theTitle andArtist: (NSString *) theArtist andAlbum: (NSString *) theAlbum andTime: (NSUInteger) theTimePlayed{
  self = [super init];
  if (self) {
    title = [NSString stringWithString:theTitle];
    artist = [NSString stringWithString:theArtist];
    album = [NSString stringWithString:theAlbum];
    timePlayed = theTimePlayed;
  }
  return self;
}
-(instancetype)init{
  return [self initWithTitle:@"NoName" andArtist:@"NoName" andAlbum:@"NoName" andTime:0];
}

-(NSString *) description{
  
  return [NSString stringWithFormat:@"%-12s : %-12s : %-12s : %3lu", [self.title UTF8String] , [self.artist UTF8String], [self.album UTF8String], self.timePlayed];
}

@end
