.class public final Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;
    }
.end annotation


# instance fields
.field private final duplicateFlags:[Z

.field private listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

.field private final manifests:[Ljava/lang/Object;

.field private final mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field private final sourceIndexByMediaPeriod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

.field private final timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;


# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSources"    # [Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .line 49
    array-length v0, p1

    new-array v0, v0, [Lorg/telegram/messenger/exoplayer2/Timeline;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    .line 50
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    .line 52
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->buildDuplicateFlags([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)[Z

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->handleSourceInfoRefreshed(ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    return-void
.end method

.method private static buildDuplicateFlags([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)[Z
    .locals 5
    .param p0, "mediaSources"    # [Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .prologue
    .line 129
    array-length v4, p0

    new-array v0, v4, [Z

    .line 130
    .local v0, "duplicateFlags":[Z
    new-instance v3, Ljava/util/IdentityHashMap;

    array-length v4, p0

    invoke-direct {v3, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 131
    .local v3, "sources":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/telegram/messenger/exoplayer2/source/MediaSource;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 132
    aget-object v2, p0, v1

    .line 133
    .local v2, "source":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    goto :goto_1

    .line 139
    .end local v2    # "source":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :cond_1
    return-object v0
.end method

.method private handleSourceInfoRefreshed(ILorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 5
    .param p1, "sourceFirstIndex"    # I
    .param p2, "sourceTimeline"    # Lorg/telegram/messenger/exoplayer2/Timeline;
    .param p3, "sourceManifest"    # Ljava/lang/Object;

    .prologue
    .line 109
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aput-object p2, v2, p1

    .line 110
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p3, v2, p1

    .line 112
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 113
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v3, v3, p1

    if-ne v2, v3, :cond_0

    .line 114
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    aput-object p2, v2, v0

    .line 115
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    aput-object p3, v2, v0

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 119
    .local v1, "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    if-nez v1, :cond_2

    .line 126
    .end local v1    # "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    :goto_2
    return-void

    .line 118
    .restart local v1    # "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v1    # "timeline":Lorg/telegram/messenger/exoplayer2/Timeline;
    :cond_3
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timelines:[Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-virtual {v2}, [Lorg/telegram/messenger/exoplayer2/Timeline;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/messenger/exoplayer2/Timeline;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;-><init>([Lorg/telegram/messenger/exoplayer2/Timeline;)V

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    .line 125
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->manifests:[Ljava/lang/Object;

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;->onSourceInfoRefreshed(Lorg/telegram/messenger/exoplayer2/Timeline;Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 5
    .param p1, "index"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    .line 82
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    invoke-static {v3, p1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->access$100(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I

    move-result v2

    .line 83
    .local v2, "sourceIndex":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->timeline:Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;

    invoke-static {v3, v2}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;->access$200(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$ConcatenatedTimeline;I)I

    move-result v3

    sub-int v1, p1, v3

    .line 84
    .local v1, "periodIndexInSource":I
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v3, v3, v2

    invoke-interface {v3, v1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-result-object v0

    .line 86
    .local v0, "mediaPeriod":Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 4
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 59
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 60
    move v1, v0

    .line 61
    .local v1, "index":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;I)V

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    .line 58
    .end local v1    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    return-void
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    .line 92
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 93
    .local v0, "sourceIndex":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->sourceIndexByMediaPeriod:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    .line 95
    return-void
.end method

.method public releaseSource()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 100
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->duplicateFlags:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/ConcatenatingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releaseSource()V

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method
