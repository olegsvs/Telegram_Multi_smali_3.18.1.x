.class Lorg/telegram/ui/PhotoViewer$46$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$46;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$46;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$46;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$46;

    .prologue
    .line 3111
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 3119
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->init()V

    .line 3120
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$10902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3121
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget v1, v1, Lorg/telegram/ui/PhotoViewer$46;->val$mode:I

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$9102(Lorg/telegram/ui/PhotoViewer;I)I

    .line 3122
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$11102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3123
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$11202(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3124
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$11302(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3125
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$3602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3126
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$3900(Lorg/telegram/ui/PhotoViewer;F)V

    .line 3127
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$46$1;->this$1:Lorg/telegram/ui/PhotoViewer$46;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$46;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 3128
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3115
    return-void
.end method
