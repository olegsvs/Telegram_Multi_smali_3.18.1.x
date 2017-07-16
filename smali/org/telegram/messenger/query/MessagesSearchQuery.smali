.class public Lorg/telegram/messenger/query/MessagesSearchQuery;
.super Ljava/lang/Object;
.source "MessagesSearchQuery.java"


# static fields
.field private static lastMergeDialogId:J

.field private static lastReqId:I

.field private static lastReturnedNum:I

.field private static lastSearchQuery:Ljava/lang/String;

.field private static mergeReqId:I

.field private static messagesSearchCount:[I

.field private static messagesSearchEndReached:[Z

.field private static reqId:I

.field private static searchResultMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    .line 33
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 33
    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 26
    sget-wide v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastMergeDialogId:J

    return-wide v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 26
    sput p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    return p0
.end method

.method static synthetic access$200()[Z
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;JJIIZ)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # Z

    .prologue
    .line 26
    invoke-static/range {p0 .. p7}, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJIIZ)V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 26
    sput p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 26
    sput p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    return p0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I

    move-result v0

    return v0
.end method

.method public static getLastSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method private static getMask()I
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "mask":I
    sget v1, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    sget-object v1, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_1

    .line 41
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 43
    :cond_1
    sget v1, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    if-lez v1, :cond_2

    .line 44
    or-int/lit8 v0, v0, 0x2

    .line 46
    :cond_2
    return v0
.end method

.method public static searchMessagesInChat(Ljava/lang/String;JJII)V
    .locals 9
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "dialog_id"    # J
    .param p3, "mergeDialogId"    # J
    .param p5, "guid"    # I
    .param p6, "direction"    # I

    .prologue
    .line 50
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v8}, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJIIZ)V

    .line 51
    return-void
.end method

.method private static searchMessagesInChat(Ljava/lang/String;JJIIZ)V
    .locals 21
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "dialog_id"    # J
    .param p3, "mergeDialogId"    # J
    .param p5, "guid"    # I
    .param p6, "direction"    # I
    .param p7, "internal"    # Z

    .prologue
    .line 54
    const/4 v15, 0x0

    .line 55
    .local v15, "max_id":I
    move-wide/from16 v18, p1

    .line 56
    .local v18, "queryWithDialog":J
    if-nez p7, :cond_3

    const/4 v13, 0x1

    .line 57
    .local v13, "firstQuery":Z
    :goto_0
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    if-eqz v2, :cond_0

    .line 58
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 59
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    .line 61
    :cond_0
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    if-eqz v2, :cond_1

    .line 62
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    const/4 v8, 0x1

    invoke-virtual {v2, v3, v8}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 63
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    .line 65
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 66
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 213
    :cond_2
    :goto_1
    return-void

    .line 56
    .end local v13    # "firstQuery":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 69
    .restart local v13    # "firstQuery":Z
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_b

    .line 70
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    .line 71
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget-object v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 72
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 73
    .local v16, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget v10, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_5
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_6

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_6

    .line 77
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    goto/16 :goto_1

    .line 80
    :cond_6
    const/4 v13, 0x0

    .line 81
    sget-object p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    .line 82
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    sget-object v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 83
    .restart local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_9

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-nez v2, :cond_9

    .line 84
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    .line 85
    move-wide/from16 v18, p1

    .line 114
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_7
    :goto_2
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_8

    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-nez v2, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_8

    .line 115
    move-wide/from16 v18, p3

    .line 117
    :cond_8
    cmp-long v2, v18, p1

    if-nez v2, :cond_10

    if-eqz v13, :cond_10

    .line 118
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_f

    .line 119
    move-wide/from16 v0, p3

    long-to-int v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v14

    .line 120
    .local v14, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    if-eqz v14, :cond_2

    .line 123
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 124
    .local v5, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    iput-object v14, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 125
    sput-wide p3, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastMergeDialogId:J

    .line 126
    const/4 v2, 0x1

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 127
    move-object/from16 v0, p0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 128
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 129
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v2, Lorg/telegram/messenger/query/MessagesSearchQuery$1;

    move-wide/from16 v3, p3

    move-wide/from16 v6, p1

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lorg/telegram/messenger/query/MessagesSearchQuery$1;-><init>(JLorg/telegram/tgnet/TLRPC$TL_messages_search;JII)V

    const/4 v3, 0x2

    invoke-virtual {v10, v5, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->mergeReqId:I

    goto/16 :goto_1

    .line 87
    .end local v5    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    .end local v14    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-nez v2, :cond_a

    .line 88
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    .line 90
    :cond_a
    move-wide/from16 v18, p3

    .line 91
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x1

    const/4 v8, 0x0

    aput-boolean v8, v2, v3

    goto :goto_2

    .line 94
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_b
    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_2

    .line 95
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    .line 96
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    if-gez v2, :cond_c

    .line 97
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    goto/16 :goto_1

    .line 100
    :cond_c
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    sget-object v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_d

    .line 101
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    .line 103
    :cond_d
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 104
    .restart local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->chatSearchResultsAvailable:I

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getMask()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    sget v10, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReturnedNum:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sget-object v11, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v3, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 109
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_e
    if-eqz v13, :cond_7

    .line 110
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x0

    sget-object v8, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-boolean v10, v8, v9

    aput-boolean v10, v2, v3

    .line 111
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v3, 0x0

    sget-object v8, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    aput v10, v2, v3

    .line 112
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 150
    :cond_f
    const-wide/16 v2, 0x0

    sput-wide v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastMergeDialogId:J

    .line 151
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchEndReached:[Z

    const/4 v3, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v2, v3

    .line 152
    sget-object v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->messagesSearchCount:[I

    const/4 v3, 0x1

    const/4 v8, 0x0

    aput v8, v2, v3

    .line 155
    :cond_10
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 156
    .restart local v5    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_search;
    move-wide/from16 v0, v18

    long-to-int v2, v0

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 157
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v2, :cond_2

    .line 160
    const/16 v2, 0x15

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 161
    move-object/from16 v0, p0

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 162
    iput v15, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    .line 163
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v2, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 164
    sget v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastReqId:I

    .line 165
    .local v4, "currentReqId":I
    sput-object p0, Lorg/telegram/messenger/query/MessagesSearchQuery;->lastSearchQuery:Ljava/lang/String;

    .line 166
    move-wide/from16 v6, v18

    .line 167
    .local v6, "queryWithDialogFinal":J
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/query/MessagesSearchQuery$2;

    move-wide/from16 v8, p1

    move/from16 v10, p5

    move-wide/from16 v11, p3

    invoke-direct/range {v3 .. v12}, Lorg/telegram/messenger/query/MessagesSearchQuery$2;-><init>(ILorg/telegram/tgnet/TLRPC$TL_messages_search;JJIJ)V

    const/4 v8, 0x2

    invoke-virtual {v2, v5, v3, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/query/MessagesSearchQuery;->reqId:I

    goto/16 :goto_1
.end method
