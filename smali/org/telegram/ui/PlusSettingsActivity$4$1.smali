.class Lorg/telegram/ui/PlusSettingsActivity$4$1;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PlusSettingsActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PlusSettingsActivity$4;

    .prologue
    .line 1452
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$4$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1455
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$4$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$4;->val$name:Ljava/lang/String;

    const-string/jumbo v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 1456
    .local v0, "ext":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1457
    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1458
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$4$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$4;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$4$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$4;->val$xmlFile:Ljava/lang/String;

    const-string/jumbo v3, "plusconfig"

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->loadPrefFromSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1459
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$4$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$4;

    iget-boolean v1, v1, Lorg/telegram/ui/PlusSettingsActivity$4;->val$favExists:Z

    if-eqz v1, :cond_1

    .line 1460
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$4$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$4;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$4$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$4;->val$favFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$6900(Lorg/telegram/ui/PlusSettingsActivity;Ljava/lang/String;)V

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/Utilities;->restartApp()V

    goto :goto_0

    .line 1465
    :cond_2
    const-string/jumbo v1, "db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1466
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$4$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$4;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$4$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$4;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$4;->val$xmlFile:Ljava/lang/String;

    const-string/jumbo v3, "favourites"

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Utilities;->loadDBFromSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1467
    invoke-static {}, Lorg/telegram/messenger/Utilities;->restartApp()V

    goto :goto_0
.end method
