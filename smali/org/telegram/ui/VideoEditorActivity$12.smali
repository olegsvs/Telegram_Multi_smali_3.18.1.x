.class Lorg/telegram/ui/VideoEditorActivity$12;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VideoEditorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/VideoEditorActivity;

    .prologue
    .line 848
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekBarDrag(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 851
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 852
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result p1

    .line 853
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 858
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 867
    :cond_1
    :goto_1
    return-void

    .line 854
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 855
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result p1

    .line 856
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    goto :goto_0

    .line 862
    :cond_3
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 863
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$12;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1, p1}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
