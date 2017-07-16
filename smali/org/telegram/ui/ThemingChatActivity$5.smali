.class Lorg/telegram/ui/ThemingChatActivity$5;
.super Ljava/lang/Object;
.source "ThemingChatActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatActivity$5;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$5;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$7400(Lorg/telegram/ui/ThemingChatActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$5;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$7500(Lorg/telegram/ui/ThemingChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
