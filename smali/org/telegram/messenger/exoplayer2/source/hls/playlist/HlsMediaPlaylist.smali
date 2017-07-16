.class public final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.super Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    }
.end annotation


# instance fields
.field public final durationUs:J

.field public final hasEndTag:Z

.field public final initializationSegment:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

.field public final mediaSequence:I

.field public final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public final version:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/List;)V
    .locals 6
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "mediaSequence"    # I
    .param p3, "version"    # I
    .param p4, "hasEndTag"    # Z
    .param p5, "initializationSegment"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p6, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;I)V

    .line 83
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    .line 84
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->version:I

    .line 85
    iput-boolean p4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    .line 86
    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 87
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 89
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    const/4 v2, 0x0

    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 91
    .local v0, "first":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 92
    .local v1, "last":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-wide v2, v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v2, v4

    iget-wide v4, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    .line 96
    .end local v0    # "first":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .end local v1    # "last":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    :goto_0
    return-void

    .line 94
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    goto :goto_0
.end method


# virtual methods
.method public copyWithSegments(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->version:I

    iget-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;-><init>(Ljava/lang/String;IIZLorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/List;)V

    return-object v0
.end method

.method public copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 9
    .param p1, "newStartTimeUs"    # J

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getStartTimeUs()J

    move-result-wide v6

    sub-long v4, p1, v6

    .line 108
    .local v4, "startTimeOffsetUs":J
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 109
    .local v3, "segmentsSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v1, "newSegments":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 111
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 112
    .local v2, "segment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-wide v6, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    add-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "segment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWithSegments(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v6

    return-object v6
.end method

.method public getEndTimeUs()J
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->getStartTimeUs()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartTimeUs()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    goto :goto_0
.end method
