.class Lorg/telegram/ui/SettingsActivity$5$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity$5;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SettingsActivity$5;

.field final synthetic val$showEmojiBtn:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity$5;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/SettingsActivity$5;

    .prologue
    .line 693
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$5$2;->this$1:Lorg/telegram/ui/SettingsActivity$5;

    iput-boolean p2, p0, Lorg/telegram/ui/SettingsActivity$5$2;->val$showEmojiBtn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 696
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$5$2;->this$1:Lorg/telegram/ui/SettingsActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$5$2;->this$1:Lorg/telegram/ui/SettingsActivity$5;

    iget-object v1, v1, Lorg/telegram/ui/SettingsActivity$5;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Show emoji button: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/ui/SettingsActivity$5$2;->val$showEmojiBtn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 698
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 700
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method
