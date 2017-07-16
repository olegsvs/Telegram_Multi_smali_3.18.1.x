.class Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;
.implements Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlacOggSeeker"
.end annotation


# static fields
.field private static final METADATA_LENGTH_OFFSET:I = 0x1

.field private static final SEEK_POINT_SIZE:I = 0x12


# instance fields
.field private currentGranule:J

.field private firstFrameOffset:J

.field private offsets:[J

.field private volatile queriedGranule:J

.field private sampleNumbers:[J

.field private volatile seekedGranule:J

.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 125
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 135
    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;)V

    return-void
.end method


# virtual methods
.method public createSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    .locals 0

    .prologue
    .line 182
    return-object p0
.end method

.method public getDurationUs()J
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;)Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->durationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getPosition(J)J
    .locals 7
    .param p1, "timeUs"    # J

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->convertTimeToGranule(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->queriedGranule:J

    .line 193
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->sampleNumbers:[J

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->queriedGranule:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 194
    .local v0, "index":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->sampleNumbers:[J

    aget-wide v2, v1, v0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekedGranule:J

    .line 195
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->offsets:[J

    aget-wide v4, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v2, v4

    monitor-exit p0

    return-wide v2

    .line 192
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public parseSeekTable(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 6
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 151
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 152
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    .line 153
    .local v1, "length":I
    div-int/lit8 v2, v1, 0x12

    .line 155
    .local v2, "numberOfSeekPoints":I
    new-array v3, v2, [J

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->sampleNumbers:[J

    .line 156
    new-array v3, v2, [J

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->offsets:[J

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 159
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->sampleNumbers:[J

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 160
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->offsets:[J

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 161
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)J
    .locals 4
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 167
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 168
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    neg-long v0, v0

    const-wide/16 v2, 0x2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    .line 169
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    .line 171
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setFirstFrameOffset(J)V
    .locals 1
    .param p1, "firstFrameOffset"    # J

    .prologue
    .line 138
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->firstFrameOffset:J

    .line 139
    return-void
.end method

.method public declared-synchronized startSeek()J
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->seekedGranule:J

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->currentGranule:J

    .line 177
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->queriedGranule:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
