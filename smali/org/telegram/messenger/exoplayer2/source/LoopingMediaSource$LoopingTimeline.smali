.class final Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;
.super Lorg/telegram/messenger/exoplayer2/Timeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/Timeline;I)V
    .locals 4
    .param p1, "childTimeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p2, "loopCount"    # I

    .prologue
    const v2, 0x7fffffff

    .line 99
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/Timeline;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 101
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriodCount()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 102
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 104
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int v0, v2, v1

    .line 105
    .local v0, "maxLoopCount":I
    if-le p2, v0, :cond_1

    .line 106
    if-eq p2, v2, :cond_0

    .line 107
    const-string/jumbo v1, "LoopingMediaSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Capped loops to avoid overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_1
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    goto :goto_0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 5
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    .line 149
    instance-of v4, p1, Landroid/util/Pair;

    if-nez v4, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 152
    check-cast v1, Landroid/util/Pair;

    .line 153
    .local v1, "loopCountAndChildUid":Landroid/util/Pair;, "Landroid/util/Pair<**>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 156
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    .local v0, "loopCount":I
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int v2, v0, v3

    .line 158
    .local v2, "periodIndexOffset":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_0
.end method

.method public getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .locals 3
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .param p3, "setIds"    # Z

    .prologue
    .line 138
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    rem-int v2, p1, v2

    invoke-virtual {v1, v2, p2, p3}, Lorg/telegram/messenger/exoplayer2/Timeline;->getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    .line 139
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int v0, p1, v1

    .line 140
    .local v0, "loopCount":I
    iget v1, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->windowIndex:I

    .line 141
    if-eqz p3, :cond_0

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 144
    :cond_0
    return-object p2
.end method

.method public getPeriodCount()I
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .locals 8
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .param p3, "setIds"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue
    .line 123
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lorg/telegram/messenger/exoplayer2/Timeline;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    rem-int v1, p1, v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/Timeline;->getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    .line 125
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    div-int v0, p1, v0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int v6, v0, v1

    .line 126
    .local v6, "periodIndexOffset":I
    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 127
    iget v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    .line 128
    return-object p2
.end method

.method public getWindowCount()I
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int/2addr v0, v1

    return v0
.end method
