.class Lorg/telegram/ui/VideoEditorActivity$14;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 923
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 926
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4400(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 930
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 931
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02028e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 933
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 940
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    .line 941
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$4200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 942
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoSeekBarView;->getProgress()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 943
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/VideoEditorActivity;->access$4202(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 945
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$14$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VideoEditorActivity$14$1;-><init>(Lorg/telegram/ui/VideoEditorActivity$14;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 965
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/VideoEditorActivity$14$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VideoEditorActivity$14$2;-><init>(Lorg/telegram/ui/VideoEditorActivity$14;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 976
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 978
    :try_start_2
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 982
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$000(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 983
    :try_start_4
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$900(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_4

    .line 984
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$4600(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v3}, Lorg/telegram/ui/VideoEditorActivity;->access$902(Lorg/telegram/ui/VideoEditorActivity;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 985
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$900(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 987
    :cond_4
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 988
    :catch_1
    move-exception v0

    .line 989
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 979
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 980
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method
