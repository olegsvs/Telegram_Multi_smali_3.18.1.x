.class public final Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/ExtractorInput;


# static fields
.field private static final SCRATCH_SPACE:[B


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final streamLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;JJ)V
    .locals 2
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "position"    # J
    .param p4, "length"    # J

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 47
    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 48
    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    .line 49
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 50
    return-void
.end method

.method private commitBytesRead(I)V
    .locals 4
    .param p1, "bytesRead"    # I

    .prologue
    .line 263
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 264
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 266
    :cond_0
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 177
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int v0, v1, p1

    .line 178
    .local v0, "requiredLength":I
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 179
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 181
    :cond_0
    return-void
.end method

.method private readFromDataSource([BIIIZ)I
    .locals 5
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "bytesAlreadyRead"    # I
    .param p5, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 244
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 247
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    add-int v3, p2, p4

    sub-int v4, p3, p4

    invoke-interface {v2, p1, v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 248
    .local v0, "bytesRead":I
    if-ne v0, v1, :cond_2

    .line 249
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    .line 254
    :goto_0
    return v1

    .line 252
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 254
    :cond_2
    add-int v1, p4, v0

    goto :goto_0
.end method

.method private readFromPeekBuffer([BII)I
    .locals 3
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 204
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    if-nez v2, :cond_0

    move v0, v1

    .line 210
    :goto_0
    return v0

    .line 207
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 208
    .local v0, "peekBytes":I
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    goto :goto_0
.end method

.method private skipFromPeekBuffer(I)I
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 190
    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 191
    .local v0, "bytesSkipped":I
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    .line 192
    return v0
.end method

.method private updatePeekBuffer(I)V
    .locals 4
    .param p1, "bytesConsumed"    # I

    .prologue
    const/4 v3, 0x0

    .line 219
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 220
    iput v3, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 221
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    .line 143
    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 6
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 127
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 128
    .local v4, "bytesPeeked":I
    :cond_0
    if-ge v4, p1, :cond_1

    .line 129
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v0, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    .line 131
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    .line 135
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 136
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferLength:I

    .line 137
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    .line 121
    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 2
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p3, p4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v6

    .line 55
    .local v6, "bytesRead":I
    if-nez v6, :cond_0

    .line 56
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v6

    .line 58
    :cond_0
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 59
    return v6
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    .line 77
    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 7
    .param p1, "target"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v4

    .line 66
    .local v4, "bytesRead":I
    :goto_0
    if-ge v4, p3, :cond_0

    if-eq v4, v6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 67
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 70
    if-eq v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public resetPeekPosition()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 148
    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 3
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 167
    .local p3, "e":Ljava/lang/Throwable;, "TE;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 168
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->position:J

    .line 169
    throw p3

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skip(I)I
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v6

    .line 82
    .local v6, "bytesSkipped":I
    if-nez v6, :cond_0

    .line 83
    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v0, v0

    .line 84
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v6

    .line 86
    :cond_0
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 87
    return v6
.end method

.method public skipFully(I)V
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    .line 105
    return-void
.end method

.method public skipFully(IZ)Z
    .locals 7
    .param p1, "length"    # I
    .param p2, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v4

    .line 94
    .local v4, "bytesSkipped":I
    :goto_0
    if-ge v4, p1, :cond_0

    if-eq v4, v6, :cond_0

    .line 95
    sget-object v1, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    neg-int v2, v4

    sget-object v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v0, v0

    add-int/2addr v0, v4

    .line 96
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move v5, p2

    .line 95
    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    .line 99
    if-eq v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
