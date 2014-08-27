//
//  Playlist.m
//  Exercise 15.09
//
//  Created by Michał Listowski on 11.08.2014.
//

#import "Playlist.h"


@implementation Playlist

@synthesize playlistName, collectionOfSongs;

-(instancetype) initWithName: (NSString *) thePlaylistName andSongs: (NSMutableArray *) theCollectionOfSongs{
  self = [super init];
  if (self) {
    playlistName = [NSString stringWithString:thePlaylistName];
    collectionOfSongs = [NSMutableArray arrayWithArray:nil];
  }
  return self;
}
-(instancetype) init{
  return [self initWithName:@"NoName" andSongs:nil];
}
-(instancetype) initWithPlaylist: (Playlist *) thePlaylist{
  self.playlistName = thePlaylist.playlistName;
  self.collectionOfSongs = thePlaylist.collectionOfSongs;
  return self;
}
-(void) setWithPlaylist:(Playlist *)thePlaylist{
  self.playlistName = thePlaylist.playlistName;
  self.collectionOfSongs = thePlaylist.collectionOfSongs;
}
-(void) addSong: (Song *) theSong{
  if (![collectionOfSongs containsObject:theSong]) {
    [self.collectionOfSongs addObject:theSong];
  }
}
-(void) removeSong: (Song *) theSong{
  for (int i = 0; i < [collectionOfSongs count]; ++i) {
    if ([[collectionOfSongs objectAtIndex:i] isEqual:theSong])
      [self.collectionOfSongs removeObjectAtIndex:i];
  }
}

-(NSString *) description {
  return [NSString stringWithFormat:@"%@", [[self.collectionOfSongs objectAtIndex:0] title] ];
}


@end
