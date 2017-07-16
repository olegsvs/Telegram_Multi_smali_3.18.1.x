.class public Lorg/telegram/messenger/video/Mp4Movie;
.super Ljava/lang/Object;
.source "Mp4Movie.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private cacheFile:Ljava/io/File;

.field private height:I

.field private matrix:Lcom/googlecode/mp4parser/util/Matrix;

.field private tracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/video/Track;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSample(IJLandroid/media/MediaCodec$BufferInfo;)V
    .locals 2
    .param p1, "trackIndex"    # I
    .param p2, "offset"    # J
    .param p4, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Track;

    .line 74
    .local v0, "track":Lorg/telegram/messenger/video/Track;
    invoke-virtual {v0, p2, p3, p4}, Lorg/telegram/messenger/video/Track;->addSample(JLandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0
.end method

.method public addTrack(Landroid/media/MediaFormat;Z)I
    .locals 3
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p2, "isAudio"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/video/Track;

    iget-object v2, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2, p1, p2}, Lorg/telegram/messenger/video/Track;-><init>(ILandroid/media/MediaFormat;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCacheFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->cacheFile:Ljava/io/File;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->height:I

    return v0
.end method

.method public getMatrix()Lcom/googlecode/mp4parser/util/Matrix;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    return-object v0
.end method

.method public getTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/video/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->tracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->width:I

    return v0
.end method

.method public setCacheFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/telegram/messenger/video/Mp4Movie;->cacheFile:Ljava/io/File;

    .line 42
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .param p1, "angle"    # I

    .prologue
    .line 45
    if-nez p1, :cond_1

    .line 46
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_2

    .line 48
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_0

    .line 49
    :cond_2
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_3

    .line 50
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_0

    .line 51
    :cond_3
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    .line 52
    sget-object v0, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    iput-object v0, p0, Lorg/telegram/messenger/video/Mp4Movie;->matrix:Lcom/googlecode/mp4parser/util/Matrix;

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 57
    iput p1, p0, Lorg/telegram/messenger/video/Mp4Movie;->width:I

    .line 58
    iput p2, p0, Lorg/telegram/messenger/video/Mp4Movie;->height:I

    .line 59
    return-void
.end method
