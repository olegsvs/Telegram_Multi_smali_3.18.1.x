.class Lorg/telegram/ui/LaunchActivity$8$1$2;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LaunchActivity$8$1;

.field final synthetic val$user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$8$1;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/LaunchActivity$8$1;

    .prologue
    .line 1506
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$8$1$2;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$8$1$2;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .locals 10
    .param p1, "fragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "did"    # J
    .param p4, "param"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1509
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1510
    .local v7, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "scrollToTopOnResume"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1511
    const-string/jumbo v0, "chat_id"

    long-to-int v1, p2

    neg-int v1, v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1512
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v7, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1514
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    long-to-int v1, p2

    neg-int v1, v1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$8$1$2;->val$user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$8$1$2;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v5, v5, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v5, v5, Lorg/telegram/ui/LaunchActivity$8;->val$botChat:Ljava/lang/String;

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->addUserToChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1515
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$8$1$2;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v8, v4, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1517
    :cond_1
    return-void
.end method
