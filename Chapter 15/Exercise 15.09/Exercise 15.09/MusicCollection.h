//
//  MusicCollection.h
//  Exercise 15.09
//
//  Created by Michał Listowski on 11.08.2014.
//

#import <Foundation/Foundation.h>
#import "Playlist.h"

@interface MusicCollection : NSObject

@property Playlist *library;
@property NSMutableArray *collectionOfPlaylists;

-(instancetype) initWithLibrary: (Playlist *) theLibrary andCollectionOfPlaylists: (NSMutableArray *) theCollectionOfPlaylist;
-(void) addPlaylist: (Playlist *) thePlaylist;
-(void) addLibrary: (Playlist *) theLibrary;
-(void) addSong: (Song *) theSong toPlaylist: (NSString *) nameOfPlaylist;
-(void) removeSong: (Song *) theSong fromPlaylist: (NSString *) nameOfPlaylist;

@end
