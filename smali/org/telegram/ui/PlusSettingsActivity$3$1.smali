.class Lorg/telegram/ui/PlusSettingsActivity$3$1;
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

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity$3;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PlusSettingsActivity$3;

    .prologue
    .line 390
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 393
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 394
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 395
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "emojiPopupSize"

    iget-object v3, p0, Lorg/telegram/ui/PlusSettingsActivity$3$1;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 397
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$1;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 400
    :cond_0
    return-void
.end method
