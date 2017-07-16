.class public Lorg/telegram/messenger/browser/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/browser/Browser$NavigationCallback;
    }
.end annotation


# static fields
.field private static currentCustomTabsActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

.field private static customTabsCurrentSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/support/customtabs/CustomTabsSession;",
            ">;"
        }
    .end annotation
.end field

.field private static customTabsPackageToBind:Ljava/lang/String;

.field private static customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

.field private static customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic access$100()Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)Lorg/telegram/messenger/support/customtabs/CustomTabsClient;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    .prologue
    .line 44
    sput-object p0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    return-object p0
.end method

.method public static bindCustomTabsService(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_4

    .line 76
    .local v0, "currentActivity":Landroid/app/Activity;
    :goto_1
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    .line 77
    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->unbindCustomTabsService(Landroid/app/Activity;)V

    .line 79
    :cond_2
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    if-nez v2, :cond_0

    .line 82
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    .line 84
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-static {p0}, Lorg/telegram/messenger/support/customtabsclient/shared/CustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    .line 86
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 90
    :cond_3
    new-instance v2, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;

    new-instance v3, Lorg/telegram/messenger/browser/Browser$1;

    invoke-direct {v3}, Lorg/telegram/messenger/browser/Browser$1;-><init>()V

    invoke-direct {v2, v3}, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;-><init>(Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;)V

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    .line 110
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsPackageToBind:Ljava/lang/String;

    sget-object v3, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    invoke-static {p0, v2, v3}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const/4 v2, 0x0

    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    .end local v0    # "currentActivity":Landroid/app/Activity;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    goto :goto_1
.end method

.method private static getCurrentSession()Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsCurrentSession:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsCurrentSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    goto :goto_0
.end method

.method private static getSession()Lorg/telegram/messenger/support/customtabs/CustomTabsSession;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    if-nez v0, :cond_1

    .line 63
    sput-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    .line 68
    :cond_0
    :goto_0
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    return-object v0

    .line 64
    :cond_1
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    new-instance v1, Lorg/telegram/messenger/browser/Browser$NavigationCallback;

    invoke-direct {v1, v2}, Lorg/telegram/messenger/browser/Browser$NavigationCallback;-><init>(Lorg/telegram/messenger/browser/Browser$1;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->newSession(Lorg/telegram/messenger/support/customtabs/CustomTabsCallback;)Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    .line 66
    sget-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->setCurrentSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V

    goto :goto_0
.end method

.method public static isInternalUri(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_0
    const-string/jumbo v1, "tg"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "telegram.me"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "t.me"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "telegram.dog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 211
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 212
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isInternalUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static openUrl(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 151
    return-void
.end method

.method public static openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowCustom"    # Z

    .prologue
    .line 161
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "plusmessenger.org/theme/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 167
    const/16 p2, 0x0

    .line 169
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "scheme":Ljava/lang/String;
    :goto_1
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/browser/Browser;->isInternalUri(Landroid/net/Uri;)Z

    move-result v6

    .line 173
    .local v6, "internalUri":Z
    :try_start_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xf

    if-lt v10, v11, :cond_4

    if-eqz p2, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez v6, :cond_4

    const-string/jumbo v10, "tel"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 174
    new-instance v8, Landroid/content/Intent;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v11, Lorg/telegram/messenger/ShareBroadcastReceiver;

    invoke-direct {v8, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v8, "share":Landroid/content/Intent;
    const-string/jumbo v10, "android.intent.action.SEND"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    new-instance v1, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    invoke-static {}, Lorg/telegram/messenger/browser/Browser;->getSession()Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    move-result-object v10

    invoke-direct {v1, v10}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;-><init>(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V

    .line 179
    .local v1, "builder":Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "theme"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 180
    .local v9, "themePrefs":Landroid/content/SharedPreferences;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    .line 181
    .local v2, "color":I
    const/4 v10, -0x1

    if-ne v2, v10, :cond_3

    const/16 v10, 0x20

    invoke-static {v2, v10}, Lorg/telegram/messenger/AndroidUtilities;->setDarkColor(II)I

    move-result v2

    .line 182
    :cond_3
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    .line 183
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020001

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    const-string/jumbo v11, "ShareFile"

    const v12, 0x7f0705bd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v8, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/app/PendingIntent;Z)Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;

    .line 185
    invoke-virtual {v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;->build()Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;

    move-result-object v5

    .line 186
    .local v5, "intent":Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v10, v0

    move-object/from16 v0, p1

    invoke-virtual {v5, v10, v0}, Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;->launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 189
    .end local v1    # "builder":Lorg/telegram/messenger/support/customtabs/CustomTabsIntent$Builder;
    .end local v2    # "color":I
    .end local v5    # "intent":Lorg/telegram/messenger/support/customtabs/CustomTabsIntent;
    .end local v8    # "share":Landroid/content/Intent;
    .end local v9    # "themePrefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    .line 190
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 193
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    invoke-direct {v5, v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_5

    .line 195
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 198
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_5
    const-string/jumbo v10, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 200
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 201
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 169
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "internalUri":Z
    .end local v7    # "scheme":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, ""

    goto/16 :goto_1
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "allowCustom"    # Z

    .prologue
    .line 154
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private static setCurrentSession(Lorg/telegram/messenger/support/customtabs/CustomTabsSession;)V
    .locals 1
    .param p0, "session"    # Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/telegram/messenger/browser/Browser;->customTabsCurrentSession:Ljava/lang/ref/WeakReference;

    .line 59
    return-void
.end method

.method public static unbindCustomTabsService(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 119
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v2, v4, :cond_0

    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    if-nez v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_3

    move-object v0, v3

    .line 123
    .local v0, "currentActivity":Landroid/app/Activity;
    :goto_1
    if-ne v0, p0, :cond_2

    .line 124
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 127
    :cond_2
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->customTabsServiceConnection:Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_2
    sput-object v3, Lorg/telegram/messenger/browser/Browser;->customTabsClient:Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    .line 132
    sput-object v3, Lorg/telegram/messenger/browser/Browser;->customTabsSession:Lorg/telegram/messenger/support/customtabs/CustomTabsSession;

    goto :goto_0

    .line 122
    .end local v0    # "currentActivity":Landroid/app/Activity;
    :cond_3
    sget-object v2, Lorg/telegram/messenger/browser/Browser;->currentCustomTabsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v0, v2

    goto :goto_1

    .line 128
    .restart local v0    # "currentActivity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
