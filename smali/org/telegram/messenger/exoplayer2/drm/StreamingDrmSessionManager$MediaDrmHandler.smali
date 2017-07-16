.class Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "StreamingDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.MediaDrmHandler;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.MediaDrmHandler;"
    const/4 v2, 0x3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$200(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$300(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$300(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$302(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;I)I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$600(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$400(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$302(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;I)I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$500(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
