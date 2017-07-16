.class public final Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field public volatile bufferedPositionUs:J

.field public final periodIndex:I

.field public volatile positionUs:J

.field public final startPositionUs:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "periodIndex"    # I
    .param p2, "startPositionUs"    # J

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->periodIndex:I

    .line 61
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    .line 62
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 63
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    .line 64
    return-void
.end method


# virtual methods
.method public copyWithPeriodIndex(I)Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    .locals 4
    .param p1, "periodIndex"    # I

    .prologue
    .line 67
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->startPositionUs:J

    invoke-direct {v0, p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;-><init>(IJ)V

    .line 68
    .local v0, "playbackInfo":Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->positionUs:J

    .line 69
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    iput-wide v2, v0, Lorg/telegram/messenger/exoplayer2/ExoPlayerImplInternal$PlaybackInfo;->bufferedPositionUs:J

    .line 70
    return-object v0
.end method
