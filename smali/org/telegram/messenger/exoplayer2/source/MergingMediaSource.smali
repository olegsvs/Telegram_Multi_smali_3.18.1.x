.class public final Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation


# static fields
.field private static final PERIOD_COUNT_UNSET:I = -0x1


# instance fields
.field private listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

.field private final mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

.field private mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private primaryManifest:Ljava/lang/Object;




# direct methods
.method public varargs constructor <init>([Lorg/telegram/messenger/exoplayer2/source/MediaSource;)V
    .locals 2
    .param p1, "mediaSources"    # [Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V





    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    return-void
.end method

    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;
    .param p1, "x1"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue

    return-void
.end method

    .locals 4

    .prologue
    const/4 v3, 0x0


    move-result v1

    .local v1, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1



    move-result-object v2


    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3


    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->periodCount:I

    if-eq v2, v3, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    goto :goto_1
.end method

    .locals 3
    .param p1, "sourceIndex"    # I
    .param p3, "manifest"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0


    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p1, :cond_3


    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;

    :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->primaryManifest:Ljava/lang/Object;


    goto :goto_0
.end method


# virtual methods
.method public createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    .locals 3
    .param p1, "index"    # I
    .param p2, "allocator"    # Lorg/telegram/messenger/exoplayer2/upstream/Allocator;
    .param p3, "positionUs"    # J

    .prologue
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v2, v2

    new-array v1, v2, [Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .local v1, "periods":[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->createPeriod(ILorg/telegram/messenger/exoplayer2/upstream/Allocator;J)Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;-><init>([Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    return-object v2
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mergeError:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    throw v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .local v0, "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :cond_1
    return-void
.end method

.method public prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 4
    .param p1, "listener"    # Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    move v1, v0

    .local v1, "sourceIndex":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, v1

    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;-><init>(Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;I)V

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "sourceIndex":I
    :cond_0
    return-void
.end method

.method public releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V
    .locals 4
    .param p1, "mediaPeriod"    # Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    .prologue
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;

    .local v1, "mergingPeriod":Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    aget-object v2, v2, v0

    iget-object v3, v1, Lorg/telegram/messenger/exoplayer2/source/MergingMediaPeriod;->periods:[Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releasePeriod(Lorg/telegram/messenger/exoplayer2/source/MediaPeriod;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public releaseSource()V
    .locals 4

    .prologue
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->mediaSources:[Lorg/telegram/messenger/exoplayer2/source/MediaSource;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .local v0, "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/source/MediaSource;->releaseSource()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "mediaSource":Lorg/telegram/messenger/exoplayer2/source/MediaSource;
    :cond_0
    return-void
.end method
