.class Lorg/telegram/ui/PlusSettingsActivity$3$15$2;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$3$15;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/PlusSettingsActivity$3$15;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$3$15;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/ui/PlusSettingsActivity$3$15;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$15$2;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$15$2;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$15;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3$15;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$15$2;->this$2:Lorg/telegram/ui/PlusSettingsActivity$3$15;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3$15;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "AppWillRestart"

    const v3, 0x7f070079

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method
