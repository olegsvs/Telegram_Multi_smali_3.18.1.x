.class public abstract Lorg/telegram/messenger/support/customtabs/CustomTabsService;
.super Landroid/app/Service;
.source "CustomTabsService.java"


# static fields
.field public static final ACTION_CUSTOM_TABS_CONNECTION:Ljava/lang/String; = "android.support.customtabs.action.CustomTabsService"

.field public static final KEY_URL:Ljava/lang/String; = "android.support.customtabs.otherurls.URL"


# instance fields
.field private mBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;

.field private final mDeathRecipientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 36
    new-instance v0, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsService$1;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/support/customtabs/CustomTabsService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/customtabs/CustomTabsService;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected cleanUpSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Z
    .locals 7
    .param p1, "sessionToken"    # Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;

    .prologue
    const/4 v5, 0x0

    .line 83
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    .line 84
    .local v2, "e":Ljava/util/Map;
    iget-object v6, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 86
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    .line 87
    .local v1, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 88
    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mDeathRecipientMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v4, 0x1

    monitor-exit v6

    .line 92
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    .end local v2    # "e":Ljava/util/Map;
    :goto_0
    return v4

    .line 90
    .restart local v2    # "e":Ljava/util/Map;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .end local v2    # "e":Ljava/util/Map;
    :catch_0
    move-exception v3

    .local v3, "var7":Ljava/util/NoSuchElementException;
    move v4, v5

    .line 92
    goto :goto_0
.end method

.method protected abstract extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsService;->mBinder:Lorg/telegram/messenger/support/customtabs/ICustomTabsService$Stub;

    return-object v0
.end method

.method protected abstract updateVisuals(Lorg/telegram/messenger/support/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z
.end method

.method protected abstract warmup(J)Z
.end method
