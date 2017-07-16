.class Lorg/telegram/ui/SettingsActivity$13;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 1239
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$13;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$13;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$4700(Lorg/telegram/ui/SettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$13;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$4000(Lorg/telegram/ui/SettingsActivity;)V

    .line 1244
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$13;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$4800(Lorg/telegram/ui/SettingsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1246
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
