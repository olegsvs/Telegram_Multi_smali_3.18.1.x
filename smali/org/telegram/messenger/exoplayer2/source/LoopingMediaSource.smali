.class public final Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;
.super Ljava/lang/Object;
.source "LoopingMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LoopingMediaSource"


# instance fields
.field private childPeriodCount:I

.field private final childSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "childSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .prologue
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;-><init>(Lorg/telegram/messenger/exoplayer2/source/MediaSource;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/MediaSource;I)V
    .locals 1
    .param p1, "childSource"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    .param p2, "loopCount"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->childSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->loopCount:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->loopCount:I

    return v0
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 3
    .param p1, "index"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->childSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->childPeriodCount:I

    rem-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->childSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 2
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->childSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    return-void
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->childSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public releaseSource()V
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->childSource:Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releaseSource()V

    return-void
.end method
