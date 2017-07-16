.class Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;
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
    name = "PostRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "backgroundLooper"    # Landroid/os/Looper;

    .prologue
    .line 498
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.PostRequestHandler;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .line 499
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 500
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 506
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.PostRequestHandler;"
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 514
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postResponseHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 520
    return-void

    .line 508
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->callback:Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v3, v4, v2}, Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1

    .line 509
    .local v1, "response":[B
    goto :goto_0

    .line 511
    .end local v1    # "response":[B
    :pswitch_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    iget-object v3, v2, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->callback:Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    iget-object v4, v2, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v3, v4, v2}, Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 512
    .restart local v1    # "response":[B
    goto :goto_0

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
