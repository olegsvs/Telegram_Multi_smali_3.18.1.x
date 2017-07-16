.class public Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "service"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsService;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    .line 32
    iput-object p2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 33
    return-void
.end method

.method public static bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "connection"    # Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "var4":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
    .locals 5
    .param p1, "callback"    # Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)V

    .line 70
    .local v1, "wrapper":Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback$Stub;
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    invoke-interface {v3, v1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->newSession(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 77
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "var4":Landroid/os/RemoteException;
    goto :goto_0

    .line 77
    .end local v0    # "var4":Landroid/os/RemoteException;
    :cond_0
    new-instance v2, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v2, v3, v1, v4}, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;-><init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public warmup(J)Z
    .locals 3
    .param p1, "flags"    # J

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->warmup(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 48
    :goto_0
    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "var4":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
