.class final Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;
.super Ljava/lang/Object;
.source "VorbisBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field public final data:[B

.field private final limit:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    mul-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    return-void
.end method


# virtual methods
.method public bitsLeft()I
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public limit()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    return v0
.end method

.method public readBit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 13
    .param p1, "numBits"    # I

    .prologue
    const/16 v12, 0xff

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v6

    add-int/2addr v6, p1

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    if-gt v6, v8, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    if-nez p1, :cond_1

    :goto_1
    return v7

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .local v5, "result":I
    const/4 v0, 0x0

    .local v0, "bitCount":I
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    if-eqz v6, :cond_2

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    rsub-int/lit8 v6, v6, 0x8

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    rsub-int/lit8 v6, v0, 0x8

    ushr-int v3, v12, v6

    .local v3, "mask":I
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v6, v6, v8

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    ushr-int/2addr v6, v8

    and-int v5, v6, v3

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_2

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .end local v3    # "mask":I
    :cond_2
    sub-int v6, p1, v0

    const/4 v7, 0x7

    if-le v6, v7, :cond_3

    sub-int v6, p1, v0

    div-int/lit8 v4, v6, 0x8

    .local v4, "numBytes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_3

    int-to-long v6, v5

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v8, v8, v9

    int-to-long v8, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    shl-long/2addr v8, v0

    or-long/2addr v6, v8

    long-to-int v5, v6

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v4    # "numBytes":I
    :cond_3
    if-le p1, v0, :cond_4

    sub-int v1, p1, v0

    .local v1, "bitsOnNextByte":I
    rsub-int/lit8 v6, v1, 0x8

    ushr-int v3, v12, v6

    .restart local v3    # "mask":I
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    shl-int/2addr v6, v0

    or-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    .end local v1    # "bitsOnNextByte":I
    .end local v3    # "mask":I
    :cond_4
    move v7, v5

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skipBits(I)V
    .locals 2
    .param p1, "numberOfBits"    # I

    .prologue
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->limit:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/VorbisBitArray;->bitOffset:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
