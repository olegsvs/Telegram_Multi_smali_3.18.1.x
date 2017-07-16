.class Lorg/telegram/ui/MediaActivity$1$3;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$1;

.field final synthetic val$quoteForward:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$1;

    .prologue
    .line 438
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iput-boolean p2, p0, Lorg/telegram/ui/MediaActivity$1$3;->val$quoteForward:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .locals 12
    .param p1, "fragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "did"    # J
    .param p4, "param"    # Z

    .prologue
    .line 441
    long-to-int v10, p2

    .line 442
    .local v10, "lower_part":I
    if-eqz v10, :cond_7

    .line 443
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 444
    .local v7, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "scrollToTopOnResume"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    const-string/jumbo v1, "quote"

    iget-boolean v2, p0, Lorg/telegram/ui/MediaActivity$1$3;->val$quoteForward:Z

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    if-lez v10, :cond_2

    .line 449
    const-string/jumbo v1, "user_id"

    invoke-virtual {v7, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    :cond_0
    :goto_0
    invoke-static {v7, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 483
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-void

    .line 450
    .restart local v7    # "args":Landroid/os/Bundle;
    :cond_2
    if-gez v10, :cond_0

    .line 451
    const-string/jumbo v1, "chat_id"

    neg-int v2, v10

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 457
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v3, "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v6, 0x1

    .local v6, "a":I
    :goto_2
    if-ltz v6, :cond_6

    .line 459
    new-instance v9, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 460
    .local v9, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 461
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 462
    .local v8, "id":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    .line 463
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v2, v2, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 466
    .end local v8    # "id":Ljava/lang/Integer;
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 458
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 468
    .end local v9    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/MediaActivity;->access$702(Lorg/telegram/ui/MediaActivity;I)I

    .line 469
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1400(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 471
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 473
    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 474
    .local v0, "chatActivity":Lorg/telegram/ui/ChatActivity;
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 475
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 477
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 478
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$3;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/MediaActivity;->removeSelfFromStack()V

    goto/16 :goto_1

    .line 481
    .end local v0    # "chatActivity":Lorg/telegram/ui/ChatActivity;
    .end local v3    # "fmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v6    # "a":I
    .end local v7    # "args":Landroid/os/Bundle;
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_1
.end method
