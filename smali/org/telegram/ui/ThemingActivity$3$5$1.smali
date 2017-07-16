.class Lorg/telegram/ui/ThemingActivity$3$5$1;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity$3$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ThemingActivity$3$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity$3$5;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/ThemingActivity$3$5;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3$5$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    iget-object v5, p0, Lorg/telegram/ui/ThemingActivity$3$5$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$5;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v5, v8}, Lorg/telegram/ui/ThemingActivity;->access$1002(Lorg/telegram/ui/ThemingActivity;Z)Z

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "theme"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v5, "selectedBackground"

    const v6, 0xf4241

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v5, "selectedColor"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/io/File;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "wallpaper.jpg"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "toFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/ThemingActivity$3$5$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$5;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/ui/ThemingActivity$3$5$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$5;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "ResetThemeToastText"

    const v7, 0x7f070537

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->updateAllColors()V

    iget-object v5, p0, Lorg/telegram/ui/ThemingActivity$3$5$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$5;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemingActivity;->access$100(Lorg/telegram/ui/ThemingActivity;)Lorg/telegram/ui/ThemingActivity$ListAdapter;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/ThemingActivity$3$5$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$5;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemingActivity;->access$100(Lorg/telegram/ui/ThemingActivity;)Lorg/telegram/ui/ThemingActivity$ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ThemingActivity$ListAdapter;->notifyDataSetChanged()V

    :cond_2
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/ThemingActivity$3$5$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$5;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemingActivity;->access$1100(Lorg/telegram/ui/ThemingActivity;)V

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ThemingActivity$3$5$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$5;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3$5;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v5, v5, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemingActivity;->access$1200(Lorg/telegram/ui/ThemingActivity;)V

    return-void
.end method
