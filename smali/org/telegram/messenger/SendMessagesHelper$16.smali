.class final Lorg/telegram/messenger/SendMessagesHelper$16;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotosSearch(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog_id:J

.field final synthetic val$photos:Ljava/util/ArrayList;

.field final synthetic val$reply_to_msg:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(JLjava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .prologue
    .line 3271
    iput-wide p1, p0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$dialog_id:J

    iput-object p3, p0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$photos:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$reply_to_msg:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 3274
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$dialog_id:J

    long-to-int v4, v4

    if-nez v4, :cond_7

    const/16 v18, 0x1

    .line 3275
    .local v18, "isEncrypted":Z
    :goto_0
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_17

    .line 3276
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$16;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 3277
    .local v8, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 3278
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3279
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 3281
    .local v14, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_8

    .line 3282
    iget-object v14, v8, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3283
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const/4 v4, 0x1

    invoke-static {v14, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v12

    .line 3294
    .local v12, "cacheFile":Ljava/io/File;
    :goto_2
    if-nez v14, :cond_3

    .line 3295
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3296
    const-string/jumbo v4, "url"

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3298
    :cond_0
    const/16 v26, 0x0

    .line 3299
    .local v26, "thumbFile":Ljava/io/File;
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 3300
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const-wide/16 v4, 0x0

    iput-wide v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 3301
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 3302
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 3303
    .local v17, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    const-string/jumbo v4, "animation.gif"

    move-object/from16 v0, v17

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3304
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3305
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3306
    const/4 v4, 0x0

    iput v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 3307
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3308
    const-string/jumbo v4, "video/mp4"

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3309
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3313
    :goto_3
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3314
    move-object/from16 v26, v12

    .line 3318
    :goto_4
    if-nez v26, :cond_1

    .line 3319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string/jumbo v27, "jpg"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 3320
    .local v25, "thumb":Ljava/lang/String;
    new-instance v26, Ljava/io/File;

    .end local v26    # "thumbFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3321
    .restart local v26    # "thumbFile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3322
    const/16 v26, 0x0

    .line 3325
    .end local v25    # "thumb":Ljava/lang/String;
    :cond_1
    if-eqz v26, :cond_2

    .line 3328
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3329
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 3333
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    :goto_5
    if-eqz v11, :cond_2

    .line 3334
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/16 v27, 0x37

    move/from16 v0, v27

    move/from16 v1, v18

    invoke-static {v11, v4, v5, v0, v1}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v4

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3335
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3341
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_6
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_3

    .line 3342
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3343
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 3344
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 3345
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v5, 0x0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 3346
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3347
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "x"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 3351
    .end local v17    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    .end local v26    # "thumbFile":Ljava/io/File;
    :cond_3
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 3352
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    .line 3354
    :cond_4
    move-object v15, v14

    .line 3355
    .local v15, "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 3356
    .local v21, "originalPathFinal":Ljava/lang/String;
    if-nez v12, :cond_e

    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3357
    .local v22, "pathFinal":Ljava/lang/String;
    :goto_7
    if-eqz v9, :cond_5

    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 3358
    const-string/jumbo v4, "originalPath"

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3360
    :cond_5
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$16$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v15, v1, v9}, Lorg/telegram/messenger/SendMessagesHelper$16$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper$16;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3275
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "cacheFile":Ljava/io/File;
    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v15    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v21    # "originalPathFinal":Ljava/lang/String;
    .end local v22    # "pathFinal":Ljava/lang/String;
    :cond_6
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 3274
    .end local v8    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v10    # "a":I
    .end local v18    # "isEncrypted":Z
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 3285
    .restart local v8    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .restart local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "a":I
    .restart local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v18    # "isEncrypted":Z
    :cond_8
    if-nez v18, :cond_9

    .line 3286
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v18, :cond_a

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, v27

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    .line 3287
    .local v13, "doc":Lorg/telegram/tgnet/TLRPC$Document;
    instance-of v4, v13, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_9

    move-object v14, v13

    .line 3288
    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3291
    .end local v13    # "doc":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v27, "jpg"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3292
    .local v19, "md5":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v12, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v12    # "cacheFile":Ljava/io/File;
    goto/16 :goto_2

    .line 3286
    .end local v12    # "cacheFile":Ljava/io/File;
    .end local v19    # "md5":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x4

    goto :goto_9

    .line 3311
    .restart local v12    # "cacheFile":Ljava/io/File;
    .restart local v17    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    .restart local v26    # "thumbFile":Ljava/io/File;
    :cond_b
    const-string/jumbo v4, "image/gif"

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_3

    .line 3316
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 3331
    :cond_d
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v27, 0x42b40000    # 90.0f

    const/high16 v28, 0x42b40000    # 90.0f

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_5

    .line 3337
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v16

    .line 3338
    .local v16, "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 3356
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    .end local v26    # "thumbFile":Ljava/io/File;
    .restart local v15    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v21    # "originalPathFinal":Ljava/lang/String;
    :cond_e
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_7

    .line 3367
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "cacheFile":Ljava/io/File;
    .end local v14    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v15    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v21    # "originalPathFinal":Ljava/lang/String;
    :cond_f
    const/16 v20, 0x1

    .line 3368
    .local v20, "needDownloadHttp":Z
    const/16 v23, 0x0

    .line 3369
    .local v23, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    if-nez v18, :cond_10

    .line 3370
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v0, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v27, v0

    if-nez v18, :cond_16

    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, v27

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v23

    .end local v23    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    check-cast v23, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .line 3372
    .restart local v23    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_10
    if-nez v23, :cond_13

    .line 3373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v27, "jpg"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3374
    .restart local v19    # "md5":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v12, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3375
    .restart local v12    # "cacheFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v28, 0x0

    cmp-long v4, v4, v28

    if-eqz v4, :cond_11

    .line 3376
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v23

    .line 3377
    if-eqz v23, :cond_11

    .line 3378
    const/16 v20, 0x0

    .line 3381
    :cond_11
    if-nez v23, :cond_13

    .line 3382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    const-string/jumbo v27, "jpg"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3383
    new-instance v12, Ljava/io/File;

    .end local v12    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v12, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3384
    .restart local v12    # "cacheFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3385
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v27, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/SendMessagesHelper;->generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-result-object v23

    .line 3387
    :cond_12
    if-nez v23, :cond_13

    .line 3388
    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_photo;

    .end local v23    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 3389
    .restart local v23    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    .line 3390
    new-instance v24, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 3391
    .local v24, "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    move-object/from16 v0, v24

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 3392
    iget v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    move-object/from16 v0, v24

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    .line 3393
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    .line 3394
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    move-object/from16 v0, v24

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3395
    const-string/jumbo v4, "x"

    move-object/from16 v0, v24

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 3396
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3400
    .end local v12    # "cacheFile":Ljava/io/File;
    .end local v19    # "md5":Ljava/lang/String;
    .end local v24    # "photoSize":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    :cond_13
    if-eqz v23, :cond_6

    .line 3401
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_14

    .line 3402
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    .line 3404
    :cond_14
    move-object/from16 v6, v23

    .line 3405
    .local v6, "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    move/from16 v7, v20

    .line 3406
    .local v7, "needDownloadHttpFinal":Z
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3407
    .restart local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 3408
    const-string/jumbo v4, "originalPath"

    iget-object v5, v8, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v9, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3410
    :cond_15
    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$16$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$16$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper$16;Lorg/telegram/tgnet/TLRPC$TL_photo;ZLorg/telegram/messenger/MediaController$SearchImage;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 3370
    .end local v6    # "photoFinal":Lorg/telegram/tgnet/TLRPC$TL_photo;
    .end local v7    # "needDownloadHttpFinal":Z
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16
    const/4 v4, 0x3

    goto/16 :goto_a

    .line 3419
    .end local v8    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v20    # "needDownloadHttp":Z
    .end local v23    # "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    :cond_17
    return-void
.end method
