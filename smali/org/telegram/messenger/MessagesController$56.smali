.class Lorg/telegram/messenger/MessagesController$56;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$count:I

.field final synthetic val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

.field final synthetic val$encChats:Ljava/util/ArrayList;

.field final synthetic val$fromCache:Z

.field final synthetic val$loadType:I

.field final synthetic val$migrate:Z

.field final synthetic val$offset:I

.field final synthetic val$resetEnd:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$messages_Dialogs;ZIILjava/util/ArrayList;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesController;

    .prologue
    .line 3162
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iput-boolean p4, p0, Lorg/telegram/messenger/MessagesController$56;->val$resetEnd:Z

    iput p5, p0, Lorg/telegram/messenger/MessagesController$56;->val$count:I

    iput p6, p0, Lorg/telegram/messenger/MessagesController$56;->val$offset:I

    iput-object p7, p0, Lorg/telegram/messenger/MessagesController$56;->val$encChats:Ljava/util/ArrayList;

    iput-boolean p8, p0, Lorg/telegram/messenger/MessagesController$56;->val$migrate:Z

    iput-boolean p9, p0, Lorg/telegram/messenger/MessagesController$56;->val$fromCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 3165
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    if-nez v2, :cond_0

    .line 3166
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getNewDeleteTask(Ljava/util/ArrayList;)V

    .line 3167
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/telegram/messenger/MessagesController;->firstGettingTask:Z

    .line 3170
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loaded loadType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 3171
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3172
    new-instance v2, Lorg/telegram/messenger/MessagesController$56$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/messenger/MessagesController$56$1;-><init>(Lorg/telegram/messenger/MessagesController$56;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3446
    :goto_0
    return-void

    .line 3188
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3189
    .local v4, "new_dialogs_dict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3190
    .local v5, "new_dialogMessage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/messenger/MessageObject;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 3191
    .local v19, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3193
    .local v6, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 3194
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/tgnet/TLRPC$User;

    .line 3195
    .local v17, "u":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v17

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3193
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3197
    .end local v17    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_3

    .line 3198
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3199
    .local v10, "c":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3201
    .end local v10    # "c":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 3202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/MessagesController$56;->val$offset:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController$56;->val$count:I

    move/from16 v21, v0

    add-int v3, v3, v21

    iput v3, v2, Lorg/telegram/messenger/MessagesController;->nextDialogsCacheOffset:I

    .line 3205
    :cond_4
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_9

    .line 3206
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3207
    .local v14, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_8

    .line 3208
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3209
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v11, :cond_5

    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v2, :cond_5

    .line 3205
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 3212
    .restart local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    if-eqz v11, :cond_6

    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_6

    .line 3213
    iget v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 3221
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    iget-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-nez v2, :cond_7

    .line 3222
    const/4 v2, 0x1

    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 3224
    :cond_7
    new-instance v15, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-direct {v15, v14, v0, v6, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 3225
    .local v15, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 3215
    .end local v15    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_8
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_6

    .line 3216
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3217
    .restart local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v11, :cond_6

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v2, :cond_6

    goto :goto_4

    .line 3228
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v14    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3229
    .local v7, "dialogsToReload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_18

    .line 3230
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 3231
    .local v12, "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const-wide/16 v22, 0x0

    cmp-long v2, v2, v22

    if-nez v2, :cond_a

    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v2, :cond_a

    .line 3232
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_c

    .line 3233
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v2, v2

    iput-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 3240
    :cond_a
    :goto_6
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const-wide/16 v22, 0x0

    cmp-long v2, v2, v22

    if-nez v2, :cond_e

    .line 3229
    :cond_b
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3234
    :cond_c
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_d

    .line 3235
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_6

    .line 3236
    :cond_d
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_a

    .line 3237
    iget-object v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    int-to-long v2, v2

    iput-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_6

    .line 3243
    :cond_e
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    if-nez v2, :cond_f

    .line 3244
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    .line 3245
    .local v13, "mess":Lorg/telegram/messenger/MessageObject;
    if-eqz v13, :cond_f

    .line 3246
    iget-object v2, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 3249
    .end local v13    # "mess":Lorg/telegram/messenger/MessageObject;
    :cond_f
    const/4 v9, 0x1

    .line 3250
    .local v9, "allowCheck":Z
    invoke-static {v12}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3251
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3252
    .restart local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v11, :cond_11

    .line 3253
    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_10

    .line 3254
    const/4 v9, 0x0

    .line 3256
    :cond_10
    iget-boolean v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v2, :cond_b

    .line 3260
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$1400(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v2

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v3, v0

    neg-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->pts:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3267
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_12
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3269
    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    if-eqz v2, :cond_13

    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    if-nez v2, :cond_14

    :cond_13
    iget v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    if-eqz v2, :cond_14

    .line 3270
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3273
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 3274
    .local v20, "value":Ljava/lang/Integer;
    if-nez v20, :cond_15

    .line 3275
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 3277
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_inbox_max_id:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3279
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "value":Ljava/lang/Integer;
    check-cast v20, Ljava/lang/Integer;

    .line 3280
    .restart local v20    # "value":Ljava/lang/Integer;
    if-nez v20, :cond_16

    .line 3281
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 3283
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->read_outbox_max_id:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 3261
    .end local v20    # "value":Ljava/lang/Integer;
    :cond_17
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    if-gez v2, :cond_12

    .line 3262
    iget-wide v2, v12, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3263
    .restart local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v11, :cond_12

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v2, :cond_12

    goto/16 :goto_7

    .line 3286
    .end local v9    # "allowCheck":Z
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v12    # "d":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_21

    .line 3287
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->saveMessagesThumbs(Ljava/util/ArrayList;)V

    .line 3289
    const/4 v8, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_20

    .line 3290
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Message;

    .line 3291
    .restart local v14    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    if-eqz v2, :cond_19

    .line 3292
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->hideLeftGroup:Z

    if-eqz v2, :cond_1b

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-ne v2, v3, :cond_1b

    .line 3302
    :cond_19
    :goto_9
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    if-nez v2, :cond_1a

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v2, :cond_1c

    .line 3303
    :cond_1a
    const/4 v2, 0x0

    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 3304
    const/4 v2, 0x0

    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 3289
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 3295
    :cond_1b
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->user_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$User;

    .line 3296
    .local v18, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v18, :cond_19

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_19

    .line 3297
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_replyKeyboardHide;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    goto :goto_9

    .line 3306
    .end local v18    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1c
    iget-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    .line 3307
    .local v16, "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :goto_b
    iget-wide v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 3308
    .restart local v20    # "value":Ljava/lang/Integer;
    if-nez v20, :cond_1d

    .line 3309
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-boolean v3, v14, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    iget-wide v0, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v2, v3, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 3310
    iget-wide v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3312
    :cond_1d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v14, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge v2, v3, :cond_1f

    const/4 v2, 0x1

    :goto_c
    iput-boolean v2, v14, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto :goto_a

    .line 3306
    .end local v16    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v20    # "value":Ljava/lang/Integer;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v0, v2, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    goto :goto_b

    .line 3312
    .restart local v16    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v20    # "value":Ljava/lang/Integer;
    :cond_1f
    const/4 v2, 0x0

    goto :goto_c

    .line 3315
    .end local v14    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v16    # "read_max":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v20    # "value":Ljava/lang/Integer;
    :cond_20
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesStorage;->putDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Z)V

    .line 3317
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$loadType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    .line 3318
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->val$dialogsRes:Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3319
    .restart local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/MessagesController;->access$4300(Lorg/telegram/messenger/MessagesController;I)V

    .line 3320
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$56;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->checkChannelInviter(I)V

    .line 3323
    .end local v11    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_22
    new-instance v2, Lorg/telegram/messenger/MessagesController$56$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/MessagesController$56$2;-><init>(Lorg/telegram/messenger/MessagesController$56;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
