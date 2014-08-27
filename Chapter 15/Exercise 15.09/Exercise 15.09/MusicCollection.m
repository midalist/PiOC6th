//
//  MusicCollection.m
//  Exercise 15.09
//
//  Created by Michał Listowski on 11.08.2014.
//

#import "MusicCollection.h"

@implementation MusicCollection

@synthesize library, collectionOfPlaylists;

-(instancetype) initWithLibrary: (Playlist *) theLibrary andCollectionOfPlaylists: (NSMutableArray *) theCollectionOfPlaylist{
  self = [super init];
  if (self){
    library = [[Playlist alloc] initWithPlaylist:theLibrary];
    collectionOfPlaylists = [NSMutableArray arrayWithArray:theCollectionOfPlaylist];
  }
  return self;
}
-(instancetype) init{
  return [self initWithLibrary:nil andCollectionOfPlaylists:nil];
}
-(void) addPlaylist: (Playlist *) thePlaylist{
  [collectionOfPlaylists addObject:thePlaylist];
}
-(void) addLibrary: (Playlist *) theLibrary{
  [library setWithPlaylist:theLibrary];
}
-(void) addSong: (Song *) theSong toPlaylist: (NSString *) nameOfPlaylist{
  if([library.playlistName isEqualToString:nameOfPlaylist]) {
    if (![library.collectionOfSongs containsObject:theSong])
      [library addSong:theSong];
  } else {
    for (int i = 0; i < [collectionOfPlaylists count]; ++i) {
      if ([[collectionOfPlaylists[i] playlistName] isEqualToString:nameOfPlaylist]) {
        if (![[collectionOfPlaylists[i] collectionOfSongs] containsObject:theSong]) {
          [collectionOfPlaylists[i] addSong:theSong];
          if (![library.collectionOfSongs containsObject:theSong])
            [library addSong:theSong];
        }
      }
    }
  }
}
-(void) removeSong: (Song *) theSong fromPlaylist: (NSString *) nameOfPlaylist{
  if([library.playlistName isEqualToString:nameOfPlaylist]) {
    if ([library.collectionOfSongs containsObject:theSong]) {
      [library removeSong:theSong];
      for (int i = 0; i < [collectionOfPlaylists count]; ++i) {
        if([[collectionOfPlaylists[i] collectionOfSongs] containsObject:theSong])
          [collectionOfPlaylists[i] removeSong:theSong];
      }
    }
  } else{
    for (int i = 0; i < [collectionOfPlaylists count]; ++i) {
      if([[collectionOfPlaylists[i] playlistName] isEqualToString:nameOfPlaylist])
        if([[collectionOfPlaylists[i] collectionOfSongs] containsObject:theSong])
          [collectionOfPlaylists[i] removeSong:theSong];
    }
  }
}

@end
