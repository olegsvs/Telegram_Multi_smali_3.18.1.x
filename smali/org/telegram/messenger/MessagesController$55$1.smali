.class Lorg/telegram/messenger/MessagesController$55$1;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController$55;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/MessagesController$55;

.field final synthetic val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController$55;Lorg/telegram/tgnet/TLRPC$messages_Dialogs;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/MessagesController$55;

    .prologue
    .line 3092
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$55$1;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 3097
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_a

    .line 3098
    const/16 v21, 0x0

    .line 3099
    .local v21, "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    .line 3100
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3101
    .local v22, "message":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v21, :cond_0

    move-object/from16 v0, v22

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v21

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v2, v3, :cond_1

    .line 3102
    :cond_0
    move-object/from16 v21, v22

    .line 3099
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3105
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    move-object/from16 v0, v21

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 3106
    .local v5, "offsetId":I
    move-object/from16 v0, v21

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 3107
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_6

    .line 3108
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 3109
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 3110
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 3111
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 3112
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3113
    .local v12, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    if-ne v2, v3, :cond_5

    .line 3114
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 3145
    .end local v11    # "a":I
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_3
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3146
    .local v17, "dids":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 3147
    .local v16, "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_d

    .line 3148
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3149
    .local v15, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_b

    .line 3150
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3156
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 3157
    const-string/jumbo v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3159
    :cond_4
    iget-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3160
    iget-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3111
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v16    # "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .end local v17    # "dids":Ljava/lang/StringBuilder;
    .restart local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 3118
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_6
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_8

    .line 3119
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 3120
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 3121
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 3122
    const/4 v11, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 3123
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3124
    .restart local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    if-ne v2, v3, :cond_7

    .line 3125
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 3204
    .end local v5    # "offsetId":I
    .end local v11    # "a":I
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :catch_0
    move-exception v20

    .line 3205
    .local v20, "e":Ljava/lang/Exception;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3206
    new-instance v2, Lorg/telegram/messenger/MessagesController$55$1$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/messenger/MessagesController$55$1$1;-><init>(Lorg/telegram/messenger/MessagesController$55$1;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3213
    .end local v20    # "e":Ljava/lang/Exception;
    :goto_6
    return-void

    .line 3122
    .restart local v5    # "offsetId":I
    .restart local v11    # "a":I
    .restart local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 3129
    .end local v12    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_8
    :try_start_1
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_3

    .line 3130
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 3131
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 3132
    const/4 v2, 0x0

    sput v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 3133
    const/4 v11, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 3134
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$User;

    .line 3135
    .local v23, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v23

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    sget v3, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    if-ne v2, v3, :cond_9

    .line 3136
    move-object/from16 v0, v23

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    sput-wide v2, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    goto/16 :goto_2

    .line 3133
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 3142
    .end local v5    # "offsetId":I
    .end local v11    # "a":I
    .end local v21    # "lastMessage":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v23    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    const/4 v5, -0x1

    .restart local v5    # "offsetId":I
    goto/16 :goto_2

    .line 3151
    .restart local v11    # "a":I
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .restart local v16    # "dialogHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    .restart local v17    # "dids":Ljava/lang/StringBuilder;
    :cond_b
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_c

    .line 3152
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_4

    .line 3154
    :cond_c
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v2, v2

    iput-wide v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto/16 :goto_4

    .line 3162
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "SELECT did FROM dialogs WHERE did IN (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    .line 3163
    .local v13, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_e
    :goto_8
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3164
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 3165
    .local v18, "did":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3166
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v15, :cond_e

    .line 3167
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3168
    const/4 v11, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_e

    .line 3169
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3170
    .restart local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-eqz v2, :cond_10

    .line 3168
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 3173
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3174
    add-int/lit8 v11, v11, -0x1

    .line 3175
    move-object/from16 v0, v22

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v3, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-ne v2, v3, :cond_11

    .line 3176
    const/4 v2, 0x0

    iput v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 3178
    :cond_11
    iget v2, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-nez v2, :cond_f

    goto :goto_8

    .line 3184
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v18    # "did":J
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_12
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3185
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT min(date) FROM dialogs WHERE date != 0 AND did >> 32 IN (0, -1)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v13

    .line 3186
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3187
    const v2, 0x55e4dc70

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 3188
    .local v14, "date":I
    const/4 v11, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_14

    .line 3189
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3190
    .restart local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v0, v22

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    if-ge v2, v14, :cond_13

    .line 3191
    const/4 v5, -0x1

    .line 3192
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3193
    add-int/lit8 v11, v11, -0x1

    .line 3194
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3195
    .restart local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    if-eqz v15, :cond_13

    .line 3196
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3188
    .end local v15    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 3201
    .end local v14    # "date":I
    .end local v22    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_14
    invoke-virtual {v13}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 3203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$55$1;->this$1:Lorg/telegram/messenger/MessagesController$55;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$55;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$55$1;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method
