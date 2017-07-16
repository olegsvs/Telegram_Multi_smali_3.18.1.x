.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;
.super Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$1;,
        Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;
    }
.end annotation


# static fields
.field private static final AUDIO_PACKET_TYPE:B = -0x1t

.field private static final FRAME_HEADER_SAMPLE_NUMBER_OFFSET:I = 0x4

.field private static final SEEKTABLE_PACKET_TYPE:B = 0x3t


# instance fields
.field private flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

.field private streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;)Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    return-object v0
.end method

.method private getFlacFrameBlockSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I
    .locals 4
    .param p1, "packet"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v0, v2, 0x4

    .local v0, "blockSizeCode":I
    packed-switch v0, :pswitch_data_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :pswitch_0
    const/16 v2, 0xc0

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x240

    add-int/lit8 v3, v0, -0x2

    shl-int/2addr v2, v3

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUtf8EncodedLong()J

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .local v1, "value":I
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .end local v1    # "value":I
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    goto :goto_1

    :pswitch_3
    const/16 v2, 0x100

    add-int/lit8 v3, v0, -0x8

    shl-int/2addr v2, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static isAudioPacket([B)Z
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static verifyBitstreamType(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 4
    .param p0, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected preparePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)J
    .locals 2
    .param p1, "packet"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->getFlacFrameBlockSize(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method protected readHeaders(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JLorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 16
    .param p1, "packet"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "setupData"    # Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    .local v13, "data":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    if-nez v2, :cond_1

    new-instance v2, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    const/16 v3, 0x11

    invoke-direct {v2, v13, v3}, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;-><init>([BI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    const/16 v2, 0x9

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    invoke-static {v13, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .local v14, "metadata":[B
    const/4 v2, 0x4

    const/16 v3, -0x80

    aput-byte v3, v14, v2

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .local v9, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x0

    const-string/jumbo v3, "audio/x-flac"

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    invoke-virtual {v6}, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->bitRate()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->channels:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lorg/telegram/messenger/exoplayer2/Format;

    .end local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v14    # "metadata":[B
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    aget-byte v2, v13, v2

    and-int/lit8 v2, v2, 0x7f

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    new-instance v2, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->parseSeekTable(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    :cond_2
    invoke-static {v13}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->isAudioPacket([B)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;->setFirstFrameOffset(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    move-object/from16 v0, p4

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader$SetupData;->oggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/OggSeeker;

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected reset(Z)V
    .locals 1
    .param p1, "headerData"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-super {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->streamInfo:Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader;->flacOggSeeker:Lorg/telegram/messenger/exoplayer2/extractor/ogg/FlacReader$FlacOggSeeker;

    :cond_0
    return-void
.end method
