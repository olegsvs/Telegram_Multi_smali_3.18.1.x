.class Lorg/telegram/ui/PlusSettingsActivity$10;
.super Ljava/lang/Object;
.source "PlusSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusSettingsActivity;->createDialog(Landroid/app/AlertDialog$Builder;I)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusSettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusSettingsActivity;

    .prologue
    .line 1774
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$10;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 1777
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1778
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1779
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_1

    .line 1780
    const-string/jumbo v2, "showDSBtnUsers"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1781
    sput-boolean p3, Lorg/telegram/ui/ActionBar/Theme;->plusShowDSBtnUsers:Z

    .line 1795
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1797
    return-void

    .line 1782
    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 1783
    const-string/jumbo v2, "showDSBtnGroups"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1784
    sput-boolean p3, Lorg/telegram/ui/ActionBar/Theme;->plusShowDSBtnGroups:Z

    goto :goto_0

    .line 1785
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 1786
    const-string/jumbo v2, "showDSBtnSGroups"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1787
    sput-boolean p3, Lorg/telegram/ui/ActionBar/Theme;->plusShowDSBtnSGroups:Z

    goto :goto_0

    .line 1788
    :cond_3
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    .line 1789
    const-string/jumbo v2, "showDSBtnChannels"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1790
    sput-boolean p3, Lorg/telegram/ui/ActionBar/Theme;->plusShowDSBtnChannels:Z

    goto :goto_0

    .line 1791
    :cond_4
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 1792
    const-string/jumbo v2, "showDSBtnBots"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1793
    sput-boolean p3, Lorg/telegram/ui/ActionBar/Theme;->plusShowDSBtnBots:Z

    goto :goto_0
.end method
