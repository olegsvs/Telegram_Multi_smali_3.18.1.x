.class public final Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;
.super Ljava/lang/Object;
.source "ParsableBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method private assertValidOffset()V
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteLimit:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

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


# virtual methods
.method public bitsLeft()I
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteLimit:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public readBit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBits(I)I
    .locals 10
    .param p1, "numBits"    # I

    .prologue
    const/16 v9, 0x8

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    .local v3, "returnValue":I
    div-int/lit8 v4, p1, 0x8

    .local v4, "wholeBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    shl-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rsub-int/lit8 v8, v8, 0x8

    ushr-int/2addr v7, v8

    or-int v0, v6, v7

    .local v0, "byteValue":I
    :goto_2
    add-int/lit8 p1, p1, -0x8

    and-int/lit16 v6, v0, 0xff

    shl-int/2addr v6, p1

    or-int/2addr v3, v6

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "byteValue":I
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v0, v6, v7

    .restart local v0    # "byteValue":I
    goto :goto_2

    .end local v0    # "byteValue":I
    :cond_2
    if-lez p1, :cond_4

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int v2, v6, p1

    .local v2, "nextBit":I
    const/16 v6, 0xff

    rsub-int/lit8 v7, p1, 0x8

    shr-int/2addr v6, v7

    int-to-byte v5, v6

    .local v5, "writeMask":B
    if-le v2, v9, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, -0x8

    shl-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v8, v2, 0x10

    shr-int/2addr v7, v8

    or-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    :cond_3
    :goto_3
    rem-int/lit8 v6, v2, 0x8

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    .end local v2    # "nextBit":I
    .end local v5    # "writeMask":B
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    goto :goto_0

    .restart local v2    # "nextBit":I
    .restart local v5    # "writeMask":B
    :cond_5
    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iget v7, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v7, v2, 0x8

    shr-int/2addr v6, v7

    and-int/2addr v6, v5

    or-int/2addr v3, v6

    if-ne v2, v9, :cond_3

    iget v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    goto :goto_3
.end method

.method public reset([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->reset([BI)V

    return-void
.end method

.method public reset([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->data:[B

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteLimit:I

    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    mul-int/lit8 v0, v0, 0x8

    sub-int v0, p1, v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method

.method public skipBits(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    rem-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->byteOffset:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->bitOffset:I

    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableBitArray;->assertValidOffset()V

    return-void
.end method
