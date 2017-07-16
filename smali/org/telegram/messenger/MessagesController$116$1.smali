.class Lorg/telegram/messenger/MessagesController$116$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$116;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController$116;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$116;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController$116;

    .prologue
    .line 8211
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$116$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$116$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8215
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$116;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8219
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$116;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 8220
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$116$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v3, :cond_2

    .line 8221
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$116$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 8222
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 8223
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 8224
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 8225
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8226
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$116;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v8, v3, v4, v7, v6}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 8249
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_0
    :goto_1
    return-void

    .line 8216
    :catch_0
    move-exception v0

    .line 8217
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8227
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8228
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController$116;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget v5, v5, Lorg/telegram/messenger/MessagesController$116;->val$type:I

    invoke-static {v3, v8, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    goto :goto_1

    .line 8231
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$116;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$116;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8233
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$116;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "NoUsernameFound"

    const v5, 0x7f0703ef

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 8235
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 8236
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "searchOnTwitter"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    if-eqz v3, :cond_0

    .line 8238
    :try_start_2
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$116;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "twitter://user?screen_name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$116;->val$un:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 8239
    :catch_1
    move-exception v0

    .line 8240
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController$116;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "https://twitter.com/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$116$1;->this$0:Lorg/telegram/messenger/MessagesController$116;

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController$116;->val$un:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 8244
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v0

    .line 8245
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
