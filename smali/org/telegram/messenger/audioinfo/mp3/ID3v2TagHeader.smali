.class public Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;
.super Ljava/lang/Object;
.source "ID3v2TagHeader.java"


# instance fields
.field private compression:Z

.field private footerSize:I

.field private headerSize:I

.field private paddingSize:I

.field private revision:I

.field private totalTagSize:I

.field private unsynchronization:Z

.field private version:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;-><init>(Lorg/telegram/messenger/audioinfo/util/PositionInputStream;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/audioinfo/util/PositionInputStream;)V
    .locals 13
    .param p1, "input"    # Lorg/telegram/messenger/audioinfo/util/PositionInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v8, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    iput v8, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->revision:I

    iput v8, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    iput v8, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    iput v8, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->paddingSize:I

    iput v8, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v4

    .local v4, "startPosition":J
    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    .local v0, "data":Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v6

    const-string/jumbo v9, "ISO-8859-1"

    invoke-direct {v3, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v6, "ID3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid ID3 identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    iget v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-eq v6, v11, :cond_1

    iget v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-eq v6, v10, :cond_1

    iget v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-eq v6, v12, :cond_1

    new-instance v6, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported ID3v2 version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->revision:I

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    move-result v2

    .local v2, "flags":B
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    iget v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-ne v6, v11, :cond_5

    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_3

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    and-int/lit8 v6, v2, 0x40

    if-eqz v6, :cond_4

    :goto_1
    iput-boolean v7, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->compression:Z

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/util/PositionInputStream;->getPosition()J

    move-result-wide v6

    sub-long/2addr v6, v4

    long-to-int v6, v6

    iput v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    return-void

    :cond_3
    move v6, v8

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_1

    :cond_5
    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_7

    :goto_3
    iput-boolean v7, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    and-int/lit8 v6, v2, 0x40

    if-eqz v6, :cond_6

    iget v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-ne v6, v10, :cond_8

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v1

    .local v1, "extendedHeaderSize":I
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readByte()B

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readInt()I

    move-result v6

    iput v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->paddingSize:I

    add-int/lit8 v6, v1, -0x6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V

    .end local v1    # "extendedHeaderSize":I
    :cond_6
    :goto_4
    iget v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    if-lt v6, v12, :cond_2

    and-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_2

    const/16 v6, 0xa

    iput v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    iget v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    goto :goto_2

    :cond_7
    move v7, v8

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readSyncsafeInt()I

    move-result v1

    .restart local v1    # "extendedHeaderSize":I
    add-int/lit8 v6, v1, -0x4

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->skipFully(J)V

    goto :goto_4
.end method


# virtual methods
.method public getFooterSize()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    return v0
.end method

.method public getHeaderSize()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    return v0
.end method

.method public getPaddingSize()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->paddingSize:I

    return v0
.end method

.method public getRevision()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->revision:I

    return v0
.end method

.method public getTotalTagSize()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    return v0
.end method

.method public isCompression()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->compression:Z

    return v0
.end method

.method public isUnsynchronization()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    return v0
.end method

.method public tagBody(Ljava/io/InputStream;)Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;
    .locals 18
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->compression:Z

    if-eqz v2, :cond_0

    new-instance v2, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;

    const-string/jumbo v3, "Tag compression is not supported"

    invoke-direct {v2, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->unsynchronization:Z

    if-eqz v2, :cond_5

    new-instance v2, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2DataInput;->readFully(I)[B

    move-result-object v15

    .local v15, "bytes":[B
    const/16 v16, 0x0

    .local v16, "ff":Z
    const/4 v6, 0x0

    .local v6, "len":I
    array-length v3, v15

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-byte v14, v15, v2

    .local v14, "b":B
    if-eqz v16, :cond_1

    if-eqz v14, :cond_2

    :cond_1
    add-int/lit8 v17, v6, 0x1

    .end local v6    # "len":I
    .local v17, "len":I
    aput-byte v14, v15, v6

    move/from16 v6, v17

    .end local v17    # "len":I
    .restart local v6    # "len":I
    :cond_2
    const/16 v4, 0xff

    if-ne v14, v4, :cond_3

    const/16 v16, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    .end local v14    # "b":B
    :cond_4
    new-instance v2, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v15, v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    int-to-long v4, v4

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;-><init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;)V

    .end local v6    # "len":I
    .end local v15    # "bytes":[B
    .end local v16    # "ff":Z
    :goto_2
    return-object v2

    :cond_5
    new-instance v8, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->headerSize:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->footerSize:I

    sub-int v12, v2, v3

    move-object/from16 v9, p1

    move-object/from16 v13, p0

    invoke-direct/range {v8 .. v13}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagBody;-><init>(Ljava/io/InputStream;JILorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;)V

    move-object v2, v8

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "%s[version=%s, totalTagSize=%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->version:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/telegram/messenger/audioinfo/mp3/ID3v2TagHeader;->totalTagSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
