.class Lorg/telegram/messenger/voip/VoIPService$11;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private done:Z

.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;

.field final synthetic val$onDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$11;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$11;->val$onDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService$11;->done:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService$11;->done:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService$11;->done:Z

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$11;->val$onDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$11;->val$onDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$11;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2300(Lorg/telegram/messenger/voip/VoIPService;)V

    goto :goto_0
.end method
