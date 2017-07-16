.class Lorg/telegram/ui/ThemingChatsActivity$3$5;
.super Ljava/lang/Object;
.source "ThemingChatsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


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


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatsActivity$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingChatsActivity$3;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatsActivity$3$5;->this$1:Lorg/telegram/ui/ThemingChatsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ThemingChatsActivity$3$5;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    sput p1, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabIconColor:I

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatsActivity$3$5;->this$1:Lorg/telegram/ui/ThemingChatsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ThemingChatsActivity$3;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatsActivity$3$5;->val$key:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lorg/telegram/ui/ThemingChatsActivity;->access$300(Lorg/telegram/ui/ThemingChatsActivity;Ljava/lang/String;I)V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "chatsHeaderTabUnselectedIconColor"

    const-string/jumbo v2, "chatsHeaderTabIconColor"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    const v4, 0x3eb33333    # 0.35f

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->getIntAlphaColor(Ljava/lang/String;IF)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderTabUnselectedIconColor:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
