.class Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;

    .prologue
    .line 2184
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v6, 0x7f070078

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2187
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/LoginActivity;->needHideProgress()V

    .line 2188
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    invoke-static {v4, v9}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5702(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;Z)Z

    .line 2189
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v4, :cond_0

    .line 2190
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    .line 2191
    .local v0, "res":Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->setUserId(I)V

    .line 2192
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->clearConfig()V

    .line 2193
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController;->cleanup()V

    .line 2194
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2195
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2196
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesStorage;->cleanup(Z)V

    .line 2197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2198
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v8, v8}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 2200
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5, v9}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 2201
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ContactsController;->checkAppAccount()V

    .line 2202
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/MessagesController;->getBlockedUsers(Z)V

    .line 2203
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->updateDcSettings()V

    .line 2204
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;)V

    .line 2221
    .end local v0    # "res":Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;
    .end local v3    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :goto_0
    return-void

    .line 2206
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "PASSWORD_HASH_INVALID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2207
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    invoke-static {v4, v8}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5800(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;Z)V

    goto :goto_0

    .line 2208
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v5, "FLOOD_WAIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2209
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2211
    .local v1, "time":I
    const/16 v4, 0x3c

    if-ge v1, v4, :cond_2

    .line 2212
    const-string/jumbo v4, "Seconds"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2216
    .local v2, "timeString":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "FloodWaitTime"

    const v7, 0x7f070253

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2214
    .end local v2    # "timeString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Minutes"

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "timeString":Ljava/lang/String;
    goto :goto_1

    .line 2218
    .end local v1    # "time":I
    .end local v2    # "timeString":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->this$2:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string/jumbo v5, "AppName"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
