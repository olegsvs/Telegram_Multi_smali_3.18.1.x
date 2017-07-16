.class Lorg/telegram/messenger/query/StickersQuery$21$1;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$21;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$21;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$21;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/query/StickersQuery$21;

    .prologue
    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$21$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->val$response:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;

    .local v8, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$21;->val$type:I

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->hash:I

    invoke-static {v2, v4, v3, v12, v13}, Lorg/telegram/messenger/query/StickersQuery;->access$2000(ILjava/util/ArrayList;ZII)V

    .end local v4    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v8    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;
    :cond_0
    :goto_0
    return-void

    .restart local v4    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .restart local v8    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, "newStickerSets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_1
    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_0

    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$StickerSet;

    .local v7, "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSet;
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2100()Ljava/util/HashMap;

    move-result-object v2

    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .local v10, "oldSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-eqz v10, :cond_3

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    iget v3, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    if-ne v2, v3, :cond_3

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v3, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->archived:Z

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v3, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->installed:Z

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v3, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v2

    iget-object v3, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->sets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$21;->val$type:I

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    iget v13, v8, Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;->hash:I

    invoke-static {v2, v4, v3, v12, v13}, Lorg/telegram/messenger/query/StickersQuery;->access$2000(ILjava/util/ArrayList;ZII)V

    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v9

    .local v5, "index":I
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .local v11, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v12, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v12, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v2, Lorg/telegram/messenger/query/StickersQuery$21$1$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/query/StickersQuery$21$1$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$21$1;Ljava/util/ArrayList;ILjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;)V

    invoke-virtual {v12, v11, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_2

    .end local v4    # "newStickerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v5    # "index":I
    .end local v6    # "newStickerSets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    .end local v7    # "stickerSet":Lorg/telegram/tgnet/TLRPC$StickerSet;
    .end local v8    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_allStickers;
    .end local v9    # "a":I
    .end local v10    # "oldSet":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v11    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$21;->val$type:I

    const/4 v3, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/query/StickersQuery$21$1;->this$0:Lorg/telegram/messenger/query/StickersQuery$21;

    iget v14, v14, Lorg/telegram/messenger/query/StickersQuery$21;->val$hash:I

    invoke-static {v2, v3, v12, v13, v14}, Lorg/telegram/messenger/query/StickersQuery;->access$2000(ILjava/util/ArrayList;ZII)V

    goto/16 :goto_0
.end method
