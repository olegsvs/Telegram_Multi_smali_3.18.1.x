.class Lorg/telegram/ui/ThemingActivity$3$3$1;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity$3$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ThemingActivity$3$3;

.field final synthetic val$pName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity$3$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ThemingActivity$3$3;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$3;

    iput-object p2, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->val$pName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3$3;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v2, v3}, Lorg/telegram/ui/ThemingActivity;->access$702(Lorg/telegram/ui/ThemingActivity;Z)Z

    iget-object v2, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3$3;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3$3;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "themeName"

    iget-object v4, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->val$pName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3$3;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "version"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3$3;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3$3;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "date"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3$3;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "/Telegram/Themes"

    const-string/jumbo v4, "theme.xml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->val$pName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5, v8}, Lorg/telegram/messenger/Utilities;->savePreferencesToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3$3;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ThemingActivity$3$3$1;->val$pName:Ljava/lang/String;

    invoke-static {v2, v3, v8}, Lorg/telegram/messenger/Utilities;->copyWallpaperToSD(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
