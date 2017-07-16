.class Lorg/telegram/ui/ChatActivity$9$2$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$9$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$9$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$9$2;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ChatActivity$9$2;

    .prologue
    .line 1112
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$9$2$1;->this$2:Lorg/telegram/ui/ChatActivity$9$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1115
    if-eqz p1, :cond_0

    .line 1119
    :cond_0
    if-eqz p2, :cond_1

    .line 1136
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1124
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1125
    .local v0, "updates":Lorg/telegram/tgnet/TLRPC$Updates;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1126
    new-instance v1, Lorg/telegram/ui/ChatActivity$9$2$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$9$2$1$1;-><init>(Lorg/telegram/ui/ChatActivity$9$2$1;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
