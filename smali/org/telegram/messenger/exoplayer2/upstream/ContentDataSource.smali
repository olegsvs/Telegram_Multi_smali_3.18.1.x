.class public final Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;
.super Ljava/lang/Object;
.source "ContentDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_3

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_3
    throw v1

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v1

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    :try_start_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_5

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_5
    throw v1

    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v1

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    if-eqz v2, :cond_6

    iput-boolean v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferEnd(Ljava/lang/Object;)V

    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)J
    .locals 8
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    :try_start_0
    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->uri:Landroid/net/Uri;

    const-string/jumbo v5, "r"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .local v2, "skipped":J
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "skipped":J
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v1

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "skipped":J
    :cond_0
    :try_start_1
    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->opened:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onTransferStart(Ljava/lang/Object;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;)V

    :cond_2
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    return-wide v4

    :cond_3
    :try_start_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, -0x1

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    :try_start_0
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    move v1, p3

    .local v1, "bytesToRead":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "bytesRead":I
    if-ne v0, v3, :cond_5

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v3, v4}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .end local v0    # "bytesRead":I
    .end local v1    # "bytesToRead":I
    :cond_3
    :try_start_1
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_1

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bytesRead":I
    .restart local v1    # "bytesToRead":I
    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_6

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->bytesRemaining:J

    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/ContentDataSource;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-interface {v3, p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;->onBytesTransferred(Ljava/lang/Object;I)V

    goto :goto_0
.end method
