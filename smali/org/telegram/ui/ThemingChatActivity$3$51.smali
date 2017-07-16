.class Lorg/telegram/ui/ThemingChatActivity$3$51;
.super Ljava/lang/Object;
.source "ThemingChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingChatActivity$3;

.field final synthetic val$currentValue:I

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatActivity$3;Lorg/telegram/ui/Components/NumberPicker;I)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingChatActivity$3;

    .prologue
    .line 1267
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatActivity$3$51;->this$1:Lorg/telegram/ui/ThemingChatActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ThemingChatActivity$3$51;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput p3, p0, Lorg/telegram/ui/ThemingChatActivity$3$51;->val$currentValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1270
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$3$51;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/ThemingChatActivity$3$51;->val$currentValue:I

    if-eq v2, v3, :cond_0

    .line 1271
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$3$51;->this$1:Lorg/telegram/ui/ThemingChatActivity$3;

    iget-object v2, v2, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v3, "chatTextSize"

    iget-object v4, p0, Lorg/telegram/ui/ThemingChatActivity$3$51;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ThemingChatActivity;->access$300(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;I)V

    .line 1272
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1273
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1274
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "fons_size"

    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity$3$51;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1275
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity$3$51;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 1276
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1278
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
