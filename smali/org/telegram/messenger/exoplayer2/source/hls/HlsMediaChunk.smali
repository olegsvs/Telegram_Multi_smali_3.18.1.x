.class final Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
.super Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;
.source "HlsMediaChunk.java"


# static fields
.field private static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field private static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field private static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field private static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field private static final UID_SOURCE:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field private static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# instance fields
.field private adjustedEndTimeUs:J

.field private bytesLoaded:I

.field public final discontinuitySequenceNumber:I

.field private extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field public final hlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

.field private final initDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final initDataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field private initLoadCompleted:Z

.field private initSegmentBytesLoaded:I

.field private final isEncrypted:Z

.field private final isMasterTimestampSource:Z

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

.field private final timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->UID_SOURCE:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;ILjava/lang/Object;Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;IZLorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;[B[B)V
    .locals 13
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "initDataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p4, "hlsUrl"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;
    .param p5, "trackSelectionReason"    # I
    .param p6, "trackSelectionData"    # Ljava/lang/Object;
    .param p7, "segment"    # Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;
    .param p8, "chunkIndex"    # I
    .param p9, "isMasterTimestampSource"    # Z
    .param p10, "timestampAdjuster"    # Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;
    .param p11, "previousChunk"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;
    .param p12, "encryptionKey"    # [B
    .param p13, "encryptionIv"    # [B

    .prologue
    move-object/from16 v0, p12

    move-object/from16 v1, p13

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->buildDataSource(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[B[B)Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v5, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    move-object/from16 v0, p7

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->startTimeUs:J

    move-object/from16 v0, p7

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v10, v6

    move-object v2, p0

    move-object v4, p2

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer2/source/chunk/MediaChunk;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;Lorg/telegram/messenger/exoplayer2/Format;ILjava/lang/Object;JJI)V

    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    move/from16 v0, p9

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    instance-of v2, v2, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;

    iput-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->isEncrypted:Z

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    move-object/from16 v0, p7

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->discontinuitySequenceNumber:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J

    sget-object v2, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->UID_SOURCE:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    return-void
.end method

.method private static buildDataSource(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[B[B)Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .locals 1
    .param p0, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p1, "encryptionKey"    # [B
    .param p2, "encryptionIv"    # [B

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .end local p0    # "dataSource":Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "dataSource":Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    :cond_1
    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/hls/Aes128DataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;[B[B)V

    move-object p0, v0

    goto :goto_0
.end method

.method private buildExtractor()Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->discontinuitySequenceNumber:I

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v9, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v9, v9, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    if-eq v8, v9, :cond_2

    :cond_0
    move v4, v7

    .local v4, "needNewExtractor":Z
    :goto_0
    const/4 v5, 0x1

    .local v5, "usingNewExtractor":Z
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-object v8, v8, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .local v3, "lastPathSegment":Ljava/lang/String;
    const-string/jumbo v8, ".aac"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-direct {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/AdtsExtractor;-><init>(J)V

    .local v2, "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :goto_1
    if-eqz v5, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractorOutput:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-interface {v2, v6}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V

    :cond_1
    return-object v2

    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    .end local v3    # "lastPathSegment":Ljava/lang/String;
    .end local v4    # "needNewExtractor":Z
    .end local v5    # "usingNewExtractor":Z
    :cond_2
    move v4, v6

    goto :goto_0

    .restart local v3    # "lastPathSegment":Ljava/lang/String;
    .restart local v4    # "needNewExtractor":Z
    .restart local v5    # "usingNewExtractor":Z
    :cond_3
    const-string/jumbo v8, ".ac3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, ".ec3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-direct {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/Ac3Extractor;-><init>(J)V

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_1

    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_5
    const-string/jumbo v8, ".mp3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-direct {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(J)V

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_1

    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_6
    const-string/jumbo v8, ".webvtt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, ".vtt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    new-instance v2, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v6, v6, Lorg/telegram/messenger/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-direct {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_1

    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_8
    if-nez v4, :cond_9

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v2, v6, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_1

    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_9
    const-string/jumbo v8, ".mp4"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-direct {v2, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;)V

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto :goto_1

    .end local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    :cond_a
    const/4 v1, 0x0

    .local v1, "esReaderFactoryFlags":I
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, v6, Lorg/telegram/messenger/exoplayer2/Format;->codecs:Ljava/lang/String;

    .local v0, "codecs":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "audio/mp4a-latm"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    or-int/lit8 v1, v1, 0x2

    :cond_b
    const-string/jumbo v6, "video/avc"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    or-int/lit8 v1, v1, 0x4

    :cond_c
    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    new-instance v8, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v8, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    invoke-direct {v2, v6, v8, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ts/TsExtractor;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;Lorg/telegram/messenger/exoplayer2/extractor/ts/TsPayloadReader$Factory;Z)V

    .restart local v2    # "extractor":Lorg/telegram/messenger/exoplayer2/extractor/Extractor;
    goto/16 :goto_1
.end method

.method private loadMedia()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->isEncrypted:Z

    if-eqz v1, :cond_3

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .local v8, "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    if-eqz v1, :cond_2

    move v10, v11

    .local v10, "skipLoadedBytes":Z
    :goto_0
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v2, v8, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v4, v8}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V

    .local v0, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    if-eqz v10, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v9, 0x0

    .local v9, "result":I
    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->isMasterTimestampSource:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->timestampAdjuster:Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/extractor/TimestampAdjuster;->waitUntilInitialized()V

    :cond_1
    :goto_1
    if-nez v9, :cond_4

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    goto :goto_1

    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .end local v9    # "result":I
    .end local v10    # "skipLoadedBytes":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .end local v8    # "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v8

    .restart local v8    # "loadDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    const/4 v10, 0x0

    .restart local v10    # "skipLoadedBytes":Z
    goto :goto_0

    .restart local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .restart local v9    # "result":I
    :cond_4
    :try_start_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractorOutput:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLargestQueuedTimestampUs()J

    move-result-wide v6

    .local v6, "adjustedEndTimeUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v1, v6, v2

    if-eqz v1, :cond_5

    iput-wide v6, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    iput-boolean v11, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    return-void

    .end local v6    # "adjustedEndTimeUs":J
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .end local v9    # "result":I
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    throw v1
.end method

.method private maybeLoadInitData()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initLoadCompleted:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->getRemainderDataSpec(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    move-result-object v6

    .local v6, "initSegmentDataSpec":Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    :try_start_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-wide v2, v6, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initDataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v4, v6}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .local v0, "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    const/4 v7, 0x0

    .local v7, "result":I
    :goto_1
    if-nez v7, :cond_2

    :try_start_1
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/Extractor;->read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_1

    :cond_2
    :try_start_2
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v4, v4, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initLoadCompleted:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    iget-wide v8, v3, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v4, v8

    long-to-int v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->initSegmentBytesLoaded:I

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "input":Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .end local v7    # "result":I
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Util;->closeQuietly(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;)V

    throw v1
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancelLoad()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public getAdjustedEndTimeUs()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J

    return-wide v0
.end method

.method public getAdjustedStartTimeUs()J
    .locals 4

    .prologue
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->adjustedEndTimeUs:J

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->getDurationUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public init(Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 3
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractorOutput:Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->previousChunk:Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->hlsUrl:Lorg/telegram/messenger/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsSampleStreamWrapper;->init(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadCanceled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    return v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public load()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->buildExtractor()Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->extractor:Lorg/telegram/messenger/exoplayer2/extractor/Extractor;

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->maybeLoadInitData()V

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/source/hls/HlsMediaChunk;->loadMedia()V

    :cond_1
    return-void
.end method
