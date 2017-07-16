.class Lorg/telegram/messenger/MediaController$17;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$dialog_id:J

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MediaController;JLorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 2592
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    iput-wide p2, p0, Lorg/telegram/messenger/MediaController$17;->val$dialog_id:J

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$17;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2595
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2596
    new-instance v0, Lorg/telegram/messenger/MediaController$17$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$17$1;-><init>(Lorg/telegram/messenger/MediaController$17;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2670
    :goto_0
    return-void

    .line 2606
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$2002(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2607
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    const/high16 v1, -0x80000000

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 2608
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    int-to-long v2, v1

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 2609
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->user_id:I

    .line 2610
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    const-string/jumbo v1, "audio/ogg"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 2611
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2612
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v1, "s"

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 2613
    sget v0, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 2614
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2616
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v3}, Lorg/telegram/messenger/MediaController;->access$2000(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$5202(Lorg/telegram/messenger/MediaController;Ljava/io/File;)Ljava/io/File;

    .line 2619
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$5300(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2620
    new-instance v0, Lorg/telegram/messenger/MediaController$17$2;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$17$2;-><init>(Lorg/telegram/messenger/MediaController$17;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2639
    :catch_0
    move-exception v6

    .line 2640
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2641
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0, v9}, Lorg/telegram/messenger/MediaController;->access$2002(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2642
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5600(Lorg/telegram/messenger/MediaController;)V

    .line 2643
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$5200(Lorg/telegram/messenger/MediaController;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2644
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0, v9}, Lorg/telegram/messenger/MediaController;->access$5202(Lorg/telegram/messenger/MediaController;Ljava/io/File;)Ljava/io/File;

    .line 2646
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 2647
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$002(Lorg/telegram/messenger/MediaController;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2652
    :goto_1
    new-instance v0, Lorg/telegram/messenger/MediaController$17$3;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$17$3;-><init>(Lorg/telegram/messenger/MediaController$17;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2630
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v8, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v5}, Lorg/telegram/messenger/MediaController;->access$200(Lorg/telegram/messenger/MediaController;)I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-static {v8, v0}, Lorg/telegram/messenger/MediaController;->access$002(Lorg/telegram/messenger/MediaController;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 2631
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MediaController;->access$1102(Lorg/telegram/messenger/MediaController;J)J

    .line 2632
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MediaController;->access$702(Lorg/telegram/messenger/MediaController;J)J

    .line 2633
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MediaController;->access$302(Lorg/telegram/messenger/MediaController;J)J

    .line 2634
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    iget-wide v2, p0, Lorg/telegram/messenger/MediaController$17;->val$dialog_id:J

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/MediaController;->access$5402(Lorg/telegram/messenger/MediaController;J)J

    .line 2635
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$17;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->access$5502(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    .line 2636
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2638
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2662
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController$17;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->access$1000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2663
    new-instance v0, Lorg/telegram/messenger/MediaController$17$4;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MediaController$17$4;-><init>(Lorg/telegram/messenger/MediaController$17;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2648
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 2649
    .local v7, "e2":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
