.class Lorg/telegram/ui/ThemingChatsActivity$3$34;
.super Ljava/lang/Object;
.source "ThemingChatsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingChatsActivity$3;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatsActivity$3;Lorg/telegram/ui/Components/NumberPicker;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingChatsActivity$3;

    .prologue
    .line 840
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatsActivity$3$34;->this$1:Lorg/telegram/ui/ThemingChatsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ThemingChatsActivity$3$34;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput-object p3, p0, Lorg/telegram/ui/ThemingChatsActivity$3$34;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 843
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$3$34;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsTextSize:I

    if-eq v1, v2, :cond_0

    .line 844
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$3$34;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    sput v1, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    sput v1, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsTextSize:I

    .line 845
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$3$34;->this$1:Lorg/telegram/ui/ThemingChatsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatsActivity$3$34;->val$key:Ljava/lang/String;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsTextSize:I

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ThemingChatsActivity;->access$300(Lorg/telegram/ui/ThemingChatsActivity;Ljava/lang/String;I)V

    .line 846
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "plusconfig"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 847
    .local v0, "editorPlus":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "tabsTextSize"

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsTextSize:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 848
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 849
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 851
    .end local v0    # "editorPlus":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
