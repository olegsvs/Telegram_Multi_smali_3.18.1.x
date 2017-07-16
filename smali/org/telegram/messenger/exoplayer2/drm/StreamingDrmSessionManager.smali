.class public Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager;
.implements Lorg/telegram/messenger/exoplayer2/drm/DrmSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;,
        Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;,
        Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;,
        Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;,
        Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/drm/DrmSessionManager",
        "<TT;>;",
        "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"


# instance fields
.field final callback:Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

.field private lastException:Ljava/lang/Exception;

.field private mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;"
        }
    .end annotation
.end field

.field mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager",
            "<TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playbackLooper:Landroid/os/Looper;

.field private postRequestHandler:Landroid/os/Handler;

.field postResponseHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager",
            "<TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private provisioningInProgress:Z

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p3, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    .local p2, "mediaDrm":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;, "Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->callback:Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;

    iput-object p4, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    iput-object p6, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;)V

    invoke-interface {p2, v0}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->setOnEventListener(Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postKeyRequest()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    .prologue
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onProvisionResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public static newFrameworkInstance(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .locals 7
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .local p2, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;-><init>(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)V

    return-object v0
.end method

.method public static newPlayReadyInstance(Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/lang/String;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .locals 2
    .param p0, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p1, "customData"    # Ljava/lang/String;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "PRCustomData"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object v1, Lorg/telegram/messenger/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {v1, p0, v0, p2, p3}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    move-result-object v1

    return-object v1

    .end local v0    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static newWidevineInstance(Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;
    .locals 1
    .param p0, "callback"    # Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "eventListener"    # Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .local p1, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Lorg/telegram/messenger/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;)Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;

    move-result-object v0

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$2;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    :cond_1
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    const/4 v3, 0x4

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    if-eq v1, v3, :cond_1

    .end local p1    # "response":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0

    .restart local p1    # "response":Ljava/lang/Object;
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-interface {v1, v2, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventListener:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v2, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$1;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onProvisionResponse(Ljava/lang/Object;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    const/4 v3, 0x2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .end local p1    # "response":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local p1    # "response":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->provideProvisionResponse([B)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openInternal(Z)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/media/DeniedByServerException;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .end local v0    # "e":Landroid/media/DeniedByServerException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_1
    .catch Landroid/media/DeniedByServerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private openInternal(Z)V
    .locals 4
    .param p1, "allowProvisioning"    # Z

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-interface {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->createMediaCrypto(Ljava/util/UUID;[B)Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    const/4 v1, 0x3

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/media/NotProvisionedException;
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private postKeyRequest()V
    .locals 8

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v2, v2, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v3, v3, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object v7

    .local v7, "keyRequest":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "keyRequest":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    :goto_0
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Landroid/media/NotProvisionedException;
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private postProvisionRequest()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getProvisionRequest()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    .local v0, "request":Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public acquireSession(Landroid/os/Looper;Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/drm/DrmSession;
    .locals 5
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "drmInitData"    # Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    const/4 v2, 0x1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-ne v1, p1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I

    if-eq v1, v2, :cond_2

    :goto_1
    return-object p0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-nez v1, :cond_3

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;

    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postResponseHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;

    :cond_3
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v3, "DrmRequestHandler"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostRequestHandler;-><init>(Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;->get(Ljava/util/UUID;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media does not support uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_4
    sget v1, Lorg/telegram/messenger/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v1, v1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    sget-object v3, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v1, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .local v0, "psshData":[B
    if-nez v0, :cond_6

    .end local v0    # "psshData":[B
    :cond_5
    :goto_2
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    invoke-direct {p0, v2}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openInternal(Z)V

    goto :goto_1

    .restart local v0    # "psshData":[B
    :cond_6
    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v3, Lorg/telegram/messenger/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v4, v4, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    goto :goto_2
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMediaCrypto()Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method public releaseSession(Lorg/telegram/messenger/exoplayer2/drm/DrmSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmSession",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    .local p1, "session":Lorg/telegram/messenger/exoplayer2/drm/DrmSession;, "Lorg/telegram/messenger/exoplayer2/drm/DrmSession<TT;>;"
    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->openCount:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$MediaDrmHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postResponseHandler:Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->schemeData:Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->closeSession([B)V

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->sessionId:[B

    goto :goto_0
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaCrypto:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;, "Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/drm/StreamingDrmSessionManager;->mediaDrm:Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/drm/ExoMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
