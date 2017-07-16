.class Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;
.super Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/audio/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioTrackUtilV23"
.end annotation


# instance fields
.field private playbackParams:Landroid/media/PlaybackParams;

.field private playbackSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1372
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    .line 1373
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackSpeed:F

    .line 1374
    return-void
.end method

.method private maybeApplyPlaybackParams()V
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackParams:Landroid/media/PlaybackParams;

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackParams:Landroid/media/PlaybackParams;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 1401
    :cond_0
    return-void
.end method


# virtual methods
.method public getPlaybackSpeed()F
    .locals 1

    .prologue
    .line 1394
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackSpeed:F

    return v0
.end method

.method public reconfigure(Landroid/media/AudioTrack;Z)V
    .locals 0
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "needsPassthroughWorkaround"    # Z

    .prologue
    .line 1379
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV19;->reconfigure(Landroid/media/AudioTrack;Z)V

    .line 1380
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->maybeApplyPlaybackParams()V

    .line 1381
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1
    .param p1, "playbackParams"    # Landroid/media/PlaybackParams;

    .prologue
    .line 1385
    if-eqz p1, :cond_0

    .line 1386
    .end local p1    # "playbackParams":Landroid/media/PlaybackParams;
    :goto_0
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object p1

    .line 1387
    .restart local p1    # "playbackParams":Landroid/media/PlaybackParams;
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackParams:Landroid/media/PlaybackParams;

    .line 1388
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->playbackSpeed:F

    .line 1389
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/audio/AudioTrack$AudioTrackUtilV23;->maybeApplyPlaybackParams()V

    .line 1390
    return-void

    .line 1385
    :cond_0
    new-instance p1, Landroid/media/PlaybackParams;

    .end local p1    # "playbackParams":Landroid/media/PlaybackParams;
    invoke-direct {p1}, Landroid/media/PlaybackParams;-><init>()V

    goto :goto_0
.end method
