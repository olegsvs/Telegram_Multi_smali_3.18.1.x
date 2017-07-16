.class Lorg/telegram/ui/ThemingChatsActivity$5;
.super Ljava/lang/Object;
.source "ThemingChatsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatsActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingChatsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingChatsActivity;

    .prologue
    .line 1205
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatsActivity$5;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$5;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$5400(Lorg/telegram/ui/ThemingChatsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatsActivity$5;->this$0:Lorg/telegram/ui/ThemingChatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatsActivity;->access$5500(Lorg/telegram/ui/ThemingChatsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1212
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
