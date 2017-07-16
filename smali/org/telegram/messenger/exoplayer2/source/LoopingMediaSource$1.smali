.class Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;
.super Ljava/lang/Object;
.source "LoopingMediaSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->prepareSource(Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

.field final synthetic val$listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;->val$listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
    .locals 3
    .param p2, "manifest"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;


    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->access$002(Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;I)I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;->val$listener:Lorg/telegram/messenger/exoplayer2/source/MediaSource$Listener;


    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource$1;->this$0:Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;->access$100(Lorg/telegram/messenger/exoplayer2/source/LoopingMediaSource;)I

    move-result v2



    return-void
.end method
