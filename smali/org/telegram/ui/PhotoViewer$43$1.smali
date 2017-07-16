.class Lorg/telegram/ui/PhotoViewer$43$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$43;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$43;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$43;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoViewer$43;

    .prologue
    .line 2998
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

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

    .line 3007
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoCropView;->onAppeared()V

    .line 3009
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$10902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3010
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget v1, v1, Lorg/telegram/ui/PhotoViewer$43;->val$mode:I

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$9102(Lorg/telegram/ui/PhotoViewer;I)I

    .line 3011
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$11102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3012
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$11202(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3013
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/PhotoViewer;->access$11302(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3014
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v3}, Lorg/telegram/ui/PhotoViewer;->access$3602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 3015
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v1, v1, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$3600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$3900(Lorg/telegram/ui/PhotoViewer;F)V

    .line 3016
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    .line 3017
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 3001
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$10600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    .line 3002
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$43$1;->this$1:Lorg/telegram/ui/PhotoViewer$43;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$43;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    .line 3003
    return-void
.end method
