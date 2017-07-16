.class public final Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;
.super Ljava/lang/Object;
.source "ChunkIndex.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# instance fields
.field private final durationUs:J

.field public final durationsUs:[J

.field public final length:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timesUs:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 4
    .param p1, "sizes"    # [I
    .param p2, "offsets"    # [J
    .param p3, "durationsUs"    # [J
    .param p4, "timesUs"    # [J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->sizes:[I

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    array-length v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->length:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p3, v0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p4, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->durationUs:J

    return-void
.end method


# virtual methods
.method public getChunkIndex(J)I
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    invoke-static {v0, p1, p2, v1, v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    return v0
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 3
    .param p1, "timeUs"    # J

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->offsets:[J

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
