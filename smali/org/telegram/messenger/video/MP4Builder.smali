.class public Lorg/telegram/messenger/video/MP4Builder;
.super Ljava/lang/Object;
.source "MP4Builder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/MP4Builder$1;,
        Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;
    }
.end annotation


# instance fields
.field private currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

.field private dataOffset:J

.field private fc:Ljava/nio/channels/FileChannel;

.field private fos:Ljava/io/FileOutputStream;

.field private mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

.field private sizeBuffer:Ljava/nio/ByteBuffer;

.field private track2SampleSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/telegram/messenger/video/Track;",
            "[J>;"
        }
    .end annotation
.end field

.field private writeNewMdat:Z

.field private writedSinceLastMdat:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    .line 57
    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    .line 58
    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    .line 59
    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    .line 60
    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 61
    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    .line 64
    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    .line 170
    return-void
.end method

.method private flushCurrentMdat()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 85
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 86
    .local v0, "oldPosition":J
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getOffset()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 87
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 88
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 89
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setDataOffset(J)V

    .line 90
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 91
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 92
    return-void
.end method

.method public static gcd(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 239
    .end local p0    # "a":J
    :goto_0
    return-wide p0

    .restart local p0    # "a":J
    :cond_0
    rem-long v0, p0, p2

    invoke-static {p2, p3, v0, v1}, Lorg/telegram/messenger/video/MP4Builder;->gcd(JJ)J

    move-result-wide p0

    goto :goto_0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;Z)I
    .locals 1
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p2, "isAudio"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/video/Mp4Movie;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v0

    return v0
.end method

