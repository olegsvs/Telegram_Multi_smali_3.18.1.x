.class Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;
.super Ljava/lang/Object;
.source "MergingMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;

.field final synthetic val$sourceIndex:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;

    iput p2, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;->val$sourceIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
    .locals 2
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/MergingMediaSource$1;->val$sourceIndex:I


    return-void
.end method
