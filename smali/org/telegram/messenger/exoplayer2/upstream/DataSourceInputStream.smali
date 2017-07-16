.class public final Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private closed:Z

.field private final dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

.field private final dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field private opened:Z

.field private final singleByteArray:[B

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSource;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V
    .locals 1
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    .line 34
    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    .line 42
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    .line 43
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    .line 45
    return-void
.end method

.method private checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->opened:Z

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public bytesRead()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    return-wide v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->close()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    .line 114
    :cond_0
    return-void
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    .line 65
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 69
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->read([B)I

    move-result v0

    .line 70
    .local v0, "length":I
    if-ne v0, v1, :cond_0

    .line 74
    :goto_0
    return v1

    .line 73
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    .line 74
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->singleByteArray:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 6
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->read([BII)I

    move-result v0

    .line 80
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 81
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    .line 83
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 88
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 89
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    .line 90
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->dataSource:Lorg/telegram/messenger/exoplayer2/upstream/DataSource;

    invoke-interface {v1, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 91
    .local v0, "bytesRead":I
    if-ne v0, v2, :cond_1

    move v0, v2

    .line 95
    .end local v0    # "bytesRead":I
    :goto_1
    return v0

    .line 88
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 94
    .restart local v0    # "bytesRead":I
    :cond_1
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    goto :goto_1
.end method

.method public skip(J)J
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->closed:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    .line 102
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->checkOpened()V

    .line 103
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 104
    .local v0, "bytesSkipped":J
    iget-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DataSourceInputStream;->totalBytesRead:J

    .line 105
    return-wide v0

    .line 101
    .end local v0    # "bytesSkipped":J
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
