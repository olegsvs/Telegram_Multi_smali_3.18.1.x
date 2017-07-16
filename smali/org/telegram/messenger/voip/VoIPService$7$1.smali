.class Lorg/telegram/messenger/voip/VoIPService$7$1;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/voip/VoIPService$7;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService$7;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/voip/VoIPService$7;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->access$1900()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receivedCall response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "error on receivedCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->stopSelf()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2000(Lorg/telegram/messenger/voip/VoIPService;)V

    goto :goto_0
.end method
