.class final Lorg/telegram/messenger/SendMessagesHelper$18;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$captions:Ljava/util/ArrayList;

.field final synthetic val$dialog_id:J

.field final synthetic val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

.field final synthetic val$masks:Ljava/util/ArrayList;

.field final synthetic val$pathsCopy:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$urisCopy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .locals 1

    .prologue
    .line 3475
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$pathsCopy:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$urisCopy:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$masks:Ljava/util/ArrayList;

    iput-object p7, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    iput-object p8, p0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 3478
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$dialog_id:J

    long-to-int v4, v4

    if-nez v4, :cond_5

    const/16 v17, 0x1

    .line 3480
    .local v17, "isEncrypted":Z
    :goto_0
    const/16 v23, 0x0

    .line 3481
    .local v23, "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v25, 0x0

    .line 3482
    .local v25, "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v24, 0x0

    .line 3483
    .local v24, "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3484
    .local v15, "count":I
    :goto_1
    const/16 v20, 0x0

    .line 3485
    .local v20, "path":Ljava/lang/String;
    const/16 v29, 0x0

    .line 3486
    .local v29, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 3487
    .local v7, "extension":Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "a":I
    :goto_2
    if-ge v12, v15, :cond_1a

    .line 3488
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 3489
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$pathsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "path":Ljava/lang/String;
    check-cast v20, Ljava/lang/String;

    .line 3494
    .restart local v20    # "path":Ljava/lang/String;
    :cond_0
    :goto_3
    move-object/from16 v18, v20

    .line 3495
    .local v18, "originalPath":Ljava/lang/String;
    move-object/from16 v28, v20

    .line 3496
    .local v28, "tempPath":Ljava/lang/String;
    if-nez v28, :cond_1

    if-eqz v29, :cond_1

    .line 3497
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v28

    .line 3498
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3501
    :cond_1
    const/16 v16, 0x0

    .line 3502
    .local v16, "isDocument":Z
    if-eqz v28, :cond_9

    const-string/jumbo v4, ".gif"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, ".webp"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3503
    :cond_2
    const-string/jumbo v4, ".gif"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3504
    const-string/jumbo v7, "gif"

    .line 3508
    :goto_4
    const/16 v16, 0x1

    .line 3523
    :cond_3
    :goto_5
    if-eqz v16, :cond_c

    .line 3524
    if-nez v23, :cond_4

    .line 3525
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 3526
    .restart local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/ArrayList;

    .end local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 3527
    .restart local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 3529
    .restart local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3530
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3531
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_6
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3487
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 3478
    .end local v7    # "extension":Ljava/lang/String;
    .end local v12    # "a":I
    .end local v15    # "count":I
    .end local v16    # "isDocument":Z
    .end local v17    # "isEncrypted":Z
    .end local v18    # "originalPath":Ljava/lang/String;
    .end local v20    # "path":Ljava/lang/String;
    .end local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28    # "tempPath":Ljava/lang/String;
    .end local v29    # "uri":Landroid/net/Uri;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 3483
    .restart local v17    # "isEncrypted":Z
    .restart local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    goto/16 :goto_1

    .line 3490
    .restart local v7    # "extension":Ljava/lang/String;
    .restart local v12    # "a":I
    .restart local v15    # "count":I
    .restart local v20    # "path":Ljava/lang/String;
    .restart local v29    # "uri":Landroid/net/Uri;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3491
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$urisCopy:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "uri":Landroid/net/Uri;
    check-cast v29, Landroid/net/Uri;

    .restart local v29    # "uri":Landroid/net/Uri;
    goto/16 :goto_3

    .line 3506
    .restart local v16    # "isDocument":Z
    .restart local v18    # "originalPath":Ljava/lang/String;
    .restart local v28    # "tempPath":Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "webp"

    goto :goto_4

    .line 3509
    :cond_9
    if-nez v28, :cond_3

    if-eqz v29, :cond_3

    .line 3510
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->isGif(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3511
    const/16 v16, 0x1

    .line 3512
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3513
    const-string/jumbo v4, "gif"

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3514
    const-string/jumbo v7, "gif"

    goto :goto_5

    .line 3515
    :cond_a
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/MediaController;->isWebp(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3516
    const/16 v16, 0x1

    .line 3517
    invoke-virtual/range {v29 .. v29}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3518
    const-string/jumbo v4, "webp"

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3519
    const-string/jumbo v7, "webp"

    goto/16 :goto_5

    .line 3531
    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    .line 3533
    :cond_c
    if-eqz v28, :cond_10

    .line 3534
    new-instance v27, Ljava/io/File;

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3535
    .local v27, "temp":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3539
    .end local v27    # "temp":Ljava/io/File;
    :goto_8
    const/16 v21, 0x0

    .line 3540
    .local v21, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-nez v17, :cond_d

    .line 3541
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    if-nez v17, :cond_11

    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v21

    .end local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v21, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .line 3542
    .restart local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-nez v21, :cond_d

    if-eqz v29, :cond_d

    .line 3543
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-nez v17, :cond_12

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v21

    .end local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v21, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .line 3546
    .restart local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_d
    if-nez v21, :cond_e

    .line 3547
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v21

    .line 3549
    :cond_e
    if-eqz v21, :cond_17

    .line 3550
    move-object/from16 v22, v21

    .line 3551
    .local v22, "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 3552
    .local v19, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    if-eqz v4, :cond_f

    .line 3553
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    .line 3555
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$masks:Ljava/util/ArrayList;

    if-eqz v4, :cond_15

    .line 3556
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$masks:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 3557
    .local v13, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    if-eqz v13, :cond_13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, v21

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->has_stickers:Z

    if-eqz v4, :cond_15

    .line 3558
    new-instance v26, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x14

    add-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 3559
    .local v26, "serializedData":Lorg/telegram/tgnet/SerializedData;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 3560
    const/4 v14, 0x0

    .local v14, "b":I
    :goto_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_14

    .line 3561
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/telegram/tgnet/TLRPC$InputDocument;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 3560
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 3537
    .end local v13    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    .end local v14    # "b":I
    .end local v19    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v22    # "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v26    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 3541
    .restart local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_11
    const/4 v4, 0x3

    goto/16 :goto_9

    .line 3543
    :cond_12
    const/4 v4, 0x3

    goto/16 :goto_a

    .line 3557
    .restart local v13    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    .restart local v19    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_13
    const/4 v4, 0x0

    goto :goto_b

    .line 3563
    .restart local v14    # "b":I
    .restart local v26    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_14
    const-string/jumbo v4, "masks"

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3566
    .end local v13    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    .end local v14    # "b":I
    .end local v26    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_15
    if-eqz v18, :cond_16

    .line 3567
    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3569
    :cond_16
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$18$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$18$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$18;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 3576
    .end local v19    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_17
    if-nez v23, :cond_18

    .line 3577
    new-instance v23, Ljava/util/ArrayList;

    .end local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 3578
    .restart local v23    # "sendAsDocuments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/ArrayList;

    .end local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 3579
    .restart local v25    # "sendAsDocumentsOriginal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 3581
    .restart local v24    # "sendAsDocumentsCaptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3582
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3583
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$captions:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_d
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_19
    const/4 v4, 0x0

    goto :goto_d

    .line 3587
    .end local v16    # "isDocument":Z
    .end local v18    # "originalPath":Ljava/lang/String;
    .end local v21    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v28    # "tempPath":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    if-eqz v4, :cond_1b

    .line 3588
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$inputContent:Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    invoke-virtual {v4}, Landroid/support/v13/view/inputmethod/InputContentInfoCompat;->releasePermission()V

    .line 3590
    :cond_1b
    if-eqz v23, :cond_1c

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 3591
    const/4 v12, 0x0

    :goto_e
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_1c

    .line 3592
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$dialog_id:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$18;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static/range {v4 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    .line 3591
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 3595
    :cond_1c
    return-void
.end method
