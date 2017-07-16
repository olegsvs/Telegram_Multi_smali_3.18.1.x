.class Lorg/telegram/ui/PlusChatsStatsActivity$9;
.super Ljava/lang/Object;
.source "PlusChatsStatsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PlusChatsStatsActivity;->fixLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PlusChatsStatsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PlusChatsStatsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PlusChatsStatsActivity;

    .prologue
    .line 779
    iput-object p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity$9;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$9;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3100(Lorg/telegram/ui/PlusChatsStatsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$9;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3200(Lorg/telegram/ui/PlusChatsStatsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 785
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
