.class final Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
.super Ljava/lang/Object;
.source "HlsPlaylistTracker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaPlaylistBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback",
        "<",
        "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

.field private latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

.field private final mediaPlaylistLoadable:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

.field private final playlistUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
    .locals 1
    .param p2, "playlistUrl"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;-><init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 352
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 5
    .param p2, "playlistUrl"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p3, "initialSnapshot"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 354
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    .line 356
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 357
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    const-string/jumbo v1, "HlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    .line 358
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$300(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v1

    .line 359
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$400(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->baseUri:Ljava/lang/String;

    iget-object v3, p2, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x4

    .line 360
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$500(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    .line 361
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;)Lorg/telegram/messenger/exoplayer2/upstream/Loader;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;
    .param p1, "x1"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    return-void
.end method

.method private processLoadedPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 7
    .param p1, "loadedMediaPlaylist"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 449
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 450
    .local v0, "oldPlaylist":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v4, v0, p1}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$900(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 452
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-eq v0, v4, :cond_3

    .line 453
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    if-eqz v4, :cond_0

    .line 454
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    invoke-interface {v4}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;->onPlaylistChanged()V

    .line 455
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    .line 457
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-nez v0, :cond_2

    :goto_0
    invoke-static {v4, v5, v6, v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$1000(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Z)Z

    move-result v1

    .line 462
    .local v1, "shouldScheduleRefresh":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 463
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$1100(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    :cond_1
    return-void

    .end local v1    # "shouldScheduleRefresh":Z
    :cond_2
    move v2, v3

    .line 457
    goto :goto_0

    .line 460
    :cond_3
    iget-boolean v4, p1, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v4, :cond_4

    move v1, v2

    .restart local v1    # "shouldScheduleRefresh":Z
    :goto_2
    goto :goto_1

    .end local v1    # "shouldScheduleRefresh":Z
    :cond_4
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public adjustTimestampsOfPlaylist(IJ)V
    .locals 12
    .param p1, "chunkMediaSequence"    # I
    .param p2, "adjustedStartTimeUs"    # J

    .prologue
    .line 378
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 379
    .local v4, "segments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:I

    sub-int v2, p1, v8

    .line 380
    .local v2, "indexOfChunk":I
    if-gez v2, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 384
    .local v0, "actualSegment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    sub-long/2addr v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 385
    .local v6, "timestampDriftUs":J
    const-wide/32 v8, 0x7a120

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    .line 388
    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 390
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 391
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 392
    .local v3, "segment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    add-int/lit8 v8, v1, 0x1

    .line 393
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v8, v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    iget-wide v10, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    sub-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v8

    .line 392
    invoke-virtual {v4, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 390
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 396
    .end local v3    # "segment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 397
    .local v5, "segmentsSize":I
    add-int/lit8 v1, v2, 0x1

    :goto_2
    if-ge v1, v5, :cond_3

    .line 398
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 399
    .restart local v3    # "segment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    add-int/lit8 v8, v1, -0x1

    .line 400
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v8, v8, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    iget-wide v10, v3, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v8, v10

    invoke-virtual {v3, v8, v9}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->copyWithStartTimeUs(J)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v8

    .line 399
    invoke-virtual {v4, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    .end local v3    # "segment":Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    :cond_3
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-virtual {v8, v4}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->copyWithSegments(Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->latestPlaylistSnapshot:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    goto :goto_0
.end method

.method public loadPlaylist()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoadable:Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$600(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->startLoading(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;Lorg/telegram/messenger/exoplayer2/upstream/Loader$Callback;I)J

    .line 371
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 8

    .prologue
    .line 340
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJZ)V
    .locals 10
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "released"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJZ)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$700(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x4

    .line 419
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 418
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCanceled(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 420
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .prologue
    .line 340
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJ)V
    .locals 10
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->processLoadedPlaylist(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    .line 411
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$700(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v3, 0x4

    .line 412
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    .line 411
    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadCompleted(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJ)V

    .line 413
    return-void
.end method

.method public bridge synthetic onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 8

    .prologue
    .line 340
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I

    move-result v0

    return v0
.end method

.method public onLoadError(Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;JJLjava/io/IOException;)I
    .locals 14
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "loadDurationMs"    # J
    .param p6, "error"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "loadable":Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;, "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable<Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylist;>;"
    move-object/from16 v0, p6

    instance-of v13, v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    .line 427
    .local v13, "isFatal":Z
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$700(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    const/4 v5, 0x4

    .line 428
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 427
    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/AdaptiveMediaSourceEventListener$EventDispatcher;->loadError(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;IJJJLjava/io/IOException;Z)V

    .line 429
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-object/from16 v0, p6

    invoke-interface {v2, v3, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;->onPlaylistLoadError(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Ljava/io/IOException;)V

    .line 432
    :cond_0
    if-eqz v13, :cond_1

    .line 433
    const/4 v2, 0x3

    .line 435
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->this$0:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;->access$800(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker;)Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->playlistUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->mediaPlaylistLoader:Lorg/telegram/messenger/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/upstream/Loader;->release()V

    .line 365
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->loadPlaylist()V

    .line 444
    return-void
.end method

.method public setCallback(Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    .prologue
    .line 374
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$MediaPlaylistBundle;->callback:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistRefreshCallback;

    .line 375
    return-void
.end method
