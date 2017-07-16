.class public final Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;
.super Ljava/lang/Object;
.source "ParsableNalUnitBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field private data:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->reset([BII)V

    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readExpGolombCodeNum()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "leadingZeros":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v2, v1, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    :goto_1
    add-int/2addr v1, v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private shouldSkipByte(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    add-int/lit8 v1, p1, -0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canReadBits(I)Z
    .locals 6
    .param p1, "n"    # I

    .prologue
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .local v3, "oldByteOffset":I
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    div-int/lit8 v5, p1, 0x8

    add-int v2, v4, v5

    .local v2, "newByteOffset":I
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rem-int/lit8 v5, p1, 0x8

    add-int v1, v4, v5

    .local v1, "newBitOffset":I
    const/4 v4, 0x7

    if-le v1, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x8

    :cond_0
    add-int/lit8 v0, v3, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_2

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge v2, v4, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-lt v2, v4, :cond_3

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v2, v4, :cond_4

    if-nez v1, :cond_4

    :cond_3
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public canReadExpGolombCodedNum()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .local v2, "initialByteOffset":I
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .local v1, "initialBitOffset":I
    const/4 v3, 0x0

    .local v3, "leadingZeros":I
    :goto_0
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge v6, v7, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v6, v7, :cond_1

    move v0, v4

    .local v0, "hitLimit":Z
    :goto_1
    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-nez v0, :cond_2

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    return v4

    .end local v0    # "hitLimit":Z
    :cond_1
    move v0, v5

    goto :goto_1

    .restart local v0    # "hitLimit":Z
    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method public readBit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 11
    .param p1, "numBits"    # I

    .prologue
    const/16 v10, 0x8

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    .local v4, "returnValue":I
    div-int/lit8 v5, p1, 0x8

    .local v5, "wholeBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v3, v7, 0x2

    .local v3, "nextByteOffset":I
    :goto_2
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    shl-int/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v8, v8, v3

    and-int/lit16 v8, v8, 0xff

    iget v9, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rsub-int/lit8 v9, v9, 0x8

    ushr-int/2addr v8, v9

    or-int v0, v7, v8

    .local v0, "byteValue":I
    :goto_3
    add-int/lit8 p1, p1, -0x8

    and-int/lit16 v7, v0, 0xff

    shl-int/2addr v7, p1

    or-int/2addr v4, v7

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "byteValue":I
    .end local v3    # "nextByteOffset":I
    :cond_1
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v3, v7, 0x1

    goto :goto_2

    .restart local v3    # "nextByteOffset":I
    :cond_2
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v0, v7, v8

    .restart local v0    # "byteValue":I
    goto :goto_3

    .end local v0    # "byteValue":I
    .end local v3    # "nextByteOffset":I
    :cond_3
    if-lez p1, :cond_5

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int v2, v7, p1

    .local v2, "nextBit":I
    const/16 v7, 0xff

    rsub-int/lit8 v8, p1, 0x8

    shr-int/2addr v7, v8

    int-to-byte v6, v7

    .local v6, "writeMask":B
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v3, v7, 0x2

    .restart local v3    # "nextByteOffset":I
    :goto_4
    if-le v2, v10, :cond_7

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v2, -0x8

    shl-int/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v8, v8, v3

    and-int/lit16 v8, v8, 0xff

    rsub-int/lit8 v9, v2, 0x10

    shr-int/2addr v8, v9

    or-int/2addr v7, v8

    and-int/2addr v7, v6

    or-int/2addr v4, v7

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    :cond_4
    :goto_5
    rem-int/lit8 v7, v2, 0x8

    iput v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .end local v2    # "nextBit":I
    .end local v3    # "nextByteOffset":I
    .end local v6    # "writeMask":B
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    goto/16 :goto_0

    .restart local v2    # "nextBit":I
    .restart local v6    # "writeMask":B
    :cond_6
    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v3, v7, 0x1

    goto :goto_4

    .restart local v3    # "nextByteOffset":I
    :cond_7
    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v8, v2, 0x8

    shr-int/2addr v7, v8

    and-int/2addr v7, v6

    or-int/2addr v4, v7

    if-ne v2, v10, :cond_4

    iput v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    goto :goto_5
.end method

.method public readSignedExpGolombCodedInt()I
    .locals 3

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v0

    .local v0, "codeNum":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readUnsignedExpGolombCodedInt()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iput p3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    return-void
.end method

.method public skipBits(I)V
    .locals 4
    .param p1, "n"    # I

    .prologue
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .local v1, "oldByteOffset":I
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    div-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rem-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    if-gt v0, v2, :cond_2

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    return-void
.end method
