.class public final Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    }
.end annotation


# static fields
.field public static final FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

.field private static final HEADER_MASK:I = -0x1f400

.field private static final INFO_HEADER:I

.field private static final MAX_SNIFF_BYTES:I = 0x1000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final SCRATCH_LENGTH:I = 0xa

.field private static final VBRI_HEADER:I

.field private static final XING_HEADER:I


# instance fields
.field private basisTimeUs:J

.field private extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

.field private metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

.field private seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

.field private final synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

.field private synchronizedHeaderData:I

.field private trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$1;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->FACTORY:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorsFactory;

    .line 71
    const-string/jumbo v0, "Xing"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    .line 72
    const-string/jumbo v0, "Info"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    .line 73
    const-string/jumbo v0, "VBRI"

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(J)V

    .line 97
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "forcedFirstSampleTimestampUs"    # J

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 107
    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    .line 108
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    .line 109
    new-instance v0, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    .line 110
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 111
    return-void
.end method

.method private peekId3Data(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V
    .locals 8
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 271
    const/4 v2, 0x0

    .line 273
    .local v2, "peekedId3Bytes":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v4, v6, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 274
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 275
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    sget v5, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    if-eq v4, v5, :cond_0

    .line 298
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 299
    invoke-interface {p1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 300
    return-void

    .line 279
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 280
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    .line 281
    .local v0, "framesLength":I
    add-int/lit8 v3, v0, 0xa

    .line 283
    .local v3, "tagLength":I
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    if-nez v4, :cond_2

    .line 284
    new-array v1, v3, [B

    .line 285
    .local v1, "id3Data":[B
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v4, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    invoke-interface {p1, v1, v7, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 287
    new-instance v4, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;

    invoke-direct {v4}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;-><init>()V

    invoke-virtual {v4, v1, v3}, Lorg/telegram/messenger/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    .line 288
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    if-eqz v4, :cond_1

    .line 289
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Z

    .line 295
    .end local v1    # "id3Data":[B
    :cond_1
    :goto_1
    add-int/2addr v2, v3

    .line 296
    goto :goto_0

    .line 292
    :cond_2
    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1
.end method

.method private readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I
    .locals 14
    .param p1, "extractorInput"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 160
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-nez v1, :cond_4

    .line 161
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 162
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-interface {p1, v1, v4, v5, v6}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const/4 v1, -0x1

    .line 197
    :goto_0
    return v1

    .line 165
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 166
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 167
    .local v10, "sampleHeaderData":I
    const v1, -0x1f400

    and-int/2addr v1, v10

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const v5, -0x1f400

    and-int/2addr v4, v5

    if-ne v1, v4, :cond_1

    .line 168
    invoke-static {v10}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->getFrameSize(I)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 170
    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 171
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 172
    const/4 v1, 0x0

    goto :goto_0

    .line 174
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v10, v1}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;)Z

    .line 175
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 176
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 177
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v8

    .line 179
    .local v8, "embeddedFirstSampleTimestampUs":J
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 182
    .end local v8    # "embeddedFirstSampleTimestampUs":J
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 184
    .end local v10    # "sampleHeaderData":I
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v5, 0x1

    invoke-interface {v1, p1, v4, v5}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleData(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v0

    .line 185
    .local v0, "bytesAppended":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 186
    const/4 v1, -0x1

    goto :goto_0

    .line 188
    :cond_5
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 189
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_6

    .line 190
    const/4 v1, 0x0

    goto :goto_0

    .line 192
    :cond_6
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    const-wide/32 v12, 0xf4240

    mul-long/2addr v6, v12

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    int-to-long v12, v1

    div-long/2addr v6, v12

    add-long v2, v4, v6

    .line 193
    .local v2, "timeUs":J
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v5, v5, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 195
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v1, v1, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 196
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 197
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupSeeker(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    .locals 14
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x24

    const/16 v13, 0x15

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 316
    new-instance v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-direct {v1, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 317
    .local v1, "frame":Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;
    iget-object v7, v1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v7, v9, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 319
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 320
    .local v2, "position":J
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 321
    .local v4, "length":J
    const/4 v12, 0x0

    .line 322
    .local v12, "headerData":I
    const/4 v6, 0x0

    .line 325
    .local v6, "seeker":Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->version:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->channels:I

    if-eq v7, v10, :cond_0

    move v13, v0

    .line 328
    .local v13, "xingBase":I
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v7

    add-int/lit8 v8, v13, 0x4

    if-lt v7, v8, :cond_1

    .line 329
    invoke-virtual {v1, v13}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 330
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 332
    :cond_1
    sget v7, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    if-eq v12, v7, :cond_2

    sget v7, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    if-ne v12, v7, :cond_7

    .line 333
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/XingSeeker;->create(Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JJ)Lorg/telegram/messenger/exoplayer2/extractor/mp3/XingSeeker;

    move-result-object v6

    .line 334
    if-eqz v6, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v0

    if-nez v0, :cond_3

    .line 336
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 337
    add-int/lit16 v0, v13, 0x8d

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v7, 0x3

    invoke-interface {p1, v0, v9, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 339
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 340
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->setFromXingHeaderValue(I)Z

    .line 342
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 353
    :cond_4
    :goto_1
    if-nez v6, :cond_5

    .line 356
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 357
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v7, 0x4

    invoke-interface {p1, v0, v9, v7}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 358
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 359
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v0, v7}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;)Z

    .line 360
    new-instance v6, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;

    .end local v6    # "seeker":Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v9, v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/ConstantBitrateSeeker;-><init>(JIJ)V

    .line 363
    .restart local v6    # "seeker":Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;
    :cond_5
    return-object v6

    .line 325
    .end local v13    # "xingBase":I
    :cond_6
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->channels:I

    if-ne v7, v10, :cond_0

    const/16 v13, 0xd

    goto/16 :goto_0

    .line 343
    .restart local v13    # "xingBase":I
    :cond_7
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v7

    const/16 v8, 0x28

    if-lt v7, v8, :cond_4

    .line 345
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 346
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 347
    sget v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    if-ne v12, v0, :cond_4

    .line 348
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;->create(Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;JJ)Lorg/telegram/messenger/exoplayer2/extractor/mp3/VbriSeeker;

    move-result-object v6

    .line 349
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1
.end method

.method private synchronize(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 12
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "sniffing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v7, 0x0

    .line 203
    .local v7, "validFrameCount":I
    const/4 v0, 0x0

    .line 204
    .local v0, "candidateSynchronizedHeaderData":I
    const/4 v3, 0x0

    .line 205
    .local v3, "peekedId3Bytes":I
    const/4 v5, 0x0

    .line 206
    .local v5, "searchedBytes":I
    if-eqz p2, :cond_1

    const/16 v4, 0x1000

    .line 207
    .local v4, "searchLimitBytes":I
    :goto_0
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 208
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->peekId3Data(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)V

    .line 210
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v8

    long-to-int v3, v8

    .line 211
    if-nez p2, :cond_0

    .line 212
    invoke-interface {p1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 216
    :cond_0
    :goto_1
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v9, v8, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v10, 0x0

    const/4 v11, 0x4

    if-lez v7, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-interface {p1, v9, v10, v11, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_3

    .line 254
    :goto_3
    if-eqz p2, :cond_c

    .line 255
    add-int v8, v3, v5

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 259
    :goto_4
    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 260
    const/4 v8, 0x1

    :goto_5
    return v8

    .line 206
    .end local v4    # "searchLimitBytes":I
    :cond_1
    const/high16 v4, 0x20000

    goto :goto_0

    .line 216
    .restart local v4    # "searchLimitBytes":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 220
    :cond_3
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 221
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 223
    .local v2, "headerData":I
    if-eqz v0, :cond_4

    const v8, -0x1f400

    and-int/2addr v8, v2

    const v9, -0x1f400

    and-int/2addr v9, v0

    if-ne v8, v9, :cond_5

    .line 225
    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->getFrameSize(I)I

    move-result v1

    .local v1, "frameSize":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_9

    .line 227
    .end local v1    # "frameSize":I
    :cond_5
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "searchedBytes":I
    .local v6, "searchedBytes":I
    if-ne v5, v4, :cond_7

    .line 228
    if-nez p2, :cond_6

    .line 229
    new-instance v8, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v9, "Searched too many bytes."

    invoke-direct {v8, v9}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 231
    :cond_6
    const/4 v8, 0x0

    move v5, v6

    .end local v6    # "searchedBytes":I
    .restart local v5    # "searchedBytes":I
    goto :goto_5

    .line 233
    .end local v5    # "searchedBytes":I
    .restart local v6    # "searchedBytes":I
    :cond_7
    const/4 v7, 0x0

    .line 234
    const/4 v0, 0x0

    .line 235
    if-eqz p2, :cond_8

    .line 236
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 237
    add-int v8, v3, v6

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v5, v6

    .end local v6    # "searchedBytes":I
    .restart local v5    # "searchedBytes":I
    goto :goto_1

    .line 239
    .end local v5    # "searchedBytes":I
    .restart local v6    # "searchedBytes":I
    :cond_8
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    move v5, v6

    .end local v6    # "searchedBytes":I
    .restart local v5    # "searchedBytes":I
    goto :goto_1

    .line 243
    .restart local v1    # "frameSize":I
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 244
    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 245
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    invoke-static {v2, v8}, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->populateHeader(ILorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;)Z

    .line 246
    move v0, v2

    .line 250
    :cond_a
    add-int/lit8 v8, v1, -0x4

    invoke-interface {p1, v8}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    .line 247
    :cond_b
    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    goto :goto_3

    .line 257
    .end local v1    # "frameSize":I
    .end local v2    # "headerData":I
    :cond_c
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_4
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    .line 122
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 123
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;)I
    .locals 19
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer2/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v2, :cond_0

    .line 143
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v2, :cond_1

    .line 149
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->setupSeeker(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ExtractorOutput;->seekMap(Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->trackOutput:Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x1000

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v7, v7, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->channels:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;

    iget v8, v8, Lorg/telegram/messenger/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    const/4 v9, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    iget v10, v10, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;

    iget v11, v11, Lorg/telegram/messenger/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lorg/telegram/messenger/exoplayer2/metadata/Metadata;

    move-object/from16 v16, v0

    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lorg/telegram/messenger/exoplayer2/metadata/Metadata;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/telegram/messenger/exoplayer2/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer2/Format;)V

    .line 156
    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->readSample(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)I

    move-result v2

    :goto_0
    return v2

    .line 144
    :catch_0
    move-exception v17

    .line 145
    .local v17, "e":Ljava/io/EOFException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public seek(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    const/4 v2, 0x0

    .line 127
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 128
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 130
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 131
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
