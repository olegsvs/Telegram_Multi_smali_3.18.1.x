.class public Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
.super Ljava/io/IOException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_CLOSE:I = 0x3

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_READ:I = 0x2


# instance fields
.field public final dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "type"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 92
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 93
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/io/IOException;
    .param p3, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p4, "type"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 100
    iput p4, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p3, "type"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 87
    iput p3, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;I)V
    .locals 0
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;
    .param p2, "type"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lorg/telegram/messenger/exoplayer2/upstream/DataSpec;

    .line 81
    iput p2, p0, Lorg/telegram/messenger/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 82
    return-void
.end method
