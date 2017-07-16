.class final Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;
.super Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x157c
        0x2af8
        0x55f0
        0xabe0
    .end array-data
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected parseHeader(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 6
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 59
    iget-boolean v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    if-nez v3, :cond_3

    .line 60
    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 61
    .local v1, "header":I
    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 62
    .local v0, "audioFormat":I
    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v2, v3, 0x3

    .line 63
    .local v2, "sampleRateIndex":I
    if-ltz v2, :cond_0

    sget-object v3, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 64
    :cond_0
    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid sample rate index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_1
    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    .line 68
    new-instance v3, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio format not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 70
    :cond_2
    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    .line 75
    .end local v0    # "audioFormat":I
    .end local v1    # "header":I
    .end local v2    # "sampleRateIndex":I
    :goto_0
    return v4

    .line 73
    :cond_3
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0
.end method

.method protected parsePayload(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;J)V
    .locals 18
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    .param p2, "timeUs"    # J

    .prologue
    .line 80
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v16

    .line 82
    .local v16, "packetType":I
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v2, :cond_1

    .line 83
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    new-array v14, v2, [B

    .line 84
    .local v14, "audioSpecifiConfig":[B
    const/4 v2, 0x0

    array-length v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 85
    invoke-static {v14}, Lorg/telegram/messenger/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v13

    .line 87
    .local v13, "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    const-string/jumbo v3, "audio/mp4a-latm"

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget-object v8, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 88
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 89
    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 87
    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v15

    .line 90
    .local v15, "format":Lorg/telegram/messenger/exoplayer2/Format;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v15}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 91
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    .line 98
    .end local v13    # "audioParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14    # "audioSpecifiConfig":[B
    .end local v15    # "format":Lorg/telegram/messenger/exoplayer2/Format;
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 94
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    .line 95
    .local v7, "bytesToWrite":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p2

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    goto :goto_0
.end method

.method public seek()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
