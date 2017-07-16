.class public final Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;
.implements Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# static fields
.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3


# instance fields
.field private final dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private final eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

.field private final manifestUri:Landroid/net/Uri;

.field private final minLoadableRetryCount:I

.field private playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

.field private sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 1
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "minLoadableRetryCount"    # I
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->manifestUri:Landroid/net/Uri;

    .line 63
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    .line 64
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->minLoadableRetryCount:I

    .line 65
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    invoke-direct {v0, p4, p5}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V
    .locals 6
    .param p1, "manifestUri"    # Landroid/net/Uri;
    .param p2, "dataSourceFactory"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;

    .prologue
    .line 55
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;ILandroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 9
    .param p1, "index"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 84
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 85
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->minLoadableRetryCount:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;ILorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;Lorg/telegram/messenger/exoplayer2/upstream/Allocator;J)V

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->maybeThrowPrimaryPlaylistRefreshError()V

    .line 80
    return-void
.end method

.method public onPrimaryPlaylistRefreshed(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 24
    .param p1, "playlist"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getStartTimeUs()J

    move-result-wide v8

    .line 107
    .local v8, "windowPositionInPeriodUs":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 108
    .local v2, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v10, 0x0

    .line 110
    .local v10, "windowDefaultStartPositionUs":J
    :goto_0
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v13, :cond_1

    const/4 v13, 0x1

    :goto_1
    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    .line 116
    .end local v2    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v8    # "windowPositionInPeriodUs":J
    .end local v10    # "windowDefaultStartPositionUs":J
    .local v3, "timeline":Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    move-object/from16 v0, p1

    invoke-interface {v4, v3, v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 117
    return-void

    .line 108
    .end local v3    # "timeline":Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;
    .restart local v2    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .restart local v8    # "windowPositionInPeriodUs":J
    :cond_0
    const/4 v4, 0x0

    .line 109
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    sub-long v10, v4, v8

    goto :goto_0

    .line 110
    .restart local v10    # "windowDefaultStartPositionUs":J
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 113
    .end local v2    # "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    .end local v8    # "windowPositionInPeriodUs":J
    .end local v10    # "windowDefaultStartPositionUs":J
    :cond_2
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v23}, Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;-><init>(JJJJZZ)V

    .restart local v3    # "timeline":Lorg/telegram/messenger/exoplayer2/source/SinglePeriodTimeline;
    goto :goto_2
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 6
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 71
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->manifestUri:Landroid/net/Uri;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->dataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->eventDispatcher:Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->minLoadableRetryCount:I

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;ILorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 73
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 74
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->start()V

    .line 75
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 0
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 91
    check-cast p1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;

    .end local p1    # "mediaPeriod":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaPeriod;->release()V

    .line 92
    return-void
.end method

.method public releaseSource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->release()V

    .line 97
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->playlistTracker:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    .line 98
    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;->sourceListener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 99
    return-void
.end method
