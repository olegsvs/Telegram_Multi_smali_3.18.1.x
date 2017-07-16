.class Lorg/telegram/messenger/FileUploadOperation$2;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileUploadOperation;->checkNewDataAvailable(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileUploadOperation;

.field final synthetic val$finalSize:J


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileUploadOperation;J)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/FileUploadOperation;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iput-wide p2, p0, Lorg/telegram/messenger/FileUploadOperation$2;->val$finalSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 145
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$200(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation$2;->val$finalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileUploadOperation;->access$202(Lorg/telegram/messenger/FileUploadOperation;I)I

    .line 147
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation$2;->val$finalSize:J

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/FileUploadOperation;->access$302(Lorg/telegram/messenger/FileUploadOperation;J)J

    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$300(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$500(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation;->access$500(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileUploadOperation;->access$402(Lorg/telegram/messenger/FileUploadOperation;I)I

    .line 149
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$600(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$700(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$800(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$2;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$100(Lorg/telegram/messenger/FileUploadOperation;)V

    .line 156
    :cond_1
    return-void
.end method
