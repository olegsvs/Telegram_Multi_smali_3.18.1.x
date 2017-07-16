.class Lorg/telegram/messenger/FileLoader$7;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoader;->checkDownloadQueue(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoader;

.field final synthetic val$arg1:Ljava/lang/String;

.field final synthetic val$document:Lorg/telegram/tgnet/TLRPC$Document;

.field final synthetic val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field final synthetic val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoader;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$TL_webDocument;Lorg/telegram/tgnet/TLRPC$FileLocation;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoader;

    .prologue
    .line 539
    iput-object p1, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoader$7;->val$arg1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/FileLoader$7;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p4, p0, Lorg/telegram/messenger/FileLoader$7;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    iput-object p5, p0, Lorg/telegram/messenger/FileLoader$7;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 542
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$900(Lorg/telegram/messenger/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/FileLoader$7;->val$arg1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 543
    .local v1, "operation":Lorg/telegram/messenger/FileLoadOperation;
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->val$document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVoiceWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 544
    :cond_0
    if-eqz v1, :cond_1

    .line 545
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1110(Lorg/telegram/messenger/FileLoader;)I

    .line 551
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 552
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 553
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 554
    .local v0, "maxCount":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1100(Lorg/telegram/messenger/FileLoader;)I

    move-result v4

    if-ge v4, v0, :cond_d

    .line 555
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 556
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 557
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1108(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_0

    .line 548
    .end local v0    # "maxCount":I
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1000(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v0, v3

    .line 553
    goto :goto_1

    .line 563
    :cond_4
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->val$location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->val$webDocument:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isImageWebDocument(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 564
    :cond_5
    if-eqz v1, :cond_6

    .line 565
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 566
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1310(Lorg/telegram/messenger/FileLoader;)I

    .line 571
    :cond_6
    :goto_2
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 572
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 573
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v2

    .line 574
    .restart local v0    # "maxCount":I
    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1300(Lorg/telegram/messenger/FileLoader;)I

    move-result v4

    if-ge v4, v0, :cond_d

    .line 575
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 576
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 577
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1308(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_2

    .line 568
    .end local v0    # "maxCount":I
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1200(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    move v0, v3

    .line 573
    goto :goto_3

    .line 584
    :cond_9
    if-eqz v1, :cond_a

    .line 585
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->wasStarted()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 586
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1510(Lorg/telegram/messenger/FileLoader;)I

    .line 591
    :cond_a
    :goto_4
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 592
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 593
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest()Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v2

    .line 594
    .restart local v0    # "maxCount":I
    :goto_5
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1500(Lorg/telegram/messenger/FileLoader;)I

    move-result v4

    if-ge v4, v0, :cond_d

    .line 595
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    check-cast v1, Lorg/telegram/messenger/FileLoadOperation;

    .line 596
    .restart local v1    # "operation":Lorg/telegram/messenger/FileLoadOperation;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lorg/telegram/messenger/FileLoadOperation;->start()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 597
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1508(Lorg/telegram/messenger/FileLoader;)I

    goto :goto_4

    .line 588
    .end local v0    # "maxCount":I
    :cond_b
    iget-object v4, p0, Lorg/telegram/messenger/FileLoader$7;->this$0:Lorg/telegram/messenger/FileLoader;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->access$1400(Lorg/telegram/messenger/FileLoader;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    move v0, v3

    .line 593
    goto :goto_5

    .line 604
    :cond_d
    return-void
.end method
