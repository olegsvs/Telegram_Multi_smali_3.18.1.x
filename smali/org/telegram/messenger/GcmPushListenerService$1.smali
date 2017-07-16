.class Lorg/telegram/messenger/GcmPushListenerService$1;
.super Ljava/lang/Object;
.source "GcmPushListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/GcmPushListenerService;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/GcmPushListenerService;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/GcmPushListenerService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/GcmPushListenerService;

    .prologue
    .line 28
    iput-object p1, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->this$0:Lorg/telegram/messenger/GcmPushListenerService;

    iput-object p2, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 31
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 34
    :try_start_0
    iget-object v12, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v13, "loc_key"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "key":Ljava/lang/String;
    const-string/jumbo v12, "DC_UPDATE"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 36
    iget-object v12, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v13, "custom"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "data":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v8, "object":Lorg/json/JSONObject;
    const-string/jumbo v12, "dc"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 39
    .local v3, "dc":I
    const-string/jumbo v12, "addr"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "addr":Ljava/lang/String;
    const-string/jumbo v12, ":"

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 41
    .local v9, "parts":[Ljava/lang/String;
    array-length v12, v9

    const/4 v13, 0x2

    if-eq v12, v13, :cond_0

    .line 65
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "dc":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v9    # "parts":[Ljava/lang/String;
    :goto_0
    return-void

    .line 44
    .restart local v0    # "addr":Ljava/lang/String;
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v3    # "dc":I
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "object":Lorg/json/JSONObject;
    .restart local v9    # "parts":[Ljava/lang/String;
    :cond_0
    const/4 v12, 0x0

    aget-object v5, v9, v12

    .line 45
    .local v5, "ip":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 46
    .local v10, "port":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    invoke-virtual {v12, v3, v5, v10}, Lorg/telegram/tgnet/ConnectionsManager;->applyDatacenterAddress(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "addr":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "dc":I
    .end local v5    # "ip":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v10    # "port":I
    :cond_1
    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->onInternalPushReceived()V

    .line 64
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/tgnet/ConnectionsManager;->resumeNetworkMaybe()V

    goto :goto_0

    .line 48
    .restart local v6    # "key":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-boolean v12, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-eqz v12, :cond_1

    .line 49
    iget-object v12, p0, Lorg/telegram/messenger/GcmPushListenerService$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v13, "badge"

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 50
    .local v11, "value":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 51
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v13, "connectivity"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 52
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 53
    .local v7, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-nez v12, :cond_1

    .line 54
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/NotificationsController;->showSingleBackgroundNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 59
    .end local v1    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "netInfo":Landroid/net/NetworkInfo;
    .end local v11    # "value":I
    :catch_0
    move-exception v4

    .line 60
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
