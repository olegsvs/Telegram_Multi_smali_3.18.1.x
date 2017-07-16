.class final Lorg/telegram/messenger/query/SharedMediaQuery$1;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$isChannel:Z

.field final synthetic val$max_id:I

.field final synthetic val$offset:I

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(IJIIIIZ)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$count:I

    iput-wide p2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$uid:J

    iput p4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$offset:I

    iput p5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$max_id:I

    iput p6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$type:I

    iput p7, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$classGuid:I

    iput-boolean p8, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$isChannel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 73
    if-nez p2, :cond_0

    move-object v1, p1

    .line 74
    check-cast v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 76
    .local v1, "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$count:I

    if-le v0, v2, :cond_1

    .line 77
    const/4 v11, 0x0

    .line 78
    .local v11, "topReached":Z
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 82
    :goto_0
    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$uid:J

    iget v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$offset:I

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$count:I

    iget v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$max_id:I

    iget v7, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$type:I

    const/4 v8, 0x0

    iget v9, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$classGuid:I

    iget-boolean v10, p0, Lorg/telegram/messenger/query/SharedMediaQuery$1;->val$isChannel:Z

    invoke-static/range {v1 .. v11}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$000(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIIZIZZ)V

    .line 84
    .end local v1    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    .end local v11    # "topReached":Z
    :cond_0
    return-void

    .line 80
    .restart local v1    # "res":Lorg/telegram/tgnet/TLRPC$messages_Messages;
    :cond_1
    const/4 v11, 0x1

    .restart local v11    # "topReached":Z
    goto :goto_0
.end method
