.class Lorg/telegram/messenger/MessagesController$70;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->addUsersToChannel(ILjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 4270
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$70;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$70;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$70;->val$req:Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 4273
    if-eqz p2, :cond_0

    .line 4274
    new-instance v0, Lorg/telegram/messenger/MessagesController$70$1;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/MessagesController$70$1;-><init>(Lorg/telegram/messenger/MessagesController$70;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4283
    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :goto_0
    return-void

    .line 4282
    .restart local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$70;->this$0:Lorg/telegram/messenger/MessagesController;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    goto :goto_0
.end method
