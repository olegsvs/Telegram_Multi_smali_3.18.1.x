.class final Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;
.super Ljava/lang/Object;
.source "SeiReader.java"


# instance fields
.field private final output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;)V
    .locals 7
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const-string/jumbo v1, "application/cea-608"

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v2, v0

    move-object v5, v0

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    return-void
.end method


# virtual methods
.method public consume(JLorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 15
    .param p1, "pesTimeUs"    # J
    .param p3, "seiBuffer"    # Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .prologue
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    const/4 v14, 0x0

    .local v14, "payloadType":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .local v2, "b":I
    add-int/2addr v14, v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    const/4 v13, 0x0

    .local v13, "payloadSize":I
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    add-int/2addr v13, v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p3

    invoke-static {v14, v13, v0}, Lorg/telegram/messenger/exoplayer2/text/cea/Cea608Decoder;->isSeiMessageCea608(IILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/lit8 v10, v3, 0x1f

    .local v10, "ccCount":I
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v7, 0x0

    .local v7, "sampleBytes":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v10, :cond_3

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v3

    and-int/lit8 v11, v3, 0x7

    .local v11, "ccValidityAndType":I
    const/4 v3, 0x4

    if-eq v11, v3, :cond_2

    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x3

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-interface {v3, v0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)V

    goto :goto_2

    .end local v11    # "ccValidityAndType":I
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/ts/SeiReader;->output:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p1

    invoke-interface/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    mul-int/lit8 v3, v10, 0x3

    add-int/lit8 v3, v3, 0xa

    sub-int v3, v13, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .end local v7    # "sampleBytes":I
    .end local v10    # "ccCount":I
    .end local v12    # "i":I
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .end local v2    # "b":I
    .end local v13    # "payloadSize":I
    .end local v14    # "payloadType":I
    :cond_5
    return-void
.end method
