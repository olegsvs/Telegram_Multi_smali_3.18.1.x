.class Lorg/telegram/ui/VideoEditorActivity$14$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VideoEditorActivity$14;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/VideoEditorActivity$14;

    .prologue
    .line 945
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 948
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    const/4 v2, 0x0

    .line 950
    .local v2, "startTime":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 951
    .local v0, "endTime":F
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v4, v4, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    sub-float v5, v0, v2

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    .line 963
    :goto_0
    return-void

    .line 953
    .end local v0    # "endTime":F
    .end local v2    # "startTime":F
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v4, v4, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v4

    mul-float v2, v3, v4

    .line 954
    .restart local v2    # "startTime":F
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v4, v4, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v4

    mul-float v0, v3, v4

    .line 955
    .restart local v0    # "endTime":F
    cmpl-float v3, v2, v0

    if-nez v3, :cond_1

    .line 956
    const v3, 0x3c23d70a    # 0.01f

    sub-float v2, v0, v3

    .line 958
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v4, v4, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    sub-float v5, v0, v2

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    .line 959
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v4, v4, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v4

    sub-float v1, v3, v4

    .line 960
    .local v1, "lrdiff":F
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v4, v4, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v5, v5, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v5}, Lorg/telegram/ui/VideoEditorActivity;->access$600(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    .line 961
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v4, v4, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$600(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    goto/16 :goto_0
.end method
