.class public Lorg/telegram/ui/Components/ForegroundDetector;
.super Ljava/lang/Object;
.source "ForegroundDetector.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ForegroundDetector$Listener;
    }
.end annotation


# static fields
.field private static Instance:Lorg/telegram/ui/Components/ForegroundDetector;


# instance fields
.field private enterBackgroundTime:J

.field private listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/telegram/ui/Components/ForegroundDetector$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private refs:I

.field private wasInBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/ForegroundDetector;->Instance:Lorg/telegram/ui/Components/ForegroundDetector;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ForegroundDetector;->wasInBackground:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ForegroundDetector;->enterBackgroundTime:J

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ForegroundDetector;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sput-object p0, Lorg/telegram/ui/Components/ForegroundDetector;->Instance:Lorg/telegram/ui/Components/ForegroundDetector;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static getInstance()Lorg/telegram/ui/Components/ForegroundDetector;
    .locals 1

    .prologue
    sget-object v0, Lorg/telegram/ui/Components/ForegroundDetector;->Instance:Lorg/telegram/ui/Components/ForegroundDetector;

    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/telegram/ui/Components/ForegroundDetector$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/ui/Components/ForegroundDetector$Listener;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/ForegroundDetector;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isBackground()Z
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/ForegroundDetector;->refs:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/ForegroundDetector;->refs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWasInBackground(Z)Z
    .locals 4
    .param p1, "reset"    # Z

    .prologue
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/ForegroundDetector;->enterBackgroundTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ForegroundDetector;->wasInBackground:Z

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ForegroundDetector;->wasInBackground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    iget v2, p0, Lorg/telegram/ui/Components/ForegroundDetector;->refs:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/ForegroundDetector;->refs:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/ForegroundDetector;->enterBackgroundTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ForegroundDetector;->wasInBackground:Z

    :cond_0
    const-string/jumbo v2, "switch to foreground"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ForegroundDetector;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ForegroundDetector$Listener;

    .local v1, "listener":Lorg/telegram/ui/Components/ForegroundDetector$Listener;
    :try_start_0
    invoke-interface {v1}, Lorg/telegram/ui/Components/ForegroundDetector$Listener;->onBecameForeground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lorg/telegram/ui/Components/ForegroundDetector$Listener;
    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    iget v2, p0, Lorg/telegram/ui/Components/ForegroundDetector;->refs:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/ui/Components/ForegroundDetector;->refs:I

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/ForegroundDetector;->enterBackgroundTime:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ForegroundDetector;->wasInBackground:Z

    const-string/jumbo v2, "switch to background"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/ForegroundDetector;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ForegroundDetector$Listener;

    .local v1, "listener":Lorg/telegram/ui/Components/ForegroundDetector$Listener;
    :try_start_0
    invoke-interface {v1}, Lorg/telegram/ui/Components/ForegroundDetector$Listener;->onBecameBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lorg/telegram/ui/Components/ForegroundDetector$Listener;
    :cond_0
    return-void
.end method

.method public removeListener(Lorg/telegram/ui/Components/ForegroundDetector$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/ui/Components/ForegroundDetector$Listener;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/ForegroundDetector;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetBackgroundVar()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ForegroundDetector;->wasInBackground:Z

    return-void
.end method
