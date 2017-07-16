.class Lorg/telegram/tgnet/ConnectionsManager$1;
.super Ljava/lang/Object;
.source "ConnectionsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/tgnet/ConnectionsManager;

.field final synthetic val$connetionType:I

.field final synthetic val$datacenterId:I

.field final synthetic val$flags:I

.field final synthetic val$immediate:Z

.field final synthetic val$object:Lorg/telegram/tgnet/TLObject;

.field final synthetic val$onComplete:Lorg/telegram/tgnet/RequestDelegate;

.field final synthetic val$onQuickAck:Lorg/telegram/tgnet/QuickAckDelegate;

.field final synthetic val$requestToken:I


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/ConnectionsManager;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/tgnet/ConnectionsManager;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->this$0:Lorg/telegram/tgnet/ConnectionsManager;

    iput-object p2, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    iput p3, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$requestToken:I

    iput-object p4, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$onComplete:Lorg/telegram/tgnet/RequestDelegate;

    iput-object p5, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$onQuickAck:Lorg/telegram/tgnet/QuickAckDelegate;

    iput p6, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$flags:I

    iput p7, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$datacenterId:I

    iput p8, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$connetionType:I

    iput-boolean p9, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$immediate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$requestToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 132
    :try_start_0
    new-instance v8, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v0

    invoke-direct {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 133
    .local v8, "buffer":Lorg/telegram/tgnet/NativeByteBuffer;
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0, v8}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 134
    iget-object v0, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$object:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLObject;->freeResources()V

    .line 136
    iget v0, v8, Lorg/telegram/tgnet/NativeByteBuffer;->address:I

    new-instance v1, Lorg/telegram/tgnet/ConnectionsManager$1$1;

    invoke-direct {v1, p0}, Lorg/telegram/tgnet/ConnectionsManager$1$1;-><init>(Lorg/telegram/tgnet/ConnectionsManager$1;)V

    iget-object v2, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$onQuickAck:Lorg/telegram/tgnet/QuickAckDelegate;

    iget v3, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$flags:I

    iget v4, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$datacenterId:I

    iget v5, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$connetionType:I

    iget-boolean v6, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$immediate:Z

    iget v7, p0, Lorg/telegram/tgnet/ConnectionsManager$1;->val$requestToken:I

    invoke-static/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->native_sendRequest(ILorg/telegram/tgnet/RequestDelegateInternal;Lorg/telegram/tgnet/QuickAckDelegate;IIIZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v8    # "buffer":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v9

    .line 173
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
