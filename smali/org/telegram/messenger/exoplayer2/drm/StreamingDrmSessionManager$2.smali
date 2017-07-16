.class Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager.2;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager.2;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->access$100(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    return-void
.end method
