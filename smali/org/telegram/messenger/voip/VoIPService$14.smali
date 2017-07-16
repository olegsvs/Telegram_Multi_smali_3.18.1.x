.class Lorg/telegram/messenger/voip/VoIPService$14;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/voip/VoIPService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/voip/VoIPService;

    .prologue
    .line 951
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$14;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 954
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$14;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-static {v0, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$1702(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 955
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService$14;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 956
    return-void
.end method
