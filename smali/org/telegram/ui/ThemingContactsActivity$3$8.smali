.class Lorg/telegram/ui/ThemingContactsActivity$3$8;
.super Ljava/lang/Object;
.source "ThemingContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingContactsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingContactsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingContactsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingContactsActivity$3;

    .prologue
    .line 299
    iput-object p1, p0, Lorg/telegram/ui/ThemingContactsActivity$3$8;->this$1:Lorg/telegram/ui/ThemingContactsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 302
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    .local v0, "themePrefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "contactsHeaderGradient"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$3$8;->this$1:Lorg/telegram/ui/ThemingContactsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1200(Lorg/telegram/ui/ThemingContactsActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$3$8;->this$1:Lorg/telegram/ui/ThemingContactsActivity$3;

    iget-object v1, v1, Lorg/telegram/ui/ThemingContactsActivity$3;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1200(Lorg/telegram/ui/ThemingContactsActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 307
    :cond_0
    return-void
.end method
