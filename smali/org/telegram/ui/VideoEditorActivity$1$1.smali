.class Lorg/telegram/ui/VideoEditorActivity$1$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VideoEditorActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/VideoEditorActivity$1;

    .prologue
    .line 173
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 176
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 180
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    const/4 v5, 0x0

    .line 182
    .local v5, "startTime":F
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$300(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v6

    int-to-float v1, v6

    .line 183
    .local v1, "endTime":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 189
    .local v2, "lrdiff":F
    :goto_0
    cmpl-float v6, v5, v1

    if-nez v6, :cond_0

    .line 190
    const v6, 0x3c23d70a    # 0.01f

    sub-float v5, v1, v6

    .line 192
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    sub-float v7, v1, v5

    div-float v4, v6, v7

    .line 193
    .local v4, "progress":F
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 194
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    mul-float v7, v2, v4

    add-float v4, v6, v7

    .line 196
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$600(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    .line 197
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 198
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    .line 200
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    .line 201
    .local v3, "position":I
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v1

    if-ltz v6, :cond_3

    .line 203
    :try_start_0
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->pause()V

    .line 204
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$800(Lorg/telegram/ui/VideoEditorActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :try_start_1
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    .end local v1    # "endTime":F
    .end local v2    # "lrdiff":F
    .end local v3    # "position":I
    .end local v4    # "progress":F
    .end local v5    # "startTime":F
    :cond_3
    :goto_1
    return-void

    .line 185
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v7, v7, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v7}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v7

    mul-float v5, v6, v7

    .line 186
    .restart local v5    # "startTime":F
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v7, v7, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v7}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v7

    mul-float v1, v6, v7

    .line 187
    .restart local v1    # "endTime":F
    iget-object v6, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v6, v6, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v7, v7, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v7}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v7

    sub-float v2, v6, v7

    .restart local v2    # "lrdiff":F
    goto/16 :goto_0

    .line 207
    .restart local v3    # "position":I
    .restart local v4    # "progress":F
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 211
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
