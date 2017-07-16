.class public final Lorg/telegram/messenger/exoplayer2/upstream/FileDataSourceFactory;
.super Ljava/lang/Object;
.source "FileDataSourceFactory.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSourceFactory;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener",
            "<-",
            "Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;, "Lorg/telegram/messenger/exoplayer2/upstream/TransferListener<-Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSourceFactory;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public createDataSource()Lorg/telegram/messenger/exoplayer2/upstream/DataSource;
    .locals 2

    .prologue
    new-instance v0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSourceFactory;->listener:Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/upstream/FileDataSource;-><init>(Lorg/telegram/messenger/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method
