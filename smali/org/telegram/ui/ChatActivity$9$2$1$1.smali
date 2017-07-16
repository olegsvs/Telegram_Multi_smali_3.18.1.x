.class Lorg/telegram/ui/ChatActivity$9$2$1$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$9$2$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/ChatActivity$9$2$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$9$2$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/ChatActivity$9$2$1;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$9$2$1$1;->this$3:Lorg/telegram/ui/ChatActivity$9$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$9$2$1$1;->this$3:Lorg/telegram/ui/ChatActivity$9$2$1;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$9$2$1;->this$2:Lorg/telegram/ui/ChatActivity$9$2;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$9$2;->this$1:Lorg/telegram/ui/ChatActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->finishFragment()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
