.class Lorg/telegram/ui/VideoEditorActivity$11;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;


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
    .line 794
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftProgressChanged(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 797
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 802
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 803
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02028e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 805
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 810
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 811
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 815
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/VideoEditorActivity;->access$4202(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 816
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 817
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4300(Lorg/telegram/ui/VideoEditorActivity;)V

    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 812
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 813
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onRifhtProgressChanged(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 822
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 827
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 828
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02028e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 830
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 835
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 836
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 840
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/VideoEditorActivity;->access$4202(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 841
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    .line 842
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$11;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4300(Lorg/telegram/ui/VideoEditorActivity;)V

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 837
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 838
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
