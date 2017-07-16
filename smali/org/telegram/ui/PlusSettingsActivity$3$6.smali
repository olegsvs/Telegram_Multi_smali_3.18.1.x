.class Lorg/telegram/ui/PlusSettingsActivity$3$6;
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
    .line 801
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$3$6;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/PlusSettingsActivity$3$6;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    .line 804
    iget-object v3, p0, Lorg/telegram/ui/PlusSettingsActivity$3$6;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v3

    sput v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsTextSize:I

    sput v3, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    .line 805
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 806
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 807
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "tabsTextSize"

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 808
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 809
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 810
    .local v1, "editorTheme":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "chatsTabsTextSize"

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 811
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 812
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 813
    iget-object v3, p0, Lorg/telegram/ui/PlusSettingsActivity$3$6;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 814
    iget-object v3, p0, Lorg/telegram/ui/PlusSettingsActivity$3$6;->this$1:Lorg/telegram/ui/PlusSettingsActivity$3;

    iget-object v3, v3, Lorg/telegram/ui/PlusSettingsActivity$3;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PlusSettingsActivity;->access$300(Lorg/telegram/ui/PlusSettingsActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 816
    :cond_0
    return-void
.end method
