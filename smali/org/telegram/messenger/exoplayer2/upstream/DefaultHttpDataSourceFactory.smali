.class public final Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultHttpDataSourceFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$Factory;


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private final connectTimeoutMillis:I

.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final readTimeoutMillis:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .locals 6
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DataSource;>;"
    const/16 v3, 0x1f40

    .line 53
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;IIZ)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;IIZ)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p3, "connectTimeoutMillis"    # I
    .param p4, "readTimeoutMillis"    # I
    .param p5, "allowCrossProtocolRedirects"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/DataSource;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/DataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    .line 72
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->connectTimeoutMillis:I

    .line 73
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->readTimeoutMillis:I

    .line 74
    iput-boolean p5, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    .line 75
    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;
    .locals 7

    .prologue
    .line 79
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->userAgent:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    iget v4, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->connectTimeoutMillis:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->readTimeoutMillis:I

    iget-boolean v6, p0, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->allowCrossProtocolRedirects:Z

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/util/Predicate;Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;IIZ)V

    return-object v0
.end method

.method public bridge synthetic createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSourceFactory;->createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DefaultHttpDataSource;

    move-result-object v0

    return-object v0
.end method
