.class public final Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
.super Ljava/lang/Object;
.source "CustomTabsSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSession"


# instance fields
.field private final mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/customtabs/ICustomTabsService;Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "service"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsService;
    .param p2, "callback"    # Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    .line 41
    iput-object p2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    .line 42
    iput-object p3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    .line 43
    return-void
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->mayLaunchUrl(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "var5":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->setToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "android.support.customtabs.customaction.ID"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string/jumbo v3, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    const-string/jumbo v3, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v1, "metaBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mService:Lorg/telegram/messenger/support/customtabs/ICustomTabsService;

    iget-object v4, p0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;->mCallback:Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;

    invoke-interface {v3, v4, v1}, Lorg/telegram/messenger/support/customtabs/ICustomTabsService;->updateVisuals(Lorg/telegram/messenger/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 68
    :goto_0
    return v3

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "var7":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method
