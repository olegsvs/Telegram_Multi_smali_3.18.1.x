.class Lorg/telegram/ui/PlusSettingsActivity$3$13$1;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$3$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/PlusSettingsActivity$3$13;

.field final synthetic val$pName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$3$13;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/PlusSettingsActivity$3$13;

    .prologue
    .line 1171
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$13;

    iput-object p2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13$1;->val$pName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1174
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$13;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3$13;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$6702(Lorg/telegram/ui/PlusSettingsActivity;Z)Z

    .line 1175
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$13;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3$13;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1177
    const-string/jumbo v0, "/Telegram"

    .line 1178
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$13;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3$13;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "plusconfig.xml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13$1;->val$pName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3, v5}, Lorg/telegram/messenger/Utilities;->savePreferencesToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1179
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13$1;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$13;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3$13;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "favourites"

    const-string/jumbo v3, "favorites.db"

    invoke-static {v1, v0, v2, v3, v5}, Lorg/telegram/messenger/Utilities;->saveDBToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1181
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method
