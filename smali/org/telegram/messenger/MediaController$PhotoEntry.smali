.class public Lorg/telegram/messenger/MediaController$PhotoEntry;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public caption:Ljava/lang/CharSequence;

.field public dateTaken:J

.field public imageId:I

.field public imagePath:Ljava/lang/String;

.field public isVideo:Z

.field public orientation:I

.field public path:Ljava/lang/String;

.field public stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation
.end field

.field public thumbPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;IZ)V
    .locals 1
    .param p1, "bucketId"    # I
    .param p2, "imageId"    # I
    .param p3, "dateTaken"    # J
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "orientation"    # I
    .param p7, "isVideo"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    iput p1, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    iput p2, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    iput-wide p3, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    iput-object p5, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iput p6, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iput-boolean p7, p0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    return-void
.end method
