.class Lorg/telegram/ui/VideoEditorActivity$7;
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
    .line 683
    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$000(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 687
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 689
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/telegram/ui/VideoEditorActivity;->access$102(Lorg/telegram/ui/VideoEditorActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2600(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2600(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$1100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$1000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_6

    .line 702
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$2700(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$2800(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$2900(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v8}, Lorg/telegram/ui/VideoEditorActivity;->access$2100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v9}, Lorg/telegram/ui/VideoEditorActivity;->access$1400(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v10}, Lorg/telegram/ui/VideoEditorActivity;->access$2000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v11}, Lorg/telegram/ui/VideoEditorActivity;->access$2100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v12}, Lorg/telegram/ui/VideoEditorActivity;->access$1400(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$2500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, -0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v14}, Lorg/telegram/ui/VideoEditorActivity;->access$3100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/VideoEditorActivity;->access$3200(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/VideoEditorActivity;->access$3300(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/CharSequence;

    move-result-object v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/VideoEditorActivity;->access$3300(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_2
    invoke-interface/range {v2 .. v18}, Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;->didFinishEditVideo(Ljava/lang/String;JJIIIIIIJJLjava/lang/String;)V

    .line 711
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/VideoEditorActivity;->finishFragment()V

    .line 712
    return-void

    .line 692
    :catch_0
    move-exception v19

    .line 693
    .local v19, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 696
    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 702
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$3000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v13

    goto :goto_1

    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 704
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/ui/VideoEditorActivity;->access$1102(Lorg/telegram/ui/VideoEditorActivity;I)I

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$3400(Lorg/telegram/ui/VideoEditorActivity;)V

    .line 708
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$2400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$2700(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v4}, Lorg/telegram/ui/VideoEditorActivity;->access$2800(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v6}, Lorg/telegram/ui/VideoEditorActivity;->access$2900(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v8}, Lorg/telegram/ui/VideoEditorActivity;->access$3500(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v9}, Lorg/telegram/ui/VideoEditorActivity;->access$3600(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v10}, Lorg/telegram/ui/VideoEditorActivity;->access$2000(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v11}, Lorg/telegram/ui/VideoEditorActivity;->access$2100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v12}, Lorg/telegram/ui/VideoEditorActivity;->access$1400(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$2500(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, -0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v14}, Lorg/telegram/ui/VideoEditorActivity;->access$3100(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/VideoEditorActivity;->access$3200(Lorg/telegram/ui/VideoEditorActivity;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/VideoEditorActivity;->access$3300(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/CharSequence;

    move-result-object v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/VideoEditorActivity;->access$3300(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_5
    invoke-interface/range {v2 .. v18}, Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;->didFinishEditVideo(Ljava/lang/String;JJIIIIIIJJLjava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/VideoEditorActivity$7;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-static {v13}, Lorg/telegram/ui/VideoEditorActivity;->access$3700(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v13

    goto :goto_4

    :cond_9
    const/16 v18, 0x0

    goto :goto_5
.end method
