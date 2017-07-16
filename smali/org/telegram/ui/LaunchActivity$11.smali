.class Lorg/telegram/ui/LaunchActivity$11;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$hasUrl:Z

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 1697
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/LaunchActivity$11;->val$hasUrl:Z

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$11;->val$message:Ljava/lang/String;

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

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 1700
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1701
    .local v6, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "scrollToTopOnResume"

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1702
    const-string/jumbo v0, "hasUrl"

    iget-boolean v1, p0, Lorg/telegram/ui/LaunchActivity$11;->val$hasUrl:Z

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1703
    long-to-int v8, p2

    .line 1704
    .local v8, "lower_part":I
    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v7, v0

    .line 1705
    .local v7, "high_id":I
    if-eqz v8, :cond_4

    .line 1706
    if-ne v7, v5, :cond_2

    .line 1707
    const-string/jumbo v0, "chat_id"

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1718
    :cond_0
    :goto_0
    invoke-static {v6, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1719
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1720
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$11;->val$message:Ljava/lang/String;

    move-wide v0, p2

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLjava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v5, v9, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1723
    :cond_1
    return-void

    .line 1709
    :cond_2
    if-lez v8, :cond_3

    .line 1710
    const-string/jumbo v0, "user_id"

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1711
    :cond_3
    if-gez v8, :cond_0

    .line 1712
    const-string/jumbo v0, "chat_id"

    neg-int v1, v8

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1716
    :cond_4
    const-string/jumbo v0, "enc_id"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
