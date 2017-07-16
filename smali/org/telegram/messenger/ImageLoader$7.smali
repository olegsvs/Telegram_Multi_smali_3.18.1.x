.class Lorg/telegram/messenger/ImageLoader$7;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->createLoadOperationForImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$cacheOnly:Z

.field final synthetic val$ext:Ljava/lang/String;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$finalIsNeedsQualityThumb:Z

.field final synthetic val$finalTag:Ljava/lang/Integer;

.field final synthetic val$httpLocation:Ljava/lang/String;

.field final synthetic val$imageLocation:Lorg/telegram/tgnet/TLObject;

.field final synthetic val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

.field final synthetic val$shouldGenerateQualityThumb:Z

.field final synthetic val$size:I

.field final synthetic val$thumb:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;ZZILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 1647
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput p2, p0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iput-object p7, p0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    iput-object p8, p0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    iput-boolean p9, p0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    iput-object p10, p0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p11, p0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    iput-boolean p12, p0, Lorg/telegram/messenger/ImageLoader$7;->val$shouldGenerateQualityThumb:Z

    iput-boolean p13, p0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    iput p14, p0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    iput-object p15, p0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1650
    const/4 v5, 0x0

    .line 1651
    .local v5, "added":Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1653
    .local v8, "alreadyLoadingUrl":Lorg/telegram/messenger/ImageLoader$CacheImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1654
    .local v6, "alreadyLoadingCache":Lorg/telegram/messenger/ImageLoader$CacheImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1655
    .local v7, "alreadyLoadingImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-eqz v7, :cond_1

    .line 1656
    if-eq v7, v8, :cond_0

    if-ne v7, v6, :cond_d

    .line 1657
    :cond_0
    const/4 v5, 0x1

    .line 1663
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    if-eqz v6, :cond_2

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const/4 v5, 0x1

    .line 1667
    :cond_2
    if-nez v5, :cond_3

    if-eqz v8, :cond_3

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const/4 v5, 0x1

    .line 1673
    .end local v6    # "alreadyLoadingCache":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v7    # "alreadyLoadingImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v8    # "alreadyLoadingUrl":Lorg/telegram/messenger/ImageLoader$CacheImage;
    :cond_3
    if-nez v5, :cond_c

    .line 1674
    const/16 v18, 0x0

    .line 1675
    .local v18, "onlyCache":Z
    const/16 v16, 0x0

    .line 1676
    .local v16, "isQuality":Z
    const/4 v11, 0x0

    .line 1678
    .local v11, "cacheFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "http"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 1680
    const/16 v18, 0x1

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "thumb://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, ":"

    const/16 v21, 0x8

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 1683
    .local v13, "idx":I
    if-ltz v13, :cond_4

    .line 1684
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1732
    .end local v13    # "idx":I
    .restart local v11    # "cacheFile":Ljava/io/File;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 1733
    new-instance v14, Lorg/telegram/messenger/ImageLoader$CacheImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 1734
    .local v14, "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "vthumb"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "thumb"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "mp4"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "gif"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "image/gif"

    .line 1735
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1736
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1737
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    .line 1740
    :cond_8
    if-nez v11, :cond_a

    .line 1741
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16

    .line 1742
    :cond_9
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1756
    .restart local v11    # "cacheFile":Ljava/io/File;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    if-eqz v19, :cond_1a

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    iput-boolean v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    if-nez v18, :cond_b

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 1763
    :cond_b
    iput-object v11, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1764
    new-instance v19, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$key:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v19

    iget-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1796
    .end local v11    # "cacheFile":Ljava/io/File;
    .end local v14    # "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v16    # "isQuality":Z
    .end local v18    # "onlyCache":Z
    :cond_c
    :goto_4
    return-void

    .line 1659
    .restart local v6    # "alreadyLoadingCache":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .restart local v7    # "alreadyLoadingImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .restart local v8    # "alreadyLoadingUrl":Lorg/telegram/messenger/ImageLoader$CacheImage;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheImage;->removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    goto/16 :goto_0

    .line 1686
    .end local v6    # "alreadyLoadingCache":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v7    # "alreadyLoadingImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v8    # "alreadyLoadingUrl":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .restart local v11    # "cacheFile":Ljava/io/File;
    .restart local v16    # "isQuality":Z
    .restart local v18    # "onlyCache":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "vthumb://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, ":"

    const/16 v21, 0x9

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 1688
    .restart local v13    # "idx":I
    if-ltz v13, :cond_4

    .line 1689
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_1

    .line 1692
    .end local v13    # "idx":I
    :cond_f
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_1

    .line 1695
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$thumb:I

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1696
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 1697
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "q_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1698
    .restart local v11    # "cacheFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_11

    .line 1699
    const/4 v11, 0x0

    .line 1703
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1704
    const/4 v9, 0x0

    .line 1705
    .local v9, "attachPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_12

    .line 1706
    new-instance v9, Ljava/io/File;

    .end local v9    # "attachPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1707
    .restart local v9    # "attachPath":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_12

    .line 1708
    const/4 v9, 0x0

    .line 1711
    :cond_12
    if-nez v9, :cond_13

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v9

    .line 1714
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalIsNeedsQualityThumb:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    if-nez v11, :cond_15

    .line 1715
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v17

    .line 1716
    .local v17, "location":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .line 1717
    .local v15, "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    if-nez v15, :cond_14

    .line 1718
    new-instance v15, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .end local v15    # "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 1719
    .restart local v15    # "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3402(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3502(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    :cond_14
    invoke-static {v15}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$2908(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)I

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$3600(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$finalTag:Ljava/lang/Integer;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    .end local v15    # "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    .end local v17    # "location":Ljava/lang/String;
    :cond_15
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$shouldGenerateQualityThumb:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$parentMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->getFileType()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$filter:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-static {v0, v1, v9, v2, v3}, Lorg/telegram/messenger/ImageLoader;->access$3700(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1743
    .end local v9    # "attachPath":Ljava/io/File;
    .restart local v14    # "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v19, v0

    if-eqz v19, :cond_18

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 1745
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_2

    .line 1747
    :cond_17
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_2

    .line 1749
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    move/from16 v19, v0

    if-eqz v19, :cond_19

    .line 1750
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_2

    .line 1752
    :cond_19
    new-instance v11, Ljava/io/File;

    .end local v11    # "cacheFile":Ljava/io/File;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v11    # "cacheFile":Ljava/io/File;
    goto/16 :goto_2

    .line 1756
    :cond_1a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1769
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v19

    iget-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 1772
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_21

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v19, v0

    if-eqz v19, :cond_1f

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v17, v0

    check-cast v17, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1778
    .local v17, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$ext:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v19, v0

    if-eqz v19, :cond_1d

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    move-object/from16 v19, v0

    if-nez v19, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    :cond_1d
    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V

    goto/16 :goto_4

    :cond_1e
    const/16 v19, 0x0

    goto :goto_5

    .line 1779
    .end local v17    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v19, v0

    if-eqz v19, :cond_20

    .line 1780
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$Document;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_4

    .line 1781
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1782
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$imageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v19, v0

    check-cast v19, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$cacheOnly:Z

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$TL_webDocument;ZZ)V

    goto/16 :goto_4

    .line 1785
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$httpLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1786
    .local v12, "file":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v19

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v10

    .line 1787
    .local v10, "cacheDir":Ljava/io/File;
    new-instance v19, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "_temp.jpg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->tempFilePath:Ljava/io/File;

    .line 1788
    iput-object v11, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1789
    new-instance v19, Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$7;->val$size:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v14, v2}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;I)V

    move-object/from16 v0, v19

    iput-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/ImageLoader;->access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v19

    iget-object v0, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$7;->this$0:Lorg/telegram/messenger/ImageLoader;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/ImageLoader;->access$600(Lorg/telegram/messenger/ImageLoader;Z)V

    goto/16 :goto_4
.end method
