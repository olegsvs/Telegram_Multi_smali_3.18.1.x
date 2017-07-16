.class Lorg/telegram/messenger/FileLoadOperation$5;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileLoadOperation;

.field final synthetic val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 610
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$5;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation$5;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 613
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    if-eqz v0, :cond_1

    .line 614
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$5;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$802(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_file;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    .line 618
    :goto_0
    if-eqz p1, :cond_0

    .line 619
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$5;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$1300(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v0

    const/high16 v1, 0x3000000

    if-ne v0, v1, :cond_2

    .line 620
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v1, p1, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v2, 0x3

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    .line 629
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$5;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$5;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/FileLoadOperation;->access$1400(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    .line 630
    return-void

    .line 616
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation$5;->val$requestInfo:Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$902(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    goto :goto_0

    .line 621
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$5;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$1300(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v0

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_3

    .line 622
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v1, p1, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v2, 0x2

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_1

    .line 623
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$5;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$1300(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v0

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_4

    .line 624
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v1, p1, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v2, 0x4

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_1

    .line 625
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$5;->this$0:Lorg/telegram/messenger/FileLoadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation;->access$1300(Lorg/telegram/messenger/FileLoadOperation;)I

    move-result v0

    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_0

    .line 626
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    iget v1, p1, Lorg/telegram/tgnet/TLObject;->networkType:I

    const/4 v2, 0x5

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    goto :goto_1
.end method
