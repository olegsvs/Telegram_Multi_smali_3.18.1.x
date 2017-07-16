.class Lorg/telegram/ui/LaunchActivity$9$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$9;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$9;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$9;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/LaunchActivity$9;

    .prologue
    .line 1568
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const v12, 0x7f070452

    const v7, 0x7f070078

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1571
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/LaunchActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1573
    :try_start_0
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$9;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1577
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 1578
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$9$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    .line 1579
    .local v5, "invite":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isLeftFromChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1580
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v6, v7, v10}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 1581
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1582
    .local v2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v11, v2, v10, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1584
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1585
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "chat_id"

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1586
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, v6}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1587
    :cond_0
    new-instance v4, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1588
    .local v4, "fragment":Lorg/telegram/ui/ChatActivity;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1589
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v6}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v6

    invoke-virtual {v6, v4, v10, v9, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1625
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v4    # "fragment":Lorg/telegram/ui/ChatActivity;
    .end local v5    # "invite":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    :cond_1
    :goto_1
    return-void

    .line 1574
    :catch_0
    move-exception v3

    .line 1575
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1592
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "invite":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    :cond_2
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v6, :cond_3

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_5

    :cond_4
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1593
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$1400()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1594
    .local v4, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    new-instance v6, Lorg/telegram/ui/Components/JoinGroupAlert;

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v7, v7, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity$9;->val$group:Ljava/lang/String;

    invoke-direct {v6, v7, v5, v8, v4}, Lorg/telegram/ui/Components/JoinGroupAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatInvite;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1

    .line 1596
    .end local v4    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_5
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1597
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v6, "AppName"

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1598
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->megagroup:Z

    if-nez v6, :cond_6

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->channel:Z

    if-nez v6, :cond_7

    :cond_6
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v6, :cond_9

    .line 1599
    :cond_7
    const-string/jumbo v7, "ChannelJoinTo"

    const v8, 0x7f070120

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_8

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_2
    aput-object v6, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1603
    :goto_3
    const-string/jumbo v6, "OK"

    invoke-static {v6, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/LaunchActivity$9$1$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/LaunchActivity$9$1$1;-><init>(Lorg/telegram/ui/LaunchActivity$9$1;)V

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1609
    const-string/jumbo v6, "Cancel"

    const v7, 0x7f0700f0

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1610
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/LaunchActivity;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_1

    .line 1599
    :cond_8
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    goto :goto_2

    .line 1601
    :cond_9
    const-string/jumbo v7, "JoinToGroup"

    const v8, 0x7f07030e

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_a

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_4
    aput-object v6, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_3

    :cond_a
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    goto :goto_4

    .line 1614
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v5    # "invite":Lorg/telegram/tgnet/TLRPC$ChatInvite;
    :cond_b
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1615
    .restart local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v6, "AppName"

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1616
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$9$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v7, "FLOOD_WAIT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1617
    const-string/jumbo v6, "FloodWait"

    const v7, 0x7f070252

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1621
    :goto_5
    const-string/jumbo v6, "OK"

    invoke-static {v6, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1622
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$9$1;->this$1:Lorg/telegram/ui/LaunchActivity$9;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$9;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/LaunchActivity;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_1

    .line 1619
    :cond_c
    const-string/jumbo v6, "JoinToGroupErrorNotExist"

    const v7, 0x7f070310

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_5
.end method
