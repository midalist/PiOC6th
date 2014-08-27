//
//  main.m
//  Exercise 15.09
//
//  Created by Michał Listowski on 11.08.2014.
//

#import "Song.h"
#import "Playlist.h"
#import "MusicCollection.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    Song *song1 = [[Song alloc] initWithTitle:@"First" andArtist:@"Michal" andAlbum:@"List" andTime:20];
    Song *song2 = [[Song alloc] initWithTitle:@"Second" andArtist:@"Michal" andAlbum:@"List" andTime:60];
    Song *song3 = [[Song alloc] initWithTitle:@"Third" andArtist:@"Kasia" andAlbum:@"List" andTime:15];
    Song *song4 = [[Song alloc] initWithTitle:@"Forth" andArtist:@"Kasia" andAlbum:@"List" andTime:40];
    Song *song5 = [[Song alloc] initWithTitle:@"Fifth" andArtist:@"Kasia" andAlbum:@"Kopr" andTime:90];
    Song *song6 = [[Song alloc] initWithTitle:@"Sixth" andArtist:@"Kasia" andAlbum:@"Kopr" andTime:90];
    Song *song7 = [[Song alloc] initWithTitle:@"Seventh" andArtist:@"Kasia" andAlbum:@"Kopr" andTime:95];
    
    Playlist *library = [[Playlist alloc] initWithName:@"Library" andSongs:nil];
    Playlist *playlist1 = [[Playlist alloc] initWithName:@"Playlist1" andSongs:nil];
    Playlist *playlist2 = [[Playlist alloc] initWithName:@"Playlist2" andSongs:nil];
    
    MusicCollection *musicCollection = [[MusicCollection alloc] initWithLibrary:library andCollectionOfPlaylists:nil];
    
    [library addSong:song1];
    [library addSong:song2];
    [library addSong:song3];
    [library addSong:song4];
    [library addSong:song5];
    
    [playlist1 addSong:song3];
    [playlist1 addSong:song4];
    
    [playlist2 addSong:song5];
    
    [musicCollection.library setWithPlaylist:library];
    [musicCollection.collectionOfPlaylists addObject:playlist1];
    [musicCollection.collectionOfPlaylists addObject:playlist2];
    
    [musicCollection addSong:song6 toPlaylist:@"Playlist1"];
    [musicCollection addSong:song7 toPlaylist:@"Playlist2"];
    
    NSLog(@"Initialized library and playlist1 counts");
    NSLog(@"%lu", [musicCollection.library.collectionOfSongs count]);
    NSLog(@"%lu", [[musicCollection.collectionOfPlaylists[1] collectionOfSongs] count]);
    
    [musicCollection removeSong:song7 fromPlaylist:@"Library"];
    
    NSLog(@"We add Song7 to Library");
    NSLog(@"%lu", [musicCollection.library.collectionOfSongs count]);
    NSLog(@"%lu", [[musicCollection.collectionOfPlaylists[1] collectionOfSongs] count]);
    
    [musicCollection removeSong:song5 fromPlaylist:@"Playlist2"];
    
    NSLog(@"We remove Song5 from playlist2");
    NSLog(@"%lu", [musicCollection.library.collectionOfSongs count]);
    NSLog(@"%lu", [[musicCollection.collectionOfPlaylists[1] collectionOfSongs] count]);
  }
  return 0;
}
