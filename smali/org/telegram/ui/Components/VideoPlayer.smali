.class public Lorg/telegram/ui/Components/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;
.implements Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;,
        Lorg/telegram/ui/Components/VideoPlayer$RendererBuilder;
    }
.end annotation


# static fields
.field private static final BANDWIDTH_METER:Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

.field private static final RENDERER_BUILDING_STATE_BUILDING:I = 0x2

.field private static final RENDERER_BUILDING_STATE_BUILT:I = 0x3

.field private static final RENDERER_BUILDING_STATE_IDLE:I = 0x1


# instance fields
.field private autoplay:Z

.field private delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

.field private lastReportedPlayWhenReady:Z

.field private lastReportedPlaybackState:I

.field private mainHandler:Landroid/os/Handler;

.field private mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

.field private player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

.field private textureView:Landroid/view/TextureView;

.field private trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoPlayer;->BANDWIDTH_METER:Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/ui/Components/VideoPlayer;->BANDWIDTH_METER:Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

    new-instance v4, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    const-string/jumbo v5, "Mozilla/5.0 (X11; Linux x86_64; rv:10.0) Gecko/20150101 Firefox/47.0 (Chrome)"

    sget-object v6, Lorg/telegram/ui/Components/VideoPlayer;->BANDWIDTH_METER:Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection$Factory;

    sget-object v1, Lorg/telegram/ui/Components/VideoPlayer;->BANDWIDTH_METER:Lorg/telegram/messenger/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/trackselection/AdaptiveVideoTrackSelection$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/BandwidthMeter;)V

    .local v0, "videoTrackSelectionFactory":Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;

    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    return-void
.end method

.method private ensurePleyaerCreated()V
    .locals 5

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->trackSelector:Lorg/telegram/messenger/exoplayer2/trackselection/MappingTrackSelector;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;

    invoke-direct {v2}, Lorg/telegram/messenger/exoplayer2/DefaultLoadControl;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelector;Lorg/telegram/messenger/exoplayer2/LoadControl;Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;I)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->addListener(Lorg/telegram/messenger/exoplayer2/ExoPlayer$EventListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoListener(Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$VideoListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoplay:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method private maybeReportPlayerState()V
    .locals 3

    .prologue
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    .local v0, "playWhenReady":Z
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    .local v1, "playbackState":I
    iget-boolean v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlayWhenReady:Z

    if-ne v2, v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    if-eq v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v2, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onStateChanged(ZI)V

    iput-boolean v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlayWhenReady:Z

    iput v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getBufferedPercentage()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getBufferedPercentage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public isBuffering()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->lastReportedPlaybackState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayerPrepared()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .param p1, "isLoading"    # Z

    .prologue
    return-void
.end method

.method public onPlayerError(Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;)V
    .locals 1
    .param p1, "error"    # Lorg/telegram/messenger/exoplayer2/ExoPlaybackException;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->maybeReportPlayerState()V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    .prologue
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onRenderedFirstFrame()V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    return v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

    .locals 0
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    return-void
.end method

.method public onTracksChanged(Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p1, "trackGroups"    # Lorg/telegram/messenger/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lorg/telegram/messenger/exoplayer2/trackselection/TrackSelectionArray;

    .prologue
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;->onVideoSizeChanged(IIIF)V

    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->ensurePleyaerCreated()V

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .local v0, "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1, v0, v6, v6}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V

    return-void

    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :sswitch_0
    const-string/jumbo v2, "dash"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "hls"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v6

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_1

    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :pswitch_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, v2, v5}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_1

    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :pswitch_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xe60 -> :sswitch_2
        0x193ef -> :sswitch_1
        0x2eef92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public preparePlayerLoop(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 11
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "videoType"    # Ljava/lang/String;
    .param p3, "audioUri"    # Landroid/net/Uri;
    .param p4, "audioType"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lorg/telegram/ui/Components/VideoPlayer;->ensurePleyaerCreated()V

    const/4 v8, 0x0

    .local v8, "mediaSource1":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    const/4 v9, 0x0

    .local v9, "mediaSource2":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    const/4 v2, 0x2

    if-ge v6, v2, :cond_3

    if-nez v6, :cond_1

    move-object v10, p2

    .local v10, "type":Ljava/lang/String;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    :goto_1
    const/4 v2, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_2
    packed-switch v2, :pswitch_data_0

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .local v0, "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :goto_3
    new-instance v7, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

    invoke-direct {v7, v0}, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V

    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .local v7, "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    if-nez v6, :cond_2

    move-object v8, v7

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .end local v10    # "type":Ljava/lang/String;
    :cond_1
    move-object v10, p4

    .restart local v10    # "type":Ljava/lang/String;
    move-object v1, p3

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_1

    :sswitch_0
    const-string/jumbo v3, "dash"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v3, "hls"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v3, "ss"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_2

    :pswitch_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/dash/DashChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_3

    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :pswitch_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_3

    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :pswitch_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;

    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mediaDataSourceFactory:Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v4, p0, Lorg/telegram/ui/Components/VideoPlayer;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Landroid/net/Uri;Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener;)V

    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    goto :goto_3

    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .restart local v7    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :cond_2
    move-object v9, v7

    goto :goto_4

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .end local v10    # "type":Ljava/lang/String;
    :cond_3
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;-><init>([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V

    .restart local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    iget-object v2, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v8, v3, v4}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->prepare(Lorg/telegram/messenger/exoplayer2/source/MediaSource;ZZ)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xe60 -> :sswitch_2
        0x193ef -> :sswitch_1
        0x2eef92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public releasePlayer()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V
    .locals 0
    .param p1, "videoPlayerDelegate"    # Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->delegate:Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;

    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    goto :goto_0
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->autoplay:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 2
    .param p1, "texture"    # Landroid/view/TextureView;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/VideoPlayer;->player:Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Components/VideoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer;->setVideoTextureView(Landroid/view/TextureView;)Lorg/telegram/messenger/exoplayer2/SimpleExoPlayer$ComponentListener;

    goto :goto_0
.end method
