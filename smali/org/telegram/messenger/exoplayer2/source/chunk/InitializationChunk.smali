.class public final Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;
.source "InitializationChunk.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$SingleTrackMetadataOutput;
.implements Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# instance fields
.field private volatile bytesLoaded:I

.field private final extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

.field private seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;)V
    .locals 14
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "trackFormat"    # Lorg/telegram/messenger/exoplayer2/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "extractorWrapper"    # Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .prologue
    .line 60
    const/4 v6, 0x2

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer2/source/chunk/Chunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;ILorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 62
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 63
    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->loadCanceled:Z

    .line 124
    return-void
.end method

.method public format(Lorg/telegram/messenger/exoplayer2/Format;)V
    .locals 0
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer2/Format;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    .line 100
    return-void
.end method

.method public getSampleFormat()Lorg/telegram/messenger/exoplayer2/Format;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->sampleFormat:Lorg/telegram/messenger/exoplayer2/Format;

    return-object v0
.end method

.method public getSeekMap()Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    return-object v0
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->loadCanceled:Z

    return v0
.end method

.method public load()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v6

    .line 137
    .local v6, "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 138
    invoke-interface {v4, v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V

    .line 139
    .local v0, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->bytesLoaded:I

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, p0, p0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->init(Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper$SingleTrackMetadataOutput;Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :cond_0
    const/4 v7, 0x0

    .line 146
    .local v7, "result":I
    :goto_0
    if-nez v7, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->loadCanceled:Z

    if-nez v1, :cond_1

    .line 147
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->extractorWrapper:Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/chunk/ChunkExtractorWrapper;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_0

    .line 150
    :cond_1
    :try_start_2
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->bytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 155
    return-void

    .line 150
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->bytesLoaded:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .end local v7    # "result":I
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    throw v1
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 2
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V
    .locals 2
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampleMetadata(JIII[B)V
    .locals 2
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected sample data in initialization chunk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V
    .locals 0
    .param p1, "seekMap"    # Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/chunk/InitializationChunk;->seekMap:Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;

    .line 93
    return-void
.end method
