.class Lorg/telegram/ui/VideoEditorActivity$2;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z
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
    .line 387
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 390
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$1502(Lorg/telegram/ui/VideoEditorActivity;Z)Z

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/VideoEditorActivity;->access$302(Lorg/telegram/ui/VideoEditorActivity;I)I

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$2;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method
