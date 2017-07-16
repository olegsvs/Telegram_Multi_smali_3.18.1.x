.class final Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;
.super Lorg/telegram/messenger/exoplayer2/Timeline;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashTimeline"
.end annotation


# instance fields
.field private final firstPeriodId:I

.field private final manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

.field private final offsetInFirstPeriodUs:J

.field private final presentationStartTimeMs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowStartTimeMs:J


# direct methods
.method public constructor <init>(JJIJJJLorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;)V
    .locals 0
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "firstPeriodId"    # I
    .param p6, "offsetInFirstPeriodUs"    # J
    .param p8, "windowDurationUs"    # J
    .param p10, "windowDefaultStartPositionUs"    # J
    .param p12, "manifest"    # Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .prologue
    .line 621
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/Timeline;-><init>()V

    .line 622
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    .line 623
    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    .line 624
    iput p5, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 625
    iput-wide p6, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 626
    iput-wide p8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 627
    iput-wide p10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 628
    iput-object p12, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 629
    return-void
.end method

.method private getAdjustedWindowDefaultStartPositionUs(J)J
    .locals 15
    .param p1, "defaultPositionProjectionUs"    # J

    .prologue
    .line 674
    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 675
    .local v10, "windowDefaultStartPositionUs":J
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v9, v9, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v9, :cond_0

    move-wide v12, v10

    .line 711
    :goto_0
    return-wide v12

    .line 678
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v9, p1, v12

    if-lez v9, :cond_1

    .line 679
    add-long v10, v10, p1

    .line 680
    iget-wide v12, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    .line 682
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 686
    :cond_1
    const/4 v3, 0x0

    .line 687
    .local v3, "periodIndex":I
    iget-wide v12, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    add-long v0, v12, v10

    .line 688
    .local v0, "defaultStartPositionInPeriodUs":J
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v9, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    .line 689
    .local v4, "periodDurationUs":J
    :goto_1
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_2

    cmp-long v9, v0, v4

    if-ltz v9, :cond_2

    .line 691
    sub-long/2addr v0, v4

    .line 692
    add-int/lit8 v3, v3, 0x1

    .line 693
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v9, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    goto :goto_1

    .line 695
    :cond_2
    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 696
    invoke-virtual {v9, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    .line 697
    .local v2, "period":Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v8

    .line 698
    .local v8, "videoAdaptationSetIndex":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    move-wide v12, v10

    .line 700
    goto :goto_0

    .line 704
    :cond_3
    iget-object v9, v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    const/4 v12, 0x0

    .line 705
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->getIndex()Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object v7

    .line 706
    .local v7, "snapIndex":Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;
    if-nez v7, :cond_4

    move-wide v12, v10

    .line 708
    goto :goto_0

    .line 710
    :cond_4
    invoke-interface {v7, v0, v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)I

    move-result v6

    .line 711
    .local v6, "segmentNum":I
    invoke-interface {v7, v6}, Lorg/telegram/messenger/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(I)J

    move-result-wide v12

    add-long/2addr v12, v10

    sub-long/2addr v12, v0

    goto :goto_0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 4
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 665
    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 669
    .end local p1    # "uid":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 668
    .restart local p1    # "uid":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "uid":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 669
    .local v0, "periodId":I
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    if-lt v0, v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getPeriod(ILorg/telegram/messenger/exoplayer2/Timeline$Period;Z)Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .locals 10
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lorg/telegram/messenger/exoplayer2/Timeline$Period;
    .param p3, "setIdentifiers"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 638
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    invoke-static {p1, v3, v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 639
    if-eqz p3, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    .line 640
    .local v1, "id":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 641
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    move-result v4

    add-int/2addr v0, v4

    .line 640
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 642
    .local v2, "uid":Ljava/lang/Integer;
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 643
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lorg/telegram/messenger/exoplayer2/C;->msToUs(J)J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    sub-long/2addr v6, v8

    move-object v0, p2

    .line 642
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lorg/telegram/messenger/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0

    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "uid":Ljava/lang/Integer;
    :cond_1
    move-object v1, v2

    .line 639
    goto :goto_0
.end method

.method public getPeriodCount()I
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    return v0
.end method

.method public getWindow(ILorg/telegram/messenger/exoplayer2/Timeline$Window;ZJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .locals 20
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lorg/telegram/messenger/exoplayer2/Timeline$Window;
    .param p3, "setIdentifier"    # Z
    .param p4, "defaultPositionProjectionUs"    # J

    .prologue
    .line 655
    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 656
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getAdjustedWindowDefaultStartPositionUs(J)J

    move-result-wide v12

    .line 658
    .local v12, "windowDefaultStartPositionUs":J
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v11, v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    .line 660
    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    add-int/lit8 v17, v4, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 v18, v0

    move-object/from16 v4, p2

    .line 658
    invoke-virtual/range {v4 .. v19}, Lorg/telegram/messenger/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Lorg/telegram/messenger/exoplayer2/Timeline$Window;

    move-result-object v4

    return-object v4
.end method

.method public getWindowCount()I
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x1

    return v0
.end method
