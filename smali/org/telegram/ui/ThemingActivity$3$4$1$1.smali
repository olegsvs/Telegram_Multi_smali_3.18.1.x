.class Lorg/telegram/ui/ThemingActivity$3$4$1$1;
.super Ljava/lang/Object;
.source "ThemingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingActivity$3$4$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/ThemingActivity$3$4$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingActivity$3$4$1;)V
    .locals 0
    .param p1, "this$3"    # Lorg/telegram/ui/ThemingActivity$3$4$1;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingActivity$3$4$1$1;->this$3:Lorg/telegram/ui/ThemingActivity$3$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$3$4$1$1;->this$3:Lorg/telegram/ui/ThemingActivity$3$4$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3$4$1;->this$2:Lorg/telegram/ui/ThemingActivity$3$4;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3$4;->this$1:Lorg/telegram/ui/ThemingActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3;->this$0:Lorg/telegram/ui/ThemingActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ThemingActivity$3$4$1$1;->this$3:Lorg/telegram/ui/ThemingActivity$3$4$1;

    iget-object v1, v1, Lorg/telegram/ui/ThemingActivity$3$4$1;->val$xmlFile:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->loadPrefFromSD(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingActivity$3$4$1$1;->this$3:Lorg/telegram/ui/ThemingActivity$3$4$1;

    iget-object v0, v0, Lorg/telegram/ui/ThemingActivity$3$4$1;->val$wName:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->applyWallpaper(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/Utilities;->restartApp()V

    :cond_0
    return-void
.end method
