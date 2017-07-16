.class public final Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;
.super Ljava/lang/Object;
.source "FlacStreamInfo.java"


# instance fields
.field public final bitsPerSample:I

.field public final channels:I

.field public final maxBlockSize:I

.field public final maxFrameSize:I

.field public final minBlockSize:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final totalSamples:J


# direct methods
.method public constructor <init>(IIIIIIIJ)V
    .locals 0
    .param p1, "minBlockSize"    # I
    .param p2, "maxBlockSize"    # I
    .param p3, "minFrameSize"    # I
    .param p4, "maxFrameSize"    # I
    .param p5, "sampleRate"    # I
    .param p6, "channels"    # I
    .param p7, "bitsPerSample"    # I
    .param p8, "totalSamples"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->minBlockSize:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->maxBlockSize:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->minFrameSize:I

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->maxFrameSize:I

    iput p5, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    iput p6, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->channels:I

    iput p7, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->bitsPerSample:I

    iput-wide p8, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->totalSamples:J

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v3, 0x18

    const/16 v2, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .local v0, "scratch":Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->minBlockSize:I

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->maxBlockSize:I

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->minFrameSize:I

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->maxFrameSize:I

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->channels:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->bitsPerSample:I

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->totalSamples:J

    return-void
.end method


# virtual methods
.method public bitRate()I
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->bitsPerSample:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public durationUs()J
    .locals 4

    .prologue
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->totalSamples:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public maxDecodedFrameSize()I
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->maxBlockSize:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/FlacStreamInfo;->channels:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
