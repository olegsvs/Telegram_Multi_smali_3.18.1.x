.class Lorg/telegram/messenger/MediaController$5$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MediaController$5;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController$5;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MediaController$5;

    .prologue
    .line 793
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 796
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2400(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2500(Lorg/telegram/messenger/MediaController;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 798
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2600(Lorg/telegram/messenger/MediaController;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 799
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2610(Lorg/telegram/messenger/MediaController;)I

    .line 825
    :cond_1
    :goto_0
    return-void

    .line 804
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 805
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 806
    .local v1, "progress":I
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2300(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 807
    .local v2, "value":F
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)I

    move-result v3

    if-le v1, v3, :cond_1

    .line 817
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3, v1}, Lorg/telegram/messenger/MediaController;->access$2702(Lorg/telegram/messenger/MediaController;I)I

    .line 818
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v2, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 819
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    iput v4, v3, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 820
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v7, v7, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    .end local v1    # "progress":I
    .end local v2    # "value":F
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 811
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2800(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    long-to-float v3, v4

    const/high16 v4, 0x42400000    # 48.0f

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 812
    .restart local v1    # "progress":I
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2800(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    long-to-float v3, v4

    iget-object v4, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v4}, Lorg/telegram/messenger/MediaController;->access$2900(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 813
    .restart local v2    # "value":F
    iget-object v3, p0, Lorg/telegram/messenger/MediaController$5$1;->this$1:Lorg/telegram/messenger/MediaController$5;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2700(Lorg/telegram/messenger/MediaController;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-ne v1, v3, :cond_3

    goto/16 :goto_0
.end method
