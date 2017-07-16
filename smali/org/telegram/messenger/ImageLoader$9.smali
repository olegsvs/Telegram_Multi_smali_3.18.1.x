.class Lorg/telegram/messenger/ImageLoader$9;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ImageLoader;->fileDidLoaded(Ljava/lang/String;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;

.field final synthetic val$finalFile:Ljava/io/File;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;ILjava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ImageLoader;

    .prologue
    .line 1935
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/ImageLoader$9;->val$type:I

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$9;->val$finalFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1938
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;

    .line 1939
    .local v5, "info":Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;
    if-eqz v5, :cond_0

    .line 1940
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget v9, p0, Lorg/telegram/messenger/ImageLoader$9;->val$type:I

    iget-object v10, p0, Lorg/telegram/messenger/ImageLoader$9;->val$finalFile:Ljava/io/File;

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3400(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v11

    invoke-static {v5}, Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;->access$3500(Lorg/telegram/messenger/ImageLoader$ThumbGenerateInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Lorg/telegram/messenger/ImageLoader;->access$3700(Lorg/telegram/messenger/ImageLoader;ILjava/io/File;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    .line 1941
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$3200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    :cond_0
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1944
    .local v4, "img":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-nez v4, :cond_2

    .line 1976
    :cond_1
    return-void

    .line 1947
    :cond_2
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader$9;->val$location:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1949
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/ImageLoader$CacheOutTask;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 1950
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->keys:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1951
    .local v6, "key":Ljava/lang/String;
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->filters:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1952
    .local v2, "filter":Ljava/lang/String;
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageReceiverArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ImageReceiver;

    .line 1953
    .local v3, "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .line 1954
    .local v1, "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    if-nez v1, :cond_3

    .line 1955
    new-instance v1, Lorg/telegram/messenger/ImageLoader$CacheImage;

    .end local v1    # "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lorg/telegram/messenger/ImageLoader$CacheImage;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$1;)V

    .line 1956
    .restart local v1    # "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->val$finalFile:Ljava/io/File;

    iput-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1957
    iput-object v6, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    .line 1958
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    iput-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->httpUrl:Ljava/lang/String;

    .line 1959
    iget-boolean v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    iput-boolean v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    .line 1960
    iget-object v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    iput-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->ext:Ljava/lang/String;

    .line 1961
    new-instance v8, Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    iget-object v9, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {v8, v9, v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;-><init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V

    iput-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    .line 1962
    iput-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    .line 1963
    iget-boolean v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    iput-boolean v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->animatedFile:Z

    .line 1964
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$2300(Lorg/telegram/messenger/ImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    iget-object v8, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheTask:Lorg/telegram/messenger/ImageLoader$CacheOutTask;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1967
    :cond_3
    invoke-virtual {v1, v3, v6, v2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->addImageReceiver(Lorg/telegram/messenger/ImageReceiver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1969
    .end local v1    # "cacheImage":Lorg/telegram/messenger/ImageLoader$CacheImage;
    .end local v2    # "filter":Ljava/lang/String;
    .end local v3    # "imageReceiver":Lorg/telegram/messenger/ImageReceiver;
    .end local v6    # "key":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 1970
    iget-boolean v8, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->thumb:Z

    if-eqz v8, :cond_5

    .line 1971
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v9

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1969
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1973
    :cond_5
    iget-object v8, p0, Lorg/telegram/messenger/ImageLoader$9;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v9

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
