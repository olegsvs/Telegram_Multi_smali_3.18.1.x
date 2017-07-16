.class Lorg/telegram/messenger/ImageLoader$CacheOutTask;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheOutTask"
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private isCancelled:Z

.field private runningThread:Ljava/lang/Thread;

.field private final sync:Ljava/lang/Object;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V
    .locals 1
    .param p2, "image"    # Lorg/telegram/messenger/ImageLoader$CacheImage;

    .prologue
    .line 606
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    .line 607
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 608
    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .prologue
    .line 599
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object v0
.end method

.method private onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p1, "bitmapDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 929
    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 954
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 957
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 959
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    .line 960
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 967
    return-void

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 963
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 47

    .prologue
    .line 612
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6

    .line 613
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    .line 614
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 615
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_0

    .line 616
    monitor-exit v6

    .line 926
    :goto_0
    return-void

    .line 618
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 620
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    if-eqz v5, :cond_3

    .line 621
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6

    .line 622
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_1

    .line 623
    monitor-exit v6

    goto :goto_0

    .line 625
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 618
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 625
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 626
    new-instance v28, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v7, "d"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, v28

    invoke-direct {v0, v6, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;Z)V

    .line 627
    .local v28, "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 628
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0

    .line 626
    .end local v28    # "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 630
    :cond_3
    const/16 v34, 0x0

    .line 631
    .local v34, "mediaId":Ljava/lang/Long;
    const/16 v35, 0x0

    .line 632
    .local v35, "mediaIsVideo":Z
    const/16 v31, 0x0

    .line 633
    .local v31, "image":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    move-object/from16 v21, v0

    .line 634
    .local v21, "cacheFileFinal":Ljava/io/File;
    const/16 v22, 0x1

    .line 635
    .local v22, "canDeleteFile":Z
    const/16 v45, 0x0

    .line 637
    .local v45, "useNativeWebpLoaded":Z
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_5

    .line 638
    const/16 v40, 0x0

    .line 640
    .local v40, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_4
    new-instance v41, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v41

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 642
    .end local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v41, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v5, :cond_8

    .line 643
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1200()[B

    move-result-object v20

    .line 647
    .local v20, "bytes":[B
    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, v20

    array-length v6, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 648
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v44

    .line 649
    .local v44, "str":Ljava/lang/String;
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v44

    .line 650
    const-string/jumbo v5, "riff"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "webp"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 651
    const/16 v45, 0x1

    .line 653
    :cond_4
    invoke-virtual/range {v41 .. v41}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 657
    if-eqz v41, :cond_5

    .line 659
    :try_start_6
    invoke-virtual/range {v41 .. v41}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 667
    .end local v20    # "bytes":[B
    .end local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v44    # "str":Ljava/lang/String;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-boolean v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v5, :cond_1d

    .line 668
    const/16 v16, 0x0

    .line 669
    .local v16, "blurType":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 670
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 671
    const/16 v16, 0x3

    .line 680
    :cond_6
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->access$1402(Lorg/telegram/messenger/ImageLoader;J)J

    .line 681
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 682
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_c

    .line 683
    monitor-exit v6

    goto/16 :goto_0

    .line 685
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 745
    :catch_0
    move-exception v25

    move-object/from16 v4, v31

    .line 746
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .local v4, "image":Landroid/graphics/Bitmap;
    .local v25, "e":Ljava/lang/Throwable;
    :goto_5
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 923
    .end local v16    # "blurType":I
    .end local v25    # "e":Ljava/lang/Throwable;
    :cond_7
    :goto_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 924
    if-eqz v4, :cond_3f

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    goto/16 :goto_0

    .line 645
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_8
    :try_start_a
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1300()[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-result-object v20

    .restart local v20    # "bytes":[B
    goto/16 :goto_2

    .line 660
    .restart local v44    # "str":Ljava/lang/String;
    :catch_1
    move-exception v25

    .line 661
    .local v25, "e":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 654
    .end local v20    # "bytes":[B
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v44    # "str":Ljava/lang/String;
    .restart local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v25

    .line 655
    .restart local v25    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_b
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 657
    if-eqz v40, :cond_5

    .line 659
    :try_start_c
    invoke-virtual/range {v40 .. v40}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    .line 660
    :catch_3
    move-exception v25

    .line 661
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 657
    .end local v25    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v5

    :goto_9
    if-eqz v40, :cond_9

    .line 659
    :try_start_d
    invoke-virtual/range {v40 .. v40}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 662
    :cond_9
    :goto_a
    throw v5

    .line 660
    :catch_4
    move-exception v25

    .line 661
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 672
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v16    # "blurType":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 673
    const/16 v16, 0x2

    goto :goto_4

    .line 674
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 675
    const/16 v16, 0x1

    goto :goto_4

    .line 685
    :cond_c
    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 687
    :try_start_f
    new-instance v37, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 688
    .local v37, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v37

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 690
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_d

    .line 691
    const/4 v5, 0x1

    move-object/from16 v0, v37

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 694
    :cond_d
    if-eqz v45, :cond_10

    .line 695
    new-instance v27, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 696
    .local v27, "file":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v19

    .line 698
    .local v19, "buffer":Ljava/nio/ByteBuffer;
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 699
    .local v18, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 700
    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v5, v0, v6, v1, v7}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 701
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    move-result-object v4

    .line 703
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v37

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 704
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    .line 722
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    :goto_c
    if-nez v4, :cond_14

    .line 723
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 724
    :cond_e
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_6

    .line 745
    :catch_5
    move-exception v25

    goto/16 :goto_5

    .line 703
    .restart local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_f
    const/4 v5, 0x0

    goto :goto_b

    .line 706
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_10
    :try_start_11
    move-object/from16 v0, v37

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_13

    .line 707
    new-instance v26, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 708
    .local v26, "f":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v33, v0

    .line 709
    .local v33, "len":I
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v33

    if-lt v5, v0, :cond_12

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1500()[B

    move-result-object v23

    .line 710
    .local v23, "data":[B
    :goto_d
    if-nez v23, :cond_11

    .line 711
    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/ImageLoader;->access$1502([B)[B

    .line 713
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 714
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    move-object/from16 v2, v37

    invoke-static {v0, v5, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 715
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto :goto_c

    .line 709
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v23    # "data":[B
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_12
    const/16 v23, 0x0

    goto :goto_d

    .line 716
    .end local v26    # "f":Ljava/io/RandomAccessFile;
    .end local v33    # "len":I
    :cond_13
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 717
    .local v32, "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    move-result-object v4

    .line 718
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_12
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_c

    .line 727
    .end local v32    # "is":Ljava/io/FileInputStream;
    :cond_14
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_16

    .line 728
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    .line 729
    const/4 v5, 0x3

    move-object/from16 v0, v37

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_15

    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    :cond_15
    const/4 v6, 0x1

    goto :goto_e

    .line 731
    :cond_16
    const/4 v5, 0x2

    move/from16 v0, v16

    if-ne v0, v5, :cond_18

    .line 732
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    .line 733
    const/4 v5, 0x1

    move-object/from16 v0, v37

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    :goto_f
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    :cond_17
    const/4 v6, 0x1

    goto :goto_f

    .line 735
    :cond_18
    const/4 v5, 0x3

    move/from16 v0, v16

    if-ne v0, v5, :cond_1c

    .line 736
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_7

    .line 737
    const/4 v5, 0x7

    move-object/from16 v0, v37

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_19

    const/4 v6, 0x0

    :goto_10
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 738
    const/4 v5, 0x7

    move-object/from16 v0, v37

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_1a

    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 739
    const/4 v5, 0x7

    move-object/from16 v0, v37

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_1b

    const/4 v6, 0x0

    :goto_12
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6

    .line 737
    :cond_19
    const/4 v6, 0x1

    goto :goto_10

    .line 738
    :cond_1a
    const/4 v6, 0x1

    goto :goto_11

    .line 739
    :cond_1b
    const/4 v6, 0x1

    goto :goto_12

    .line 741
    :cond_1c
    if-nez v16, :cond_7

    move-object/from16 v0, v37

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_7

    .line 742
    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_6

    .line 750
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v16    # "blurType":I
    .end local v37    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_1d
    const/16 v36, 0x0

    .line 751
    .local v36, "mediaThumbPath":Ljava/lang/String;
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    if-eqz v5, :cond_1f

    .line 752
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "thumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 753
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v30

    .line 754
    .local v30, "idx":I
    if-ltz v30, :cond_1e

    .line 755
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const/16 v6, 0x8

    move/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    .line 756
    const/16 v35, 0x0

    .line 757
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    add-int/lit8 v6, v30, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v36

    .line 759
    :cond_1e
    const/16 v22, 0x0

    .line 772
    .end local v30    # "idx":I
    :cond_1f
    :goto_13
    const/16 v24, 0x14

    .line 773
    .local v24, "delay":I
    if-eqz v34, :cond_20

    .line 774
    const/16 v24, 0x0

    .line 776
    :cond_20
    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$1400(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader;->access$1400(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move/from16 v0, v24

    int-to-long v10, v0

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-lez v5, :cond_21

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_21

    .line 777
    move/from16 v0, v24

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 779
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ImageLoader;->access$1402(Lorg/telegram/messenger/ImageLoader;J)J

    .line 780
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6

    .line 781
    :try_start_14
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_25

    .line 782
    monitor-exit v6

    goto/16 :goto_0

    .line 784
    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw v5

    .line 919
    .end local v24    # "delay":I
    :catch_6
    move-exception v5

    move-object/from16 v4, v31

    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto/16 :goto_6

    .line 760
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "vthumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 761
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const/16 v7, 0x9

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v30

    .line 762
    .restart local v30    # "idx":I
    if-ltz v30, :cond_23

    .line 763
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const/16 v6, 0x9

    move/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    .line 764
    const/16 v35, 0x1

    .line 766
    :cond_23
    const/16 v22, 0x0

    .line 767
    goto/16 :goto_13

    .end local v30    # "idx":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    const-string/jumbo v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6

    move-result v5

    if-nez v5, :cond_1f

    .line 768
    const/16 v22, 0x0

    goto/16 :goto_13

    .line 784
    .restart local v24    # "delay":I
    :cond_25
    :try_start_16
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 786
    :try_start_17
    new-instance v37, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 787
    .restart local v37    # "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v37

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 789
    const/16 v46, 0x0

    .line 790
    .local v46, "w_filter":F
    const/16 v29, 0x0

    .line 791
    .local v29, "h_filter":F
    const/4 v15, 0x0

    .line 792
    .local v15, "blur":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_2b

    .line 793
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 794
    .local v12, "args":[Ljava/lang/String;
    array-length v5, v12

    const/4 v6, 0x2

    if-lt v5, v6, :cond_26

    .line 795
    const/4 v5, 0x0

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v46, v5, v6

    .line 796
    const/4 v5, 0x1

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v29, v5, v6

    .line 798
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 799
    const/4 v15, 0x1

    .line 801
    :cond_27
    const/4 v5, 0x0

    cmpl-float v5, v46, v5

    if-eqz v5, :cond_40

    const/4 v5, 0x0

    cmpl-float v5, v29, v5

    if-eqz v5, :cond_40

    .line 802
    const/4 v5, 0x1

    move-object/from16 v0, v37

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 804
    if-eqz v34, :cond_2a

    if-nez v36, :cond_2a

    .line 805
    if-eqz v35, :cond_29

    .line 806
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v37

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_6

    move-object/from16 v4, v31

    .line 816
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :goto_14
    :try_start_18
    move-object/from16 v0, v37

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v5

    move/from16 v39, v0

    .line 817
    .local v39, "photoW":F
    move-object/from16 v0, v37

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v5

    move/from16 v38, v0

    .line 818
    .local v38, "photoH":F
    div-float v5, v39, v46

    div-float v6, v38, v29

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v42

    .line 819
    .local v42, "scaleFactor":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v42, v5

    if-gez v5, :cond_28

    .line 820
    const/high16 v42, 0x3f800000    # 1.0f

    .line 822
    :cond_28
    const/4 v5, 0x0

    move-object/from16 v0, v37

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 823
    move/from16 v0, v42

    float-to-int v5, v0

    move-object/from16 v0, v37

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 839
    .end local v12    # "args":[Ljava/lang/String;
    .end local v38    # "photoH":F
    .end local v39    # "photoW":F
    .end local v42    # "scaleFactor":F
    :goto_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v6
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7

    .line 840
    :try_start_19
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v5, :cond_2d

    .line 841
    monitor-exit v6

    goto/16 :goto_0

    .line 843
    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    throw v5
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_7

    .line 919
    :catch_7
    move-exception v5

    goto/16 :goto_6

    .line 808
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v12    # "args":[Ljava/lang/String;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_29
    :try_start_1b
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v37

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-object/from16 v4, v31

    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto :goto_14

    .line 811
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_2a
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 812
    .restart local v32    # "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_6

    move-result-object v4

    .line 813
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_1c
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_7

    goto :goto_14

    .line 825
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .end local v12    # "args":[Ljava/lang/String;
    .end local v32    # "is":Ljava/io/FileInputStream;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    :cond_2b
    if-eqz v36, :cond_40

    .line 826
    const/4 v5, 0x1

    :try_start_1d
    move-object/from16 v0, v37

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 827
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 828
    .restart local v32    # "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_6

    move-result-object v4

    .line 829
    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    :try_start_1e
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V

    .line 830
    move-object/from16 v0, v37

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v5

    move/from16 v39, v0

    .line 831
    .restart local v39    # "photoW":F
    move-object/from16 v0, v37

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v5

    move/from16 v38, v0

    .line 832
    .restart local v38    # "photoH":F
    const/high16 v5, 0x44000000    # 512.0f

    div-float v5, v39, v5

    const/high16 v6, 0x43c00000    # 384.0f

    div-float v6, v38, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v42

    .line 833
    .restart local v42    # "scaleFactor":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v42, v5

    if-gez v5, :cond_2c

    .line 834
    const/high16 v42, 0x3f800000    # 1.0f

    .line 836
    :cond_2c
    const/4 v5, 0x0

    move-object/from16 v0, v37

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 837
    move/from16 v0, v42

    float-to-int v5, v0

    move-object/from16 v0, v37

    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_7

    goto/16 :goto_15

    .line 843
    .end local v32    # "is":Ljava/io/FileInputStream;
    .end local v38    # "photoH":F
    .end local v39    # "photoW":F
    .end local v42    # "scaleFactor":F
    :cond_2d
    :try_start_1f
    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 845
    :try_start_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_2e

    if-nez v15, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    if-eqz v5, :cond_33

    .line 846
    :cond_2e
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v37

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 850
    :goto_16
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_2f

    .line 851
    const/4 v5, 0x1

    move-object/from16 v0, v37

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 854
    :cond_2f
    const/4 v5, 0x0

    move-object/from16 v0, v37

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 855
    if-eqz v34, :cond_30

    if-nez v36, :cond_30

    .line 856
    if-eqz v35, :cond_34

    .line 857
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v37

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 862
    :cond_30
    :goto_17
    if-nez v4, :cond_31

    .line 863
    if-eqz v45, :cond_36

    .line 864
    new-instance v27, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 865
    .restart local v27    # "file":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v19

    .line 867
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 868
    .restart local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 869
    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v5, v0, v6, v1, v7}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 870
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 872
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v37

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_35

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, v19

    invoke-static {v4, v0, v6, v7, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 873
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    .line 891
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_31
    :goto_19
    if-nez v4, :cond_3a

    .line 892
    if-eqz v22, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_32

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 893
    :cond_32
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    goto/16 :goto_6

    .line 848
    :cond_33
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v37

    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_16

    .line 859
    :cond_34
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v37

    invoke-static {v5, v6, v7, v8, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_17

    .line 872
    .restart local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v19    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_35
    const/4 v5, 0x0

    goto :goto_18

    .line 875
    .end local v18    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "buffer":Ljava/nio/ByteBuffer;
    .end local v27    # "file":Ljava/io/RandomAccessFile;
    :cond_36
    move-object/from16 v0, v37

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_39

    .line 876
    new-instance v26, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 877
    .restart local v26    # "f":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v26 .. v26}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v33, v0

    .line 878
    .restart local v33    # "len":I
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v5

    if-eqz v5, :cond_38

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v5

    array-length v5, v5

    move/from16 v0, v33

    if-lt v5, v0, :cond_38

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1600()[B

    move-result-object v23

    .line 879
    .restart local v23    # "data":[B
    :goto_1a
    if-nez v23, :cond_37

    .line 880
    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/ImageLoader;->access$1602([B)[B

    .line 882
    :cond_37
    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 883
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    move-object/from16 v2, v37

    invoke-static {v0, v5, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 884
    goto/16 :goto_19

    .line 878
    .end local v23    # "data":[B
    :cond_38
    const/16 v23, 0x0

    goto :goto_1a

    .line 885
    .end local v26    # "f":Ljava/io/RandomAccessFile;
    .end local v33    # "len":I
    :cond_39
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 886
    .restart local v32    # "is":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 887
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_19

    .line 896
    .end local v32    # "is":Ljava/io/FileInputStream;
    :cond_3a
    const/16 v17, 0x0

    .line 897
    .local v17, "blured":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v5, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v5, :cond_3d

    .line 898
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v14, v5

    .line 899
    .local v14, "bitmapW":F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v13, v5

    .line 900
    .local v13, "bitmapH":F
    move-object/from16 v0, v37

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_3b

    const/4 v5, 0x0

    cmpl-float v5, v46, v5

    if-eqz v5, :cond_3b

    cmpl-float v5, v14, v46

    if-eqz v5, :cond_3b

    const/high16 v5, 0x41a00000    # 20.0f

    add-float v5, v5, v46

    cmpl-float v5, v14, v5

    if-lez v5, :cond_3b

    .line 901
    div-float v42, v14, v46

    .line 902
    .restart local v42    # "scaleFactor":F
    move/from16 v0, v46

    float-to-int v5, v0

    div-float v6, v13, v42

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v43

    .line 903
    .local v43, "scaledBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v43

    if-eq v4, v0, :cond_3b

    .line 904
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 905
    move-object/from16 v4, v43

    .line 908
    .end local v42    # "scaleFactor":F
    .end local v43    # "scaledBitmap":Landroid/graphics/Bitmap;
    :cond_3b
    if-eqz v4, :cond_3d

    if-eqz v15, :cond_3d

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v5, v13, v5

    if-gez v5, :cond_3d

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v5, v14, v5

    if-gez v5, :cond_3d

    .line 909
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v5, v6, :cond_3c

    .line 910
    const/4 v5, 0x3

    move-object/from16 v0, v37

    iget-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v6, :cond_3e

    const/4 v6, 0x0

    :goto_1b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v9

    invoke-static/range {v4 .. v9}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    .line 912
    :cond_3c
    const/16 v17, 0x1

    .line 915
    .end local v13    # "bitmapH":F
    .end local v14    # "bitmapW":F
    :cond_3d
    if-nez v17, :cond_7

    move-object/from16 v0, v37

    iget-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_7

    .line 916
    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_7

    goto/16 :goto_6

    .line 910
    .restart local v13    # "bitmapH":F
    .restart local v14    # "bitmapW":F
    :cond_3e
    const/4 v6, 0x1

    goto :goto_1b

    .line 924
    .end local v13    # "bitmapH":F
    .end local v14    # "bitmapW":F
    .end local v15    # "blur":Z
    .end local v17    # "blured":Z
    .end local v24    # "delay":I
    .end local v29    # "h_filter":F
    .end local v36    # "mediaThumbPath":Ljava/lang/String;
    .end local v37    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v46    # "w_filter":F
    :cond_3f
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 657
    .end local v4    # "image":Landroid/graphics/Bitmap;
    .restart local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catchall_6
    move-exception v5

    move-object/from16 v40, v41

    .end local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_9

    .line 654
    .end local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v25

    move-object/from16 v40, v41

    .end local v41    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v40    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "blur":Z
    .restart local v24    # "delay":I
    .restart local v29    # "h_filter":F
    .restart local v36    # "mediaThumbPath":Ljava/lang/String;
    .restart local v37    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v46    # "w_filter":F
    :cond_40
    move-object/from16 v4, v31

    .end local v31    # "image":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Landroid/graphics/Bitmap;
    goto/16 :goto_15
.end method
