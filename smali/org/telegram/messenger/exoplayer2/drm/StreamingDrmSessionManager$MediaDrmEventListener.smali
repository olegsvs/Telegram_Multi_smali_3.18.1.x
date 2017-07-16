.class Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V
    .locals 0

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.MediaDrmEventListener;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .param p2, "x1"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.MediaDrmEventListener;"
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;[BII[B)V
    .locals 1
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm",
            "<+TT;>;[BII[B)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>.MediaDrmEventListener;"
    .local p1, "md":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;, "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm<+TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;->this$0:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->sendEmptyMessage(I)Z

    return-void
.end method
