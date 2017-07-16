.class public interface abstract Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaylistRefreshCallback"
.end annotation


# virtual methods
.method public abstract onPlaylistChanged()V
.end method

.method public abstract onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V
.end method
