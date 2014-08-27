//
//  Playlist.h
//  Exercise 15.09
//
//  Created by Michał Listowski on 11.08.2014.
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject

@property (copy, nonatomic) NSString *playlistName;
@property (strong, nonatomic) NSMutableArray *collectionOfSongs;

-(instancetype) initWithName: (NSString *) thePlaylistName andSongs: (NSMutableArray *) theCollectionOfSongs;
-(instancetype) initWithPlaylist: (Playlist *) thePlaylist;
-(void) setWithPlaylist: (Playlist *) thePlaylist;
-(void) addSong: (Song *) theSong;
-(void) removeSong: (Song *) theSong;

-(NSString *) description;

@end
