.class Lorg/telegram/ui/PhotoViewer$36$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$36;->needChangePanelVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$36;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$36;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$36;

    .prologue
    .line 2351
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$36$2;->this$1:Lorg/telegram/ui/PhotoViewer$36;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2354
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$36$2;->this$1:Lorg/telegram/ui/PhotoViewer$36;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10000(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$36$2;->this$1:Lorg/telegram/ui/PhotoViewer$36;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10000(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2355
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$36$2;->this$1:Lorg/telegram/ui/PhotoViewer$36;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2356
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$36$2;->this$1:Lorg/telegram/ui/PhotoViewer$36;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$36;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$10002(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2358
    :cond_0
    return-void
.end method
