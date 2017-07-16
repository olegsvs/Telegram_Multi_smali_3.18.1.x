.class final Lorg/telegram/messenger/SendMessagesHelper$19;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$caption:Ljava/lang/String;

.field final synthetic val$dialog_id:J

.field final synthetic val$duration:J

.field final synthetic val$estimatedSize:J

.field final synthetic val$height:I

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field final synthetic val$videoPath:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIJLjava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .prologue
    .line 3662
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    iput-wide p5, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$duration:J

    iput p7, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$height:I

    iput p8, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$width:I

    iput-wide p9, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$estimatedSize:J

    iput-object p11, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/String;

    iput-object p12, p0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 3666
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    long-to-int v4, v4

    if-nez v4, :cond_5

    const/16 v17, 0x1

    .line 3668
    .local v17, "isEncrypted":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3669
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 3670
    .local v21, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 3671
    .local v18, "originalPath":Ljava/lang/String;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3672
    .local v23, "temp":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3673
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v4, :cond_1

    .line 3674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$duration:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, v5, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, v5, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3675
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v5, v5, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    if-ne v4, v5, :cond_1

    .line 3676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v5, v5, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3679
    :cond_1
    const/4 v14, 0x0

    .line 3680
    .local v14, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v17, :cond_2

    .line 3683
    :cond_2
    if-nez v14, :cond_3

    .line 3684
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 3685
    .local v24, "thumb":Landroid/graphics/Bitmap;
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v6, 0x37

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v0, v4, v5, v6, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v22

    .line 3686
    .local v22, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 3687
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v0, v22

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3688
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_6

    .line 3689
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3690
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 3694
    :goto_1
    const-string/jumbo v4, "video/mp4"

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3695
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3696
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 3697
    .local v12, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3698
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v4, :cond_a

    .line 3699
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 3700
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3701
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-static {v4, v12, v5}, Lorg/telegram/messenger/SendMessagesHelper;->access$1200(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    .line 3702
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v6, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    iput v6, v5, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iput v6, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 3703
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v6, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    iput v6, v5, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    iput v6, v4, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 3714
    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$estimatedSize:J

    long-to-int v4, v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "-2147483648_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3716
    .local v15, "fileName":Ljava/lang/String;
    sget v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3717
    new-instance v13, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v13, v4, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3718
    .local v13, "cacheFile":Ljava/io/File;
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3719
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    .line 3727
    .end local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v13    # "cacheFile":Ljava/io/File;
    .end local v15    # "fileName":Ljava/lang/String;
    .end local v22    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v24    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    :goto_3
    move-object/from16 v25, v14

    .line 3728
    .local v25, "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v19, v18

    .line 3729
    .local v19, "originalPathFinal":Ljava/lang/String;
    move-object/from16 v16, v21

    .line 3730
    .local v16, "finalPath":Ljava/lang/String;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 3731
    .local v20, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/String;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    .line 3732
    if-eqz v18, :cond_4

    .line 3733
    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3735
    :cond_4
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$19$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    move-object/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper$19$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$19;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3744
    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v16    # "finalPath":Ljava/lang/String;
    .end local v18    # "originalPath":Ljava/lang/String;
    .end local v19    # "originalPathFinal":Ljava/lang/String;
    .end local v20    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "path":Ljava/lang/String;
    .end local v23    # "temp":Ljava/io/File;
    .end local v25    # "videoFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    :goto_4
    return-void

    .line 3666
    .end local v17    # "isEncrypted":Z
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 3692
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v17    # "isEncrypted":Z
    .restart local v18    # "originalPath":Ljava/lang/String;
    .restart local v21    # "path":Ljava/lang/String;
    .restart local v22    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v23    # "temp":Ljava/io/File;
    .restart local v24    # "thumb":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto/16 :goto_1

    .line 3705
    .restart local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    :cond_7
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$duration:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 3706
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_9

    .line 3707
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$height:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3708
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$width:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    goto/16 :goto_2

    .line 3710
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$width:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3711
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$height:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    goto/16 :goto_2

    .line 3721
    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3722
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3724
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v12, v5}, Lorg/telegram/messenger/SendMessagesHelper;->access$1200(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    goto/16 :goto_3

    .line 3742
    .end local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v18    # "originalPath":Ljava/lang/String;
    .end local v21    # "path":Ljava/lang/String;
    .end local v22    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v23    # "temp":Ljava/io/File;
    .end local v24    # "thumb":Landroid/graphics/Bitmap;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$videoPath:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$dialog_id:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$19;->val$caption:Ljava/lang/String;

    invoke-static/range {v4 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    goto :goto_4
.end method
