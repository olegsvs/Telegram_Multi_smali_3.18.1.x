.class Lorg/telegram/ui/PlusSettingsActivity$3$13;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

.field final synthetic val$userInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$3;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PlusSettingsActivity$3;

    .prologue
    .line 1159
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13;->val$userInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x1

    .line 1162
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6700(Lorg/telegram/ui/PlusSettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1183
    :goto_0
    return-void

    .line 1165
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13;->val$userInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1166
    .local v0, "pName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 1167
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/PlusSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "NameTooShort"

    const v3, 0x7f0703b4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1170
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$13;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$6702(Lorg/telegram/ui/PlusSettingsActivity;Z)Z

    .line 1171
    new-instance v1, Lorg/telegram/ui/PlusSettingsActivity$3$13$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/PlusSettingsActivity$3$13$1;-><init>(Lorg/telegram/ui/PlusSettingsActivity$3$13;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
