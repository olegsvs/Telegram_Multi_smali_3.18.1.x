.class Lorg/telegram/messenger/voip/VoIPService$15$1;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService$15;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/voip/VoIPService$15;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService$15;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/voip/VoIPService$15;

    .prologue
    .line 1035
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$15$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$15;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$15$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService$15$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$15$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$15$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$15;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$15;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$900(Lorg/telegram/messenger/voip/VoIPService;)V

    .line 1044
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$15$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$15;

    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService$15;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$15$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    invoke-static {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->access$1202(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$PhoneCall;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 1042
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$15$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$15;

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService$15;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->access$2600(Lorg/telegram/messenger/voip/VoIPService;)V

    goto :goto_0
.end method
