.class public final Lorg/telegram/messenger/exoplayer2/Timeline$Period;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Period"
.end annotation


# instance fields
.field private durationUs:J

.field public id:Ljava/lang/Object;

.field private positionInWindowUs:J

.field public uid:Ljava/lang/Object;

.field public windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .locals 2

    .prologue
    .line 386
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->durationUs:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 393
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->durationUs:J

    return-wide v0
.end method

.method public getPositionInWindowMs()J
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->positionInWindowUs:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInWindowUs()J
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->positionInWindowUs:J

    return-wide v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "uid"    # Ljava/lang/Object;
    .param p3, "windowIndex"    # I
    .param p4, "durationUs"    # J
    .param p6, "positionInWindowUs"    # J

    .prologue
    .line 374
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->id:Ljava/lang/Object;

    .line 375
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 376
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    .line 377
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->durationUs:J

    .line 378
    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->positionInWindowUs:J

    .line 379
    return-object p0
.end method
