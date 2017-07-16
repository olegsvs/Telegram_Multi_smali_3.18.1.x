.class public Lnet/hockeyapp/android/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field public static final INSTALLER_ADB:Ljava/lang/String; = "adb"

.field public static final INSTALLER_PACKAGE_INSTALLER_NOUGAT:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

.field private static updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 38
    sput-object v0, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkExpiryDate(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/UpdateManagerListener;)Z
    .locals 2
    .param p1, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v0, 0x0

    .line 185
    .local v0, "handle":Z
    invoke-static {p1}, Lnet/hockeyapp/android/UpdateManager;->checkExpiryDateForBackground(Lnet/hockeyapp/android/UpdateManagerListener;)Z

    move-result v1

    .line 186
    .local v1, "hasExpired":Z
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p1}, Lnet/hockeyapp/android/UpdateManagerListener;->onBuildExpired()Z

    move-result v0

    .line 190
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 191
    invoke-static {p0}, Lnet/hockeyapp/android/UpdateManager;->startExpiryInfoIntent(Ljava/lang/ref/WeakReference;)V

    .line 194
    :cond_1
    return v1
.end method

.method private static checkExpiryDateForBackground(Lnet/hockeyapp/android/UpdateManagerListener;)Z
    .locals 3
    .param p0, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 204
    .local v1, "result":Z
    if-eqz p0, :cond_0

    .line 205
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateManagerListener;->getExpiryDate()Ljava/util/Date;

    move-result-object v0

    .line 206
    .local v0, "expiryDate":Ljava/util/Date;
    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 209
    .end local v0    # "expiryDate":Ljava/util/Date;
    :cond_0
    :goto_0
    return v1

    .line 206
    .restart local v0    # "expiryDate":Ljava/util/Date;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static dialogShown(Ljava/lang/ref/WeakReference;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v2, 0x0

    .line 293
    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 295
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "hockey_update_dialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 297
    .local v1, "existingFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 301
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "existingFragment":Landroid/app/Fragment;
    :cond_0
    return v2
.end method

.method public static getLastListener()Lnet/hockeyapp/android/UpdateManagerListener;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    return-object v0
.end method

.method protected static installedFromMarket(Ljava/lang/ref/WeakReference;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Landroid/content/Context;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<+Landroid/content/Context;>;"
    const/4 v2, 0x0

    .line 218
    .local v2, "result":Z
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 219
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 221
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "installer":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 224
    const/4 v2, 0x1

    .line 228
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    const/4 v2, 0x0

    .line 233
    :cond_0
    const-string/jumbo v3, "adb"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    const/4 v2, 0x0

    .line 242
    .end local v1    # "installer":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 238
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static register(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "appIdentifier":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    invoke-static {p0, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    .line 108
    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .param p4, "isDialogRequired"    # Z

    .prologue
    .line 120
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 122
    sput-object p3, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 125
    .local v0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->fragmentsSupported()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->dialogShown(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {v0, p3}, Lnet/hockeyapp/android/UpdateManager;->checkExpiryDate(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/UpdateManagerListener;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lnet/hockeyapp/android/UpdateManagerListener;->canUpdateInMarket()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->installedFromMarket(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    :cond_3
    invoke-static {v0, p1, p2, p3, p4}, Lnet/hockeyapp/android/UpdateManager;->startUpdateTask(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    goto :goto_0
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;

    .prologue
    .line 83
    const-string/jumbo v0, "https://sdk.hockeyapp.net/"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    .line 84
    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .param p3, "isDialogRequired"    # Z

    .prologue
    .line 95
    const-string/jumbo v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2, p3}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    .line 96
    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "isDialogRequired"    # Z

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    .line 73
    return-void
.end method

.method public static registerForBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;

    .prologue
    .line 154
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 156
    sput-object p3, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 160
    .local v0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-static {p3}, Lnet/hockeyapp/android/UpdateManager;->checkExpiryDateForBackground(Lnet/hockeyapp/android/UpdateManagerListener;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lnet/hockeyapp/android/UpdateManagerListener;->canUpdateInMarket()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v0}, Lnet/hockeyapp/android/UpdateManager;->installedFromMarket(Ljava/lang/ref/WeakReference;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    :cond_1
    invoke-static {v0, p1, p2, p3}, Lnet/hockeyapp/android/UpdateManager;->startUpdateTaskForBackground(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    .line 163
    :cond_2
    return-void
.end method

.method public static registerForBackground(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;

    .prologue
    .line 142
    const-string/jumbo v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/UpdateManager;->registerForBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    .line 143
    return-void
.end method

.method private static startExpiryInfoIntent(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz p0, :cond_0

    .line 251
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 252
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/hockeyapp/android/ExpiryInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 260
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private static startUpdateTask(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V
    .locals 6
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .param p4, "isDialogRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "weakActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 268
    :cond_0
    new-instance v0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;Z)V

    sput-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 269
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_1
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->attach(Ljava/lang/ref/WeakReference;)V

    goto :goto_0
.end method

.method private static startUpdateTaskForBackground(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/UpdateManagerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/hockeyapp/android/UpdateManagerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 281
    :cond_0
    new-instance v0, Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/UpdateManagerListener;)V

    sput-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 282
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_1
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->attach(Ljava/lang/ref/WeakReference;)V

    goto :goto_0
.end method

.method public static unregister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->cancel(Z)Z

    .line 171
    sget-object v0, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    invoke-virtual {v0}, Lnet/hockeyapp/android/tasks/CheckUpdateTask;->detach()V

    .line 172
    sput-object v2, Lnet/hockeyapp/android/UpdateManager;->updateTask:Lnet/hockeyapp/android/tasks/CheckUpdateTask;

    .line 175
    :cond_0
    sput-object v2, Lnet/hockeyapp/android/UpdateManager;->lastListener:Lnet/hockeyapp/android/UpdateManagerListener;

    .line 176
    return-void
.end method