.method protected createCtts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 7
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 357
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleCompositions()[I

    move-result-object v5

    .line 358
    .local v5, "sampleCompositions":[I
    if-nez v5, :cond_0

    .line 376
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v3, 0x0

    .line 362
    .local v3, "lastEntry":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 365
    aget v4, v5, v0

    .line 366
    .local v4, "offset":I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 367
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    .line 364
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    :cond_1
    new-instance v3, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .end local v3    # "lastEntry":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    const/4 v6, 0x1

    invoke-direct {v3, v6, v4}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    .line 370
    .restart local v3    # "lastEntry":Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 373
    .end local v4    # "offset":I
    :cond_2
    new-instance v1, Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;-><init>()V

    .line 374
    .local v1, "ctts":Lcom/coremedia/iso/boxes/CompositionTimeToSample;
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->setEntries(Ljava/util/List;)V

    .line 375
    invoke-virtual {p2, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0
.end method

.method protected createFileTypeBox()Lcom/coremedia/iso/boxes/FileTypeBox;
    .locals 6

    .prologue
    .line 162
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 163
    .local v0, "minorBrands":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string/jumbo v1, "isom"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 164
    const-string/jumbo v1, "iso2"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string/jumbo v1, "avc1"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string/jumbo v1, "mp41"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-string/jumbo v2, "isom"

    const-wide/16 v4, 0x200

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v1
.end method

.method public createMovie(Lorg/telegram/messenger/video/Mp4Movie;)Lorg/telegram/messenger/video/MP4Builder;
    .locals 6
    .param p1, "mp4Movie"    # Lorg/telegram/messenger/video/Mp4Movie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    .line 69
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getCacheFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    .line 70
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    .line 72
    invoke-virtual {p0}, Lorg/telegram/messenger/video/MP4Builder;->createFileTypeBox()Lcom/coremedia/iso/boxes/FileTypeBox;

    move-result-object v0

    .line 73
    .local v0, "fileTypeBox":Lcom/coremedia/iso/boxes/FileTypeBox;
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/FileTypeBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 74
    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/FileTypeBox;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 75
    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    .line 77
    new-instance v1, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;-><init>(Lorg/telegram/messenger/video/MP4Builder;Lorg/telegram/messenger/video/MP4Builder$1;)V

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    .line 79
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    .line 81
    return-object p0
.end method

.method protected createMovieBox(Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;
    .locals 14
    .param p1, "movie"    # Lorg/telegram/messenger/video/Mp4Movie;

    .prologue
    .line 254
    new-instance v2, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 255
    .local v2, "movieBox":Lcom/coremedia/iso/boxes/MovieBox;
    new-instance v3, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 257
    .local v3, "mvhd":Lcom/coremedia/iso/boxes/MovieHeaderBox;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 258
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 259
    sget-object v7, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v3, v7}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    .line 260
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/video/MP4Builder;->getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J

    move-result-wide v4

    .line 261
    .local v4, "movieTimeScale":J
    const-wide/16 v0, 0x0

    .line 263
    .local v0, "duration":J
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/video/Track;

    .line 264
    .local v6, "track":Lorg/telegram/messenger/video/Track;
    invoke-virtual {v6}, Lorg/telegram/messenger/video/Track;->prepare()V

    .line 265
    invoke-virtual {v6}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v10

    mul-long/2addr v10, v4

    invoke-virtual {v6}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v12

    int-to-long v12, v12

    div-long v8, v10, v12

    .line 266
    .local v8, "tracksDuration":J
    cmp-long v10, v8, v0

    if-lez v10, :cond_0

    .line 267
    move-wide v0, v8

    goto :goto_0

    .line 271
    .end local v6    # "track":Lorg/telegram/messenger/video/Track;
    .end local v8    # "tracksDuration":J
    :cond_1
    invoke-virtual {v3, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 272
    invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 273
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v10, v7

    invoke-virtual {v3, v10, v11}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 275
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 276
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/video/Track;

    .line 277
    .restart local v6    # "track":Lorg/telegram/messenger/video/Track;
    invoke-virtual {p0, v6, p1}, Lorg/telegram/messenger/video/MP4Builder;->createTrackBox(Lorg/telegram/messenger/video/Track;Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_1

    .line 279
    .end local v6    # "track":Lorg/telegram/messenger/video/Track;
    :cond_2
    return-object v2
.end method

.method protected createStbl(Lorg/telegram/messenger/video/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 1
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;

    .prologue
    .line 339
    new-instance v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 341
    .local v0, "stbl":Lcom/coremedia/iso/boxes/SampleTableBox;
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsd(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 342
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 343
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createCtts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 344
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStss(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 345
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsc(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 346
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsz(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 347
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStco(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 349
    return-object v0
.end method

.method protected createStco(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 12
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v2, "chunksOffsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    .line 455
    .local v4, "lastOffset":J
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/video/Sample;

    .line 456
    .local v3, "sample":Lorg/telegram/messenger/video/Sample;
    invoke-virtual {v3}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v6

    .line 457
    .local v6, "offset":J
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_0

    cmp-long v10, v4, v6

    if-eqz v10, :cond_0

    .line 458
    const-wide/16 v4, -0x1

    .line 460
    :cond_0
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-nez v10, :cond_1

    .line 461
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v10

    add-long v4, v6, v10

    .line 464
    goto :goto_0

    .line 465
    .end local v3    # "sample":Lorg/telegram/messenger/video/Sample;
    .end local v6    # "offset":J
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [J

    .line 466
    .local v1, "chunkOffsetsLong":[J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 467
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v1, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 470
    :cond_3
    new-instance v8, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v8}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    .line 471
    .local v8, "stco":Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;
    invoke-virtual {v8, v1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->setChunkOffsets([J)V

    .line 472
    invoke-virtual {p2, v8}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 473
    return-void
.end method

.method protected createStsc(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 25
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 407
    new-instance v22, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    .line 408
    .local v22, "stsc":Lcom/coremedia/iso/boxes/SampleToChunkBox;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->setEntries(Ljava/util/List;)V

    .line 411
    const/4 v10, 0x1

    .line 412
    .local v10, "lastChunkNumber":I
    const/4 v11, 0x0

    .line 414
    .local v11, "lastSampleCount":I
    const/4 v15, -0x1

    .line 416
    .local v15, "previousWritedChunkCount":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 417
    .local v19, "samplesCount":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    move/from16 v0, v19

    if-ge v2, v0, :cond_4

    .line 418
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/video/Sample;

    .line 419
    .local v18, "sample":Lorg/telegram/messenger/video/Sample;
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v16

    .line 420
    .local v16, "offset":J
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v20

    .line 422
    .local v20, "size":J
    add-long v12, v16, v20

    .line 423
    .local v12, "lastOffset":J
    add-int/lit8 v11, v11, 0x1

    .line 425
    const/16 v23, 0x0

    .line 426
    .local v23, "write":Z
    add-int/lit8 v3, v19, -0x1

    if-eq v2, v3, :cond_3

    .line 427
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/video/Sample;

    .line 428
    .local v14, "nextSample":Lorg/telegram/messenger/video/Sample;
    invoke-virtual {v14}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v4

    cmp-long v3, v12, v4

    if-eqz v3, :cond_0

    .line 429
    const/16 v23, 0x1

    .line 434
    .end local v14    # "nextSample":Lorg/telegram/messenger/video/Sample;
    :cond_0
    :goto_1
    if-eqz v23, :cond_2

    .line 435
    if-eq v15, v11, :cond_1

    .line 436
    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v24

    new-instance v3, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    int-to-long v4, v10

    int-to-long v6, v11

    const-wide/16 v8, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;-><init>(JJJ)V

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    move v15, v11

    .line 439
    :cond_1
    const/4 v11, 0x0

    .line 440
    add-int/lit8 v10, v10, 0x1

    .line 417
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    :cond_3
    const/16 v23, 0x1

    goto :goto_1

    .line 443
    .end local v12    # "lastOffset":J
    .end local v16    # "offset":J
    .end local v18    # "sample":Lorg/telegram/messenger/video/Sample;
    .end local v20    # "size":J
    .end local v23    # "write":Z
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 444
    return-void
.end method

.method protected createStsd(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 1
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 353
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 354
    return-void
.end method

.method protected createStss(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 3
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 398
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSyncSamples()[J

    move-result-object v1

    .line 399
    .local v1, "syncSamples":[J
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 400
    new-instance v0, Lcom/coremedia/iso/boxes/SyncSampleBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SyncSampleBox;-><init>()V

    .line 401
    .local v0, "stss":Lcom/coremedia/iso/boxes/SyncSampleBox;
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SyncSampleBox;->setSampleNumber([J)V

    .line 402
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 404
    .end local v0    # "stss":Lcom/coremedia/iso/boxes/SyncSampleBox;
    :cond_0
    return-void
.end method

.method protected createStsz(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 2
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 447
    new-instance v0, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    .line 448
    .local v0, "stsz":Lcom/coremedia/iso/boxes/SampleSizeBox;
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->setSampleSizes([J)V

    .line 449
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 450
    return-void
.end method

.method protected createStts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 12
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    const-wide/16 v10, 0x1

    .line 379
    const/4 v5, 0x0

    .line 380
    .local v5, "lastEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleDurations()[J

    move-result-object v1

    .line 383
    .local v1, "deltas":[J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v7, v1

    if-ge v0, v7, :cond_1

    .line 384
    aget-wide v2, v1, v0

    .line 385
    .local v2, "delta":J
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    cmp-long v7, v8, v2

    if-nez v7, :cond_0

    .line 386
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v8

    add-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    .line 383
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .end local v5    # "lastEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-direct {v5, v10, v11, v2, v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    .line 389
    .restart local v5    # "lastEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    .end local v2    # "delta":J
    :cond_1
    new-instance v6, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v6}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    .line 393
    .local v6, "stts":Lcom/coremedia/iso/boxes/TimeToSampleBox;
    invoke-virtual {v6, v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->setEntries(Ljava/util/List;)V

    .line 394
    invoke-virtual {p2, v6}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 395
    return-void
.end method

.method protected createTrackBox(Lorg/telegram/messenger/video/Track;Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;
    .locals 16
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "movie"    # Lorg/telegram/messenger/video/Mp4Movie;

    .prologue
    .line 283
    new-instance v10, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v10}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 284
    .local v10, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    new-instance v9, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    .line 286
    .local v9, "tkhd":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setEnabled(Z)V

    .line 287
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInMovie(Z)V

    .line 288
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInPreview(Z)V

    .line 289
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->isAudio()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 290
    sget-object v12, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    .line 294
    :goto_0
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 296
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/MP4Builder;->getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J

    move-result-wide v14

    mul-long/2addr v12, v14

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v14

    int-to-long v14, v14

    div-long/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    .line 297
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getHeight()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getWidth()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    .line 299
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    .line 300
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 301
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getTrackId()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getVolume()F

    move-result v12

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    .line 304
    invoke-virtual {v10, v9}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 306
    new-instance v6, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v6}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 307
    .local v6, "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual {v10, v6}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 308
    new-instance v5, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 309
    .local v5, "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 310
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v5, v12, v13}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    .line 312
    const-string/jumbo v12, "eng"

    invoke-virtual {v5, v12}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v6, v5}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 314
    new-instance v4, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 315
    .local v4, "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->isAudio()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "SoundHandle"

    :goto_1
    invoke-virtual {v4, v12}, Lcom/coremedia/iso/boxes/HandlerBox;->setName(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getHandler()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v6, v4}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 320
    new-instance v7, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v7}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 321
    .local v7, "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 323
    new-instance v2, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 324
    .local v2, "dinf":Lcom/coremedia/iso/boxes/DataInformationBox;
    new-instance v3, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 325
    .local v3, "dref":Lcom/coremedia/iso/boxes/DataReferenceBox;
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 326
    new-instance v11, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 327
    .local v11, "url":Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    .line 328
    invoke-virtual {v3, v11}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 329
    invoke-virtual {v7, v2}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 331
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/video/MP4Builder;->createStbl(Lorg/telegram/messenger/video/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v8

    .line 332
    .local v8, "stbl":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v7, v8}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 333
    invoke-virtual {v6, v7}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 335
    return-object v10

    .line 292
    .end local v2    # "dinf":Lcom/coremedia/iso/boxes/DataInformationBox;
    .end local v3    # "dref":Lcom/coremedia/iso/boxes/DataReferenceBox;
    .end local v4    # "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    .end local v5    # "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .end local v6    # "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    .end local v7    # "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    .end local v8    # "stbl":Lcom/coremedia/iso/boxes/Box;
    .end local v11    # "url":Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/video/Mp4Movie;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    goto/16 :goto_0

    .line 315
    .restart local v4    # "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    .restart local v5    # "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .restart local v6    # "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    :cond_1
    const-string/jumbo v12, "VideoHandle"

    goto :goto_1
.end method

.method public finishMovie(Z)V
    .locals 10
    .param p1, "error"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v5, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getContentSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 141
    invoke-direct {p0}, Lorg/telegram/messenger/video/MP4Builder;->flushCurrentMdat()V

    .line 144
    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {v5}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/video/Track;

    .line 145
    .local v4, "track":Lorg/telegram/messenger/video/Track;
    invoke-virtual {v4}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v2

    .line 146
    .local v2, "samples":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/video/Sample;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 147
    .local v3, "sizes":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 148
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/video/Sample;

    invoke-virtual {v5}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v8

    aput-wide v8, v3, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    .end local v2    # "samples":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/video/Sample;>;"
    .end local v3    # "sizes":[J
    .end local v4    # "track":Lorg/telegram/messenger/video/Track;
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/video/MP4Builder;->createMovieBox(Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v1

    .line 154
    .local v1, "moov":Lcom/coremedia/iso/boxes/Box;
    iget-object v5, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-interface {v1, v5}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 155
    iget-object v5, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 157
    iget-object v5, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 158
    iget-object v5, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 159
    return-void
.end method

.method public getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J
    .locals 6
    .param p1, "mp4Movie"    # Lorg/telegram/messenger/video/Mp4Movie;

    .prologue
    .line 243
    const-wide/16 v0, 0x0

    .line 244
    .local v0, "timescale":J
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/video/Track;

    invoke-virtual {v3}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v3

    int-to-long v0, v3

    .line 247
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/video/Track;

    .line 248
    .local v2, "track":Lorg/telegram/messenger/video/Track;
    invoke-virtual {v2}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5, v0, v1}, Lorg/telegram/messenger/video/MP4Builder;->gcd(JJ)J

    move-result-wide v0

    .line 249
    goto :goto_0

    .line 250
    .end local v2    # "track":Lorg/telegram/messenger/video/Track;
    :cond_1
    return-wide v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z
    .locals 10
    .param p1, "trackIndex"    # I
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
    .param p4, "writeLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/32 v8, 0x8000

    const-wide/16 v6, 0x10

    const/4 v2, 0x0

    .line 95
    iget-boolean v1, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 97
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 98
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setDataOffset(J)V

    .line 99
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 100
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    .line 101
    iput-boolean v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getContentSize()J

    move-result-wide v4

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 105
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "flush":Z
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    cmp-long v1, v4, v8

    if-ltz v1, :cond_1

    .line 109
    invoke-direct {p0}, Lorg/telegram/messenger/video/MP4Builder;->flushCurrentMdat()V

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    .line 111
    const/4 v0, 0x1

    .line 112
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v1, p1, v4, v5, p3}, Lorg/telegram/messenger/video/Mp4Movie;->addSample(IJLandroid/media/MediaCodec$BufferInfo;)V

    .line 116
    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-nez p4, :cond_4

    move v1, v2

    :goto_0
    add-int/2addr v1, v3

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v3

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 119
    if-eqz p4, :cond_2

    .line 120
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 126
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 127
    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 129
    if-eqz v0, :cond_3

    .line 130
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 132
    :cond_3
    return v0

    .line 116
    :cond_4
    const/4 v1, 0x4

    goto :goto_0
.end method
