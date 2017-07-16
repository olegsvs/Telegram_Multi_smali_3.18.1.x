.class Lorg/telegram/messenger/ImageLoader$CacheImage;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheImage"
.end annotation


# instance fields
.field protected animatedFile:Z

.field protected cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

.field protected ext:Ljava/lang/String;

.field protected filter:Ljava/lang/String;

.field protected filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected finalFilePath:Ljava/io/File;

.field protected httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

.field protected httpUrl:Ljava/lang/String;

.field protected imageReceiverArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field protected key:Ljava/lang/String;

.field protected keys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected location:Lorg/telegram/tgnet/TLObject;

.field protected tempFilePath:Ljava/io/File;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field protected thumb:Z

.field protected url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/ImageLoader;)V
    .locals 1

    .prologue
    .line 970
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    .line 987
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    .line 988
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/ImageLoader;
    .param p2, "x1"    # Lorg/telegram/messenger/ImageLoader$1;

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;)V

    return-void
.end method


# virtual methods
.method public addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "filter"    # Ljava/lang/String;

    .prologue
    .line 991
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    :goto_0
    return-void

    .line 994
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 6
    .param p1, "imageReceiver"    # Lorg/telegram/messenger/ImageReceiver;

    .prologue
    const/4 v5, 0x0

    .line 1001
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1002
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    .line 1003
    .local v1, "obj":Lorg/telegram/messenger/ImageReceiver;
    if-eqz v1, :cond_0

    if-ne v1, p1, :cond_2

    .line 1004
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1005
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1006
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1007
    if-eqz v1, :cond_1

    .line 1008
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-boolean v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 1001
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    .end local v1    # "obj":Lorg/telegram/messenger/ImageReceiver;
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 1014
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1015
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    iget-boolean v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1017
    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1018
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    if-eqz v2, :cond_5

    .line 1019
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_a

    .line 1020
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 1027
    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    if-eqz v2, :cond_6

    .line 1028
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v2, :cond_c

    .line 1029
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1033
    :goto_3
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cancel()V

    .line 1034
    iput-object v5, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 1036
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    if-eqz v2, :cond_7

    .line 1037
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2100(Lorg/telegram/messenger/ImageLoader;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1038
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader$HttpImageTask;->cancel(Z)Z

    .line 1039
    iput-object v5, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpTask:Lorg/telegram/messenger/ImageLoader$HttpImageTask;

    .line 1041
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1042
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :cond_8
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1045
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    :cond_9
    return-void

    .line 1021
    :cond_a
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_b

    .line 1022
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_2

    .line 1023
    :cond_b
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    if-eqz v2, :cond_5

    .line 1024
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->location:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V

    goto :goto_2

    .line 1031
    :cond_c
    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public setImageAndClear(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 5
    .param p1, "image"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 1051
    if-eqz p1, :cond_0

    .line 1052
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1053
    .local v1, "finalImageReceiverArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/ImageReceiver;>;"
    new-instance v3, Lorg/telegram/messenger/ImageLoader$CacheImage$1;

    invoke-direct {v3, p0, p1, v1}, Lorg/telegram/messenger/ImageLoader$CacheImage$1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheImage;Landroid/graphics/drawable/BitmapDrawable;Ljava/util/ArrayList;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1077
    .end local v1    # "finalImageReceiverArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/ImageReceiver;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1078
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    .line 1079
    .local v2, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->access$1800(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->getTag(Z)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1081
    .end local v2    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1082
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1083
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1086
    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    :cond_3
    return-void
.end method
