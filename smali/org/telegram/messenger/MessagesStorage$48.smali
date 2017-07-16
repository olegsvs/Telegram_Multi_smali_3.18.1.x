.class Lorg/telegram/messenger/MessagesStorage$48;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getMessages(JIIIIIIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$classGuid:I

.field final synthetic val$count:I

.field final synthetic val$dialog_id:J

.field final synthetic val$isChannel:Z

.field final synthetic val$loadIndex:I

.field final synthetic val$load_type:I

.field final synthetic val$max_id:I

.field final synthetic val$minDate:I

.field final synthetic val$offset_date:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;IIZJIIIII)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2675
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$count:I

    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$isChannel:Z

    iput-wide p5, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    iput p7, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    iput p8, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    iput p9, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    iput p10, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$classGuid:I

    iput p11, p0, Lorg/telegram/messenger/MessagesStorage$48;->val$loadIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 64

    .prologue
    .line 2678
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 2679
    .local v5, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_messages;
    const/4 v15, 0x0

    .line 2680
    .local v15, "count_unread":I
    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$count:I

    .line 2681
    .local v8, "count_query":I
    const/16 v54, 0x0

    .line 2682
    .local v54, "offset_query":I
    const/4 v13, 0x0

    .line 2683
    .local v13, "min_unread_id":I
    const/4 v14, 0x0

    .line 2684
    .local v14, "last_message_id":I
    const/16 v21, 0x0

    .line 2685
    .local v21, "queryFromServer":Z
    const/16 v16, 0x0

    .line 2686
    .local v16, "max_unread_date":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    int-to-long v0, v4

    move-wide/from16 v46, v0

    .line 2687
    .local v46, "messageMaxId":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    move/from16 v42, v0

    .line 2688
    .local v42, "max_id_query":I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    .line 2689
    .local v9, "max_id_override":I
    const/16 v24, 0x0

    .line 2690
    .local v24, "channelId":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$isChannel:Z

    if-eqz v4, :cond_0

    .line 2691
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    long-to-int v4, v6

    neg-int v0, v4

    move/from16 v24, v0

    .line 2693
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_1

    if-eqz v24, :cond_1

    .line 2694
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v46, v46, v6

    .line 2696
    :cond_1
    const/16 v19, 0x0

    .line 2697
    .local v19, "isEnd":Z
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    const-wide/32 v10, 0xbdb28

    cmp-long v4, v6, v10

    if-nez v4, :cond_19

    const/16 v52, 0xa

    .line 2699
    .local v52, "num":I
    :goto_0
    :try_start_0
    new-instance v60, Ljava/util/ArrayList;

    invoke-direct/range {v60 .. v60}, Ljava/util/ArrayList;-><init>()V

    .line 2700
    .local v60, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2701
    .local v25, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 2702
    .local v57, "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v55, Ljava/util/HashMap;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashMap;-><init>()V

    .line 2703
    .local v55, "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    new-instance v56, Ljava/util/HashMap;

    invoke-direct/range {v56 .. v56}, Ljava/util/HashMap;-><init>()V

    .line 2706
    .local v56, "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    long-to-int v0, v6

    move/from16 v40, v0

    .line 2707
    .local v40, "lower_id":I
    if-eqz v40, :cond_3d

    .line 2708
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1a

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    if-nez v4, :cond_1a

    .line 2709
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SELECT inbox_max, unread_count, date FROM dialogs WHERE did = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2710
    .local v27, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2711
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    add-int/lit8 v13, v4, 0x1

    .line 2712
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 2713
    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 2715
    :cond_2
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2793
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT start FROM messages_holes WHERE uid = %d AND start IN (0, 1)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2794
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2795
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_27

    const/16 v19, 0x1

    .line 2796
    :goto_2
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2815
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_4

    if-eqz v21, :cond_32

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_32

    .line 2816
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT max(mid) FROM messages WHERE uid = %d AND mid > 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2817
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2818
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 2820
    :cond_5
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2822
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    if-eqz v4, :cond_6

    .line 2826
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT max(mid) FROM messages WHERE uid = %d AND date <= %d AND mid > 0"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2827
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2828
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v58

    .line 2832
    .local v58, "startMid":I
    :goto_4
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2833
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT min(mid) FROM messages WHERE uid = %d AND date >= %d AND mid > 0"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2834
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 2835
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v31

    .line 2839
    .local v31, "endMid":I
    :goto_5
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2840
    const/4 v4, -0x1

    move/from16 v0, v58

    if-eq v0, v4, :cond_6

    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_6

    .line 2841
    move/from16 v0, v58

    move/from16 v1, v31

    if-ne v0, v1, :cond_2c

    .line 2842
    move/from16 v42, v58

    .line 2867
    .end local v31    # "endMid":I
    .end local v58    # "startMid":I
    :cond_6
    :goto_6
    if-eqz v42, :cond_2f

    const/16 v26, 0x1

    .line 2868
    .local v26, "containMessage":Z
    :goto_7
    if-eqz v26, :cond_8

    .line 2869
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT start FROM messages_holes WHERE uid = %d AND start < %d AND end > %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2870
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2871
    const/16 v26, 0x0

    .line 2873
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2876
    :cond_8
    if-eqz v26, :cond_31

    .line 2877
    const-wide/16 v36, 0x0

    .line 2878
    .local v36, "holeMessageMaxId":J
    const-wide/16 v38, 0x1

    .line 2879
    .local v38, "holeMessageMinId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT start FROM messages_holes WHERE uid = %d AND start >= %d ORDER BY start ASC LIMIT 1"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2880
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2881
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v36, v0

    .line 2882
    if-eqz v24, :cond_9

    .line 2883
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v36, v36, v6

    .line 2886
    :cond_9
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2887
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT end FROM messages_holes WHERE uid = %d AND end <= %d ORDER BY end DESC LIMIT 1"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2888
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2889
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v38, v0

    .line 2890
    if-eqz v24, :cond_a

    .line 2891
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v38, v38, v6

    .line 2898
    :cond_a
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2899
    const-wide/16 v6, 0x0

    cmp-long v4, v36, v6

    if-nez v4, :cond_b

    const-wide/16 v6, 0x1

    cmp-long v4, v38, v6

    if-eqz v4, :cond_30

    .line 2900
    :cond_b
    const-wide/16 v6, 0x0

    cmp-long v4, v36, v6

    if-nez v4, :cond_c

    .line 2901
    const-wide/32 v36, 0x3b9aca00

    .line 2902
    if-eqz v24, :cond_c

    .line 2903
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v36, v36, v6

    .line 2906
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid <= %d AND m.mid >= %d ORDER BY m.date DESC, m.mid DESC LIMIT %d) UNION SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d AND m.mid <= %d ORDER BY m.date ASC, m.mid ASC LIMIT %d)"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    .line 2907
    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x7

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 2906
    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3052
    .end local v26    # "containMessage":Z
    .end local v36    # "holeMessageMaxId":J
    .end local v38    # "holeMessageMinId":J
    :goto_8
    if-eqz v27, :cond_53

    .line 3053
    :cond_d
    :goto_9
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 3054
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v29

    .line 3055
    .local v29, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v29, :cond_d

    .line 3056
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v4, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v43

    .line 3057
    .local v43, "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3058
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessageObject;->setUnreadFlags(Lorg/telegram/tgnet/TLRPC$Message;I)V

    .line 3059
    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3060
    const/4 v4, 0x4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 3061
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, v43

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3062
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_e

    .line 3063
    const/4 v4, 0x7

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 3065
    :cond_e
    if-eqz v40, :cond_f

    .line 3066
    const/16 v4, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 3068
    :cond_f
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3070
    move-object/from16 v0, v43

    move-object/from16 v1, v60

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3072
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    if-nez v4, :cond_10

    move-object/from16 v0, v43

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-eqz v4, :cond_15

    .line 3073
    :cond_10
    const/4 v4, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3074
    const/4 v4, 0x6

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v29

    .line 3075
    if-eqz v29, :cond_11

    .line 3076
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v4, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v4

    move-object/from16 v0, v43

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 3077
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3078
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_11

    .line 3079
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v60

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3083
    :cond_11
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v4, :cond_15

    .line 3084
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    if-eqz v4, :cond_4f

    .line 3085
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    int-to-long v0, v4

    move-wide/from16 v44, v0

    .line 3086
    .local v44, "messageId":J
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_12

    .line 3087
    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v44, v44, v6

    .line 3089
    :cond_12
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 3090
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3092
    :cond_13
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/ArrayList;

    .line 3093
    .local v48, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-nez v48, :cond_14

    .line 3094
    new-instance v48, Ljava/util/ArrayList;

    .end local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 3095
    .restart local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3097
    :cond_14
    move-object/from16 v0, v48

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3111
    .end local v44    # "messageId":J
    .end local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_15
    :goto_a
    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 3112
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-lez v4, :cond_16

    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v4, :cond_16

    .line 3113
    const/4 v4, 0x0

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 3115
    :cond_16
    if-nez v40, :cond_17

    const/4 v4, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_17

    .line 3116
    const/4 v4, 0x5

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    move-object/from16 v0, v43

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 3118
    :cond_17
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    long-to-int v4, v6

    if-nez v4, :cond_d

    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_d

    move-object/from16 v0, v43

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_d

    .line 3120
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT date FROM enc_tasks_v2 WHERE mid = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, v43

    iget v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v28

    .line 3121
    .local v28, "cursor2":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3122
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->destroyTime:I

    .line 3124
    :cond_18
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_9

    .line 3125
    .end local v28    # "cursor2":Lorg/telegram/SQLite/SQLiteCursor;
    :catch_0
    move-exception v30

    .line 3126
    .local v30, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    .line 3228
    .end local v25    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v30    # "e":Ljava/lang/Exception;
    .end local v40    # "lower_id":I
    .end local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v55    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .end local v56    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .end local v57    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v60    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v30

    .line 3229
    .restart local v30    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3230
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3231
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3232
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3234
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$classGuid:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$isChannel:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$loadIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v4 .. v21}, Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V

    .line 3236
    .end local v30    # "e":Ljava/lang/Exception;
    :goto_b
    return-void

    .line 2697
    .end local v52    # "num":I
    :cond_19
    const/16 v52, 0x1

    goto/16 :goto_0

    .line 2716
    .restart local v25    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v40    # "lower_id":I
    .restart local v52    # "num":I
    .restart local v55    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .restart local v56    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .restart local v57    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v60    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1a
    :try_start_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    if-nez v4, :cond_3

    .line 2717
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1e

    .line 2718
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SELECT inbox_max, unread_count, date FROM dialogs WHERE did = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2719
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2720
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    move/from16 v42, v13

    int-to-long v0, v13

    move-wide/from16 v46, v0

    .line 2721
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 2722
    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 2723
    const/16 v21, 0x1

    .line 2724
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_1b

    if-eqz v24, :cond_1b

    .line 2725
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v46, v46, v6

    .line 2728
    :cond_1b
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2729
    if-nez v21, :cond_20

    .line 2730
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT min(mid), max(date) FROM messages WHERE uid = %d AND out = 0 AND read_state IN(0,2) AND mid > 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2731
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2732
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 2733
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 2735
    :cond_1c
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2736
    if-eqz v13, :cond_1e

    .line 2737
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT COUNT(*) FROM messages WHERE uid = %d AND mid >= %d AND out = 0 AND read_state IN(0,2)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2738
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2739
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 2741
    :cond_1d
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2778
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_1e
    :goto_c
    if-gt v8, v15, :cond_1f

    move/from16 v0, v52

    if-ge v15, v0, :cond_26

    .line 2779
    :cond_1f
    add-int/lit8 v4, v15, 0xa

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2780
    move/from16 v0, v52

    if-ge v15, v0, :cond_3

    .line 2781
    const/4 v15, 0x0

    .line 2782
    const/4 v13, 0x0

    .line 2783
    const-wide/16 v46, 0x0

    .line 2784
    const/4 v14, 0x0

    .line 2785
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 2743
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_20
    if-nez v42, :cond_23

    .line 2744
    const/16 v33, 0x0

    .line 2745
    .local v33, "existingUnreadCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT COUNT(*) FROM messages WHERE uid = %d AND mid > 0 AND out = 0 AND read_state IN(0,2)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2746
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2747
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v33

    .line 2749
    :cond_21
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2750
    move/from16 v0, v33

    if-ne v0, v15, :cond_1e

    .line 2751
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT min(mid) FROM messages WHERE uid = %d AND out = 0 AND read_state IN(0,2) AND mid > 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2752
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2753
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    move/from16 v42, v13

    int-to-long v0, v13

    move-wide/from16 v46, v0

    .line 2754
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_22

    if-eqz v24, :cond_22

    .line 2755
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v46, v46, v6

    .line 2758
    :cond_22
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_c

    .line 3234
    .end local v25    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v33    # "existingUnreadCount":I
    .end local v40    # "lower_id":I
    .end local v55    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .end local v56    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .end local v57    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v60    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    move-object/from16 v61, v4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$classGuid:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$isChannel:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$loadIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v4 .. v21}, Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V

    throw v61

    .line 2761
    .restart local v25    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v40    # "lower_id":I
    .restart local v55    # "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .restart local v56    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    .restart local v57    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v60    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_23
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT start, end FROM messages_holes WHERE uid = %d AND start < %d AND end > %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2762
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-nez v4, :cond_25

    const/16 v26, 0x1

    .line 2763
    .restart local v26    # "containMessage":Z
    :goto_d
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2765
    if-eqz v26, :cond_1e

    .line 2766
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT min(mid) FROM messages WHERE uid = %d AND out = 0 AND read_state IN(0,2) AND mid > %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2767
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2768
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v46, v0

    .line 2769
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_24

    if-eqz v24, :cond_24

    .line 2770
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v46, v46, v6

    .line 2773
    :cond_24
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto/16 :goto_c

    .line 2762
    .end local v26    # "containMessage":Z
    :cond_25
    const/16 v26, 0x0

    goto :goto_d

    .line 2788
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_26
    sub-int v54, v15, v8

    .line 2789
    add-int/lit8 v8, v8, 0xa

    goto/16 :goto_1

    .line 2795
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_27
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 2798
    :cond_28
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2799
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT min(mid) FROM messages WHERE uid = %d AND mid > 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2800
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2801
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v49

    .line 2802
    .local v49, "mid":I
    if-eqz v49, :cond_29

    .line 2803
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v6, "REPLACE INTO messages_holes VALUES(?, ?, ?)"

    invoke-virtual {v4, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v59

    .line 2804
    .local v59, "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    invoke-virtual/range {v59 .. v59}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 2805
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v6, v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    .line 2806
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-virtual {v0, v4, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2807
    const/4 v4, 0x3

    move-object/from16 v0, v59

    move/from16 v1, v49

    invoke-virtual {v0, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 2808
    invoke-virtual/range {v59 .. v59}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 2809
    invoke-virtual/range {v59 .. v59}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 2812
    .end local v49    # "mid":I
    .end local v59    # "state":Lorg/telegram/SQLite/SQLitePreparedStatement;
    :cond_29
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto/16 :goto_3

    .line 2830
    :cond_2a
    const/16 v58, -0x1

    .restart local v58    # "startMid":I
    goto/16 :goto_4

    .line 2837
    :cond_2b
    const/16 v31, -0x1

    .restart local v31    # "endMid":I
    goto/16 :goto_5

    .line 2844
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT start FROM messages_holes WHERE uid = %d AND start <= %d AND end > %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2845
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2846
    const/16 v58, -0x1

    .line 2848
    :cond_2d
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2849
    const/4 v4, -0x1

    move/from16 v0, v58

    if-eq v0, v4, :cond_6

    .line 2850
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT start FROM messages_holes WHERE uid = %d AND start <= %d AND end > %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2851
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2852
    const/16 v31, -0x1

    .line 2854
    :cond_2e
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2855
    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_6

    .line 2856
    move/from16 v9, v31

    .line 2857
    move/from16 v42, v31

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v46, v0

    .line 2858
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_6

    if-eqz v24, :cond_6

    .line 2859
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v46, v46, v6

    goto/16 :goto_6

    .line 2867
    .end local v31    # "endMid":I
    .end local v58    # "startMid":I
    :cond_2f
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 2909
    .restart local v26    # "containMessage":Z
    .restart local v36    # "holeMessageMaxId":J
    .restart local v38    # "holeMessageMinId":J
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid <= %d ORDER BY m.date DESC, m.mid DESC LIMIT %d) UNION SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d ORDER BY m.date ASC, m.mid ASC LIMIT %d)"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    .line 2910
    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 2909
    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_8

    .line 2913
    .end local v36    # "holeMessageMaxId":J
    .end local v38    # "holeMessageMinId":J
    :cond_31
    const/16 v27, 0x0

    goto/16 :goto_8

    .line 2915
    .end local v26    # "containMessage":Z
    :cond_32
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_35

    .line 2916
    const-wide/16 v34, 0x0

    .line 2917
    .local v34, "holeMessageId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT start, end FROM messages_holes WHERE uid = %d AND start >= %d AND start != 1 AND end != 1 ORDER BY start ASC LIMIT 1"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2918
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2919
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    .line 2920
    if-eqz v24, :cond_33

    .line 2921
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v34, v34, v6

    .line 2924
    :cond_33
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2925
    const-wide/16 v6, 0x0

    cmp-long v4, v34, v6

    if-eqz v4, :cond_34

    .line 2926
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date >= %d AND m.mid > %d AND m.mid <= %d ORDER BY m.date ASC, m.mid ASC LIMIT %d"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_8

    .line 2928
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date >= %d AND m.mid > %d ORDER BY m.date ASC, m.mid ASC LIMIT %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_8

    .line 2930
    .end local v34    # "holeMessageId":J
    :cond_35
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    if-eqz v4, :cond_39

    .line 2931
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_38

    .line 2932
    const-wide/16 v34, 0x0

    .line 2933
    .restart local v34    # "holeMessageId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT end FROM messages_holes WHERE uid = %d AND end <= %d ORDER BY end DESC LIMIT 1"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2934
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2935
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    .line 2936
    if-eqz v24, :cond_36

    .line 2937
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v34, v34, v6

    .line 2940
    :cond_36
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2941
    const-wide/16 v6, 0x0

    cmp-long v4, v34, v6

    if-eqz v4, :cond_37

    .line 2942
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date <= %d AND m.mid < %d AND (m.mid >= %d OR m.mid < 0) ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_8

    .line 2944
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date <= %d AND m.mid < %d ORDER BY m.date DESC, m.mid DESC LIMIT %d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_8

    .line 2947
    .end local v34    # "holeMessageId":J
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date <= %d ORDER BY m.date DESC, m.mid DESC LIMIT %d,%d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_8

    .line 2950
    :cond_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT max(mid) FROM messages WHERE uid = %d AND mid > 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2951
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2952
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 2954
    :cond_3a
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2956
    const-wide/16 v34, 0x0

    .line 2957
    .restart local v34    # "holeMessageId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT max(end) FROM messages_holes WHERE uid = %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2958
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 2959
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    .line 2960
    if-eqz v24, :cond_3b

    .line 2961
    move/from16 v0, v24

    int-to-long v6, v0

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long v34, v34, v6

    .line 2964
    :cond_3b
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2965
    const-wide/16 v6, 0x0

    cmp-long v4, v34, v6

    if-eqz v4, :cond_3c

    .line 2966
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND (m.mid >= %d OR m.mid < 0) ORDER BY m.date DESC, m.mid DESC LIMIT %d,%d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_8

    .line 2968
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d ORDER BY m.date DESC, m.mid DESC LIMIT %d,%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_8

    .line 2972
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v34    # "holeMessageId":J
    :cond_3d
    const/16 v19, 0x1

    .line 2974
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_41

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    if-nez v4, :cond_41

    .line 2975
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT min(mid) FROM messages WHERE uid = %d AND mid < 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2976
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2977
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 2979
    :cond_3e
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2981
    const/16 v51, 0x0

    .line 2982
    .local v51, "min_unread_id2":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT max(mid), max(date) FROM messages WHERE uid = %d AND out = 0 AND read_state IN(0,2) AND mid < 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2983
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2984
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v51

    .line 2985
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 2987
    :cond_3f
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2988
    if-eqz v51, :cond_41

    .line 2989
    move/from16 v13, v51

    .line 2990
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT COUNT(*) FROM messages WHERE uid = %d AND mid <= %d AND out = 0 AND read_state IN(0,2)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 2991
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2992
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 2994
    :cond_40
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2998
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v51    # "min_unread_id2":I
    :cond_41
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_42

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_44

    .line 2999
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT min(mid) FROM messages WHERE uid = %d AND mid < 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3000
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 3001
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 3003
    :cond_43
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3005
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid <= %d ORDER BY m.mid DESC LIMIT %d) UNION SELECT * FROM (SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d ORDER BY m.mid ASC LIMIT %d)"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    .line 3006
    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    div-int/lit8 v12, v8, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 3005
    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_8

    .line 3007
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_44
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_45

    .line 3008
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid < %d ORDER BY m.mid DESC LIMIT %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_8

    .line 3009
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_45
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    if-eqz v4, :cond_47

    .line 3010
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    if-eqz v4, :cond_46

    .line 3011
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.mid > %d ORDER BY m.mid ASC LIMIT %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$max_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_8

    .line 3013
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d AND m.date <= %d ORDER BY m.mid ASC LIMIT %d,%d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$minDate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_8

    .line 3016
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_47
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4b

    .line 3017
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT min(mid) FROM messages WHERE uid = %d AND mid < 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3018
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 3019
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    .line 3021
    :cond_48
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3023
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT max(mid), max(date) FROM messages WHERE uid = %d AND out = 0 AND read_state IN(0,2) AND mid < 0"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3024
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 3025
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    .line 3026
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v16

    .line 3028
    :cond_49
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3029
    if-eqz v13, :cond_4b

    .line 3030
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT COUNT(*) FROM messages WHERE uid = %d AND mid <= %d AND out = 0 AND read_state IN(0,2)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3031
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 3032
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v15

    .line 3034
    :cond_4a
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3038
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_4b
    if-gt v8, v15, :cond_4c

    move/from16 v0, v52

    if-ge v15, v0, :cond_4e

    .line 3039
    :cond_4c
    add-int/lit8 v4, v15, 0xa

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3040
    move/from16 v0, v52

    if-ge v15, v0, :cond_4d

    .line 3041
    const/4 v15, 0x0

    .line 3042
    const/4 v13, 0x0

    .line 3043
    const/4 v14, 0x0

    .line 3049
    :cond_4d
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.read_state, m.data, m.send_state, m.mid, m.date, r.random_id, m.replydata, m.media, m.ttl FROM messages as m LEFT JOIN randoms as r ON r.mid = m.mid WHERE m.uid = %d ORDER BY m.mid ASC LIMIT %d,%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-wide/from16 v62, v0

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    goto/16 :goto_8

    .line 3046
    .end local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_4e
    sub-int v54, v15, v8

    .line 3047
    add-int/lit8 v8, v8, 0xa

    goto :goto_e

    .line 3099
    .restart local v27    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_4f
    move-object/from16 v0, v43

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 3100
    move-object/from16 v0, v43

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3102
    :cond_50
    move-object/from16 v0, v43

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/ArrayList;

    .line 3103
    .restart local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-nez v48, :cond_51

    .line 3104
    new-instance v48, Ljava/util/ArrayList;

    .end local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 3105
    .restart local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v43

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v56

    move-object/from16 v1, v48

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    :cond_51
    move-object/from16 v0, v48

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 3131
    .end local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v48    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_52
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3134
    :cond_53
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/messenger/MessagesStorage$48$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/telegram/messenger/MessagesStorage$48$1;-><init>(Lorg/telegram/messenger/MessagesStorage$48;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3160
    if-eqz v40, :cond_58

    .line 3161
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_54

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_54

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_56

    if-eqz v21, :cond_56

    :cond_54
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_56

    .line 3162
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v50, v0

    .line 3163
    .local v50, "minId":I
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v41, v0

    .line 3164
    .local v41, "maxId":I
    move/from16 v0, v50

    move/from16 v1, v42

    if-gt v0, v1, :cond_55

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_56

    .line 3165
    :cond_55
    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->clear()V

    .line 3166
    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    .line 3167
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 3168
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3171
    .end local v41    # "maxId":I
    .end local v50    # "minId":I
    :cond_56
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_57

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_58

    :cond_57
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_58

    .line 3172
    iget-object v4, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3175
    :cond_58
    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 3176
    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 3177
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT data, mid, date FROM messages WHERE mid IN(%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, ","

    move-object/from16 v0, v57

    invoke-static {v12, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    .line 3181
    :cond_59
    :goto_f
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 3182
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v29

    .line 3183
    .restart local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v29, :cond_59

    .line 3184
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v4, v6}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v43

    .line 3185
    .restart local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 3186
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3187
    const/4 v4, 0x2

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 3188
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, v43

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 3190
    move-object/from16 v0, v43

    move-object/from16 v1, v60

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3192
    invoke-virtual/range {v55 .. v55}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 3193
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 3194
    .local v23, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v23, :cond_59

    .line 3195
    const/16 v22, 0x0

    .local v22, "a":I
    :goto_10
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_59

    .line 3196
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v43

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 3195
    add-int/lit8 v22, v22, 0x1

    goto :goto_10

    .line 3179
    .end local v22    # "a":I
    .end local v23    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "SELECT m.data, m.mid, m.date, r.random_id FROM randoms as r INNER JOIN messages as m ON r.mid = m.mid WHERE r.random_id IN(%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, ","

    move-object/from16 v0, v57

    invoke-static {v12, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v27

    goto/16 :goto_f

    .line 3200
    .restart local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5b
    const/4 v4, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 3201
    .restart local v23    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    if-eqz v23, :cond_59

    .line 3202
    const/16 v22, 0x0

    .restart local v22    # "a":I
    :goto_11
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_59

    .line 3203
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3204
    .local v53, "object":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v43

    move-object/from16 v1, v53

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->replyMessage:Lorg/telegram/tgnet/TLRPC$Message;

    .line 3205
    move-object/from16 v0, v43

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v53

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 3202
    add-int/lit8 v22, v22, 0x1

    goto :goto_11

    .line 3211
    .end local v22    # "a":I
    .end local v23    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v29    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v43    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v53    # "object":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5c
    invoke-virtual/range {v27 .. v27}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3212
    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 3213
    invoke-virtual/range {v56 .. v56}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/Map$Entry;

    .line 3214
    .local v32, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    .line 3215
    .restart local v23    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/16 v22, 0x0

    .restart local v22    # "a":I
    :goto_12
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_5d

    .line 3216
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Message;

    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    .line 3215
    add-int/lit8 v22, v22, 0x1

    goto :goto_12

    .line 3222
    .end local v22    # "a":I
    .end local v23    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v32    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;>;"
    :cond_5e
    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5f

    .line 3223
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v6, ","

    move-object/from16 v0, v60

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3225
    :cond_5f
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_60

    .line 3226
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesStorage$48;->this$0:Lorg/telegram/messenger/MessagesStorage;

    const-string/jumbo v6, ","

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3234
    :cond_60
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$dialog_id:J

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$offset_date:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$classGuid:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$load_type:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$isChannel:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesStorage$48;->val$loadIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v4 .. v21}, Lorg/telegram/messenger/MessagesController;->processLoadedMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIIZIIIIIIZZIZ)V

    goto/16 :goto_b
.end method
