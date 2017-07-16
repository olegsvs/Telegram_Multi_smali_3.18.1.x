.class public Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatActivityAdapter"
.end annotation


# instance fields
.field private botInfoRow:I

.field private isBot:Z

.field private loadingDownRow:I

.field private loadingUpRow:I

.field private mContext:Landroid/content/Context;

.field private messagesEndRow:I

.field private messagesStartRow:I

.field private rowCount:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 10155
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 10149
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 10156
    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    .line 10157
    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z

    .line 10158
    return-void

    .line 10157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$13900(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10144
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    return v0
.end method

.method static synthetic access$15200(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10144
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    return v0
.end method

.method static synthetic access$18300(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10144
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$20300(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 10144
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->openUserProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static synthetic access$20400(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 10144
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->kickUser(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static synthetic access$20500(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10144
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getChannelParticipants()V

    return-void
.end method

.method static synthetic access$20600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 10144
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->showUserMsgs(I)V

    return-void
.end method

.method static synthetic access$20700(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 10144
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->showUserMedia(I)V

    return-void
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    .prologue
    .line 10144
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z

    return v0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;ILorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "x3"    # Z

    .prologue
    .line 10144
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->createAvatarClickMenu(ILorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method private createAvatarClickMenu(ILorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 24
    .param p1, "fromId"    # I
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p3, "long_click"    # Z

    .prologue
    .line 10867
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    long-to-int v4, v4

    if-gez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    const/16 v18, 0x1

    .line 10869
    .local v18, "isChat":Z
    :goto_0
    if-eqz v18, :cond_19

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-eq v4, v5, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    if-eqz p3, :cond_19

    .line 10870
    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v21

    .line 10871
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 10872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 10874
    :cond_2
    const/4 v12, 0x0

    .line 10875
    .local v12, "allowKick":Z
    const/4 v13, 0x0

    .line 10876
    .local v13, "allowSetAdmin":Z
    const/16 v23, 0x0

    .line 10877
    .local v23, "removeAdmin":Z
    const/16 v17, -0x1

    .line 10878
    .local v17, "index":I
    const/16 v16, 0x0

    .line 10880
    .local v16, "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-eq v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v4, :cond_6

    .line 10881
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_d

    .line 10882
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_6

    .line 10883
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 10884
    .local v22, "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    if-eqz v4, :cond_c

    .line 10885
    check-cast v22, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    .end local v22    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    move-object/from16 v0, v22

    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 10886
    .local v15, "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v4, v15, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v4, v5, :cond_c

    .line 10887
    move/from16 v17, v11

    .line 10888
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-eqz v4, :cond_3

    instance-of v4, v15, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    if-nez v4, :cond_3

    instance-of v4, v15, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v4, :cond_4

    :cond_3
    iget v4, v15, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 10889
    :cond_4
    const/4 v12, 0x1

    .line 10891
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v4, :cond_a

    instance-of v4, v15, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    if-nez v4, :cond_a

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v4, :cond_a

    const/4 v13, 0x1

    .line 10892
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v4, :cond_b

    instance-of v4, v15, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    if-eqz v4, :cond_b

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v4, :cond_b

    const/16 v23, 0x1

    .line 10914
    .end local v11    # "a":I
    .end local v15    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_6
    :goto_3
    new-instance v14, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v14, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10915
    .local v14, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 10916
    move/from16 v8, v17

    .line 10917
    .local v8, "finalIndex":I
    move-object/from16 v9, v16

    .line 10918
    .local v9, "finalChatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    move/from16 v7, v23

    .line 10919
    .local v7, "finalRemoveAdmin":Z
    if-nez v13, :cond_7

    if-eqz v23, :cond_15

    .line 10920
    :cond_7
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 10921
    .local v20, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "ShowProfile"

    const v5, 0x7f0705de

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10922
    const-string/jumbo v4, "KickFromGroup"

    const v5, 0x7f070319

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10923
    if-eqz v23, :cond_14

    const-string/jumbo v4, "RemoveUserAdmin"

    const v5, 0x7f070511

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10924
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-nez v4, :cond_8

    .line 10925
    const-string/jumbo v4, "ShowUserMessages"

    const v5, 0x7f0705e4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10926
    const-string/jumbo v4, "ShowUserMedia"

    const v5, 0x7f0705e3

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10928
    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    .line 10930
    .local v19, "items":[Ljava/lang/CharSequence;
    new-instance v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$6;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;ZILorg/telegram/tgnet/TLRPC$ChatParticipant;I)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 11004
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 11059
    .end local v7    # "finalRemoveAdmin":Z
    .end local v8    # "finalIndex":I
    .end local v9    # "finalChatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v12    # "allowKick":Z
    .end local v13    # "allowSetAdmin":Z
    .end local v14    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v16    # "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v17    # "index":I
    .end local v19    # "items":[Ljava/lang/CharSequence;
    .end local v20    # "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "removeAdmin":Z
    :goto_5
    return-void

    .line 10867
    .end local v18    # "isChat":Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 10891
    .restart local v11    # "a":I
    .restart local v12    # "allowKick":Z
    .restart local v13    # "allowSetAdmin":Z
    .restart local v15    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .restart local v16    # "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .restart local v17    # "index":I
    .restart local v18    # "isChat":Z
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v23    # "removeAdmin":Z
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 10892
    :cond_b
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 10882
    .end local v15    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 10898
    .end local v11    # "a":I
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_6

    .line 10899
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 10900
    .restart local v22    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    move-object/from16 v0, v22

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v4, v5, :cond_13

    .line 10901
    move-object/from16 v16, v22

    .line 10902
    move/from16 v17, v11

    .line 10903
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-nez v4, :cond_e

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v4, :cond_f

    :cond_e
    move-object/from16 v0, v22

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-ne v4, v5, :cond_10

    .line 10904
    :cond_f
    const/4 v12, 0x1

    .line 10906
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-nez v4, :cond_11

    const/4 v13, 0x1

    .line 10907
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v4, :cond_12

    const/16 v23, 0x1

    .line 10908
    :goto_8
    goto/16 :goto_3

    .line 10906
    :cond_11
    const/4 v13, 0x0

    goto :goto_7

    .line 10907
    :cond_12
    const/16 v23, 0x0

    goto :goto_8

    .line 10898
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 10923
    .end local v11    # "a":I
    .end local v22    # "p":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .restart local v7    # "finalRemoveAdmin":Z
    .restart local v8    # "finalIndex":I
    .restart local v9    # "finalChatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .restart local v14    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .restart local v20    # "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_14
    const-string/jumbo v4, "SetAsAdmin"

    const v5, 0x7f0705b2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 11005
    .end local v20    # "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_15
    if-eqz v12, :cond_17

    .line 11006
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 11007
    .restart local v20    # "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "ShowProfile"

    const v5, 0x7f0705de

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11008
    const-string/jumbo v4, "KickFromGroup"

    const v5, 0x7f070319

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11009
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-nez v4, :cond_16

    .line 11010
    const-string/jumbo v4, "ShowUserMessages"

    const v5, 0x7f0705e4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11011
    const-string/jumbo v4, "ShowUserMedia"

    const v5, 0x7f0705e3

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11013
    :cond_16
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    .line 11015
    .restart local v19    # "items":[Ljava/lang/CharSequence;
    new-instance v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$7;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;I)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 11030
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 11031
    .end local v19    # "items":[Ljava/lang/CharSequence;
    .end local v20    # "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_17
    if-eqz p3, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-nez v4, :cond_18

    .line 11040
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const-string/jumbo v6, "ShowUserMessages"

    const v10, 0x7f0705e4

    invoke-static {v6, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "ShowUserMedia"

    const v10, 0x7f0705e3

    invoke-static {v6, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$8;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$8;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;I)V

    invoke-virtual {v14, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 11051
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 11053
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->openUserProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_5

    .line 11056
    .end local v7    # "finalRemoveAdmin":Z
    .end local v8    # "finalIndex":I
    .end local v9    # "finalChatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v12    # "allowKick":Z
    .end local v13    # "allowSetAdmin":Z
    .end local v14    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v16    # "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v17    # "index":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "removeAdmin":Z
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->openUserProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    goto/16 :goto_5
.end method

.method private getChannelParticipants()V
    .locals 4

    .prologue
    .line 11074
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 11075
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 11076
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 11077
    const/4 v2, 0x0

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 11078
    const/16 v2, 0x21

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 11079
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$9;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 11100
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$20800(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 11101
    return-void
.end method

.method private kickUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 4
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 11104
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 11105
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KickFromGroup"

    const v3, 0x7f070319

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "AreYouSure"

    const v3, 0x7f070089

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 11106
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 11107
    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$10;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$10;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 11131
    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0700f0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 11132
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 11133
    return-void
.end method

.method private openUserProfile(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 5
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 11063
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11064
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "user_id"

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11065
    new-instance v2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 11066
    .local v2, "fragment":Lorg/telegram/ui/ProfileActivity;
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(Z)V

    .line 11067
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11071
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "fragment":Lorg/telegram/ui/ProfileActivity;
    :goto_1
    return-void

    .line 11066
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "fragment":Lorg/telegram/ui/ProfileActivity;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 11068
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "fragment":Lorg/telegram/ui/ProfileActivity;
    :catch_0
    move-exception v1

    .line 11069
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private showUserMedia(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 11144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11145
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "chat_id"

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11146
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "only_id"

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11147
    :cond_0
    const-string/jumbo v1, "only_id_media"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11148
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 11149
    return-void
.end method

.method private showUserMsgs(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 11136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11137
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "chat_id"

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11138
    const-string/jumbo v1, "only_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11139
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "only_id_media"

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11140
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 11141
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 10192
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 10197
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 10725
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v0, :cond_0

    .line 10726
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->contentType:I

    .line 10730
    :goto_0
    return v0

    .line 10727
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    if-ne p1, v0, :cond_1

    .line 10728
    const/4 v0, 0x3

    goto :goto_0

    .line 10730
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 10787
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10789
    :try_start_0
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10793
    :goto_0
    return-void

    .line 10790
    :catch_0
    move-exception v0

    .line 10791
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemChanged(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 10797
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10799
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10803
    :goto_0
    return-void

    .line 10800
    :catch_0
    move-exception v0

    .line 10801
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemInserted(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 10817
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10819
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10823
    :goto_0
    return-void

    .line 10820
    :catch_0
    move-exception v0

    .line 10821
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 10827
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10829
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemMoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10833
    :goto_0
    return-void

    .line 10830
    :catch_0
    move-exception v0

    .line 10831
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 10807
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10809
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10813
    :goto_0
    return-void

    .line 10810
    :catch_0
    move-exception v0

    .line 10811
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 10837
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10839
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10843
    :goto_0
    return-void

    .line 10840
    :catch_0
    move-exception v0

    .line 10841
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 10857
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10859
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10863
    :goto_0
    return-void

    .line 10860
    :catch_0
    move-exception v0

    .line 10861
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyItemRemoved(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 10847
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRows()V

    .line 10849
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10853
    :goto_0
    return-void

    .line 10850
    :catch_0
    move-exception v0

    .line 10851
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 21
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 10614
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 10615
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 10616
    .local v4, "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19600(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/tgnet/TLRPC$BotInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/BotHelpCell;->setText(Ljava/lang/String;)V

    .line 10721
    .end local v4    # "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    :cond_0
    :goto_1
    return-void

    .line 10616
    .restart local v4    # "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 10617
    .end local v4    # "helpView":Lorg/telegram/ui/Cells/BotHelpCell;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 10618
    :cond_3
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .line 10619
    .local v6, "loadingCell":Lorg/telegram/ui/Cells/ChatLoadingCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19700(Lorg/telegram/ui/ChatActivity;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Cells/ChatLoadingCell;->setProgressVisible(Z)V

    goto :goto_1

    :cond_4
    const/16 v17, 0x0

    goto :goto_2

    .line 10620
    .end local v6    # "loadingCell":Lorg/telegram/ui/Cells/ChatLoadingCell;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 10621
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    move/from16 v19, v0

    sub-int v19, p2, v19

    sub-int v18, v18, v19

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    .line 10622
    .local v7, "message":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 10624
    .local v16, "view":Landroid/view/View;
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    move/from16 v17, v0

    if-eqz v17, :cond_12

    move-object/from16 v8, v16

    .line 10625
    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 10626
    .local v8, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    iput-boolean v0, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 10627
    add-int/lit8 v17, p2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v10

    .line 10628
    .local v10, "nextType":I
    add-int/lit8 v17, p2, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v14

    .line 10631
    .local v14, "prevType":I
    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    move/from16 v17, v0

    if-nez v17, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v17

    move/from16 v0, v17

    if-ne v10, v0, :cond_d

    .line 10632
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v19, p2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v18, v18, v19

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 10633
    .local v9, "nextMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v17

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v17, v0

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    :cond_7
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v17, v0

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_c

    const/4 v11, 0x1

    .line 10637
    .end local v9    # "nextMessage":Lorg/telegram/messenger/MessageObject;
    .local v11, "pinnedBotton":Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v17

    move/from16 v0, v17

    if-ne v14, v0, :cond_f

    .line 10638
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    move/from16 v19, v0

    sub-int v19, p2, v19

    sub-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    .line 10639
    .local v13, "prevMessage":Lorg/telegram/messenger/MessageObject;
    iget-object v0, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    move/from16 v17, v0

    if-nez v17, :cond_e

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v17

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    iget-object v0, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v17, v0

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object/from16 v17, v0

    if-nez v17, :cond_e

    :cond_9
    iget-object v0, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v17, v0

    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_e

    const/4 v12, 0x1

    .line 10643
    .end local v13    # "prevMessage":Lorg/telegram/messenger/MessageObject;
    .local v12, "pinnedTop":Z
    :goto_5
    invoke-virtual {v8, v7, v11, v12}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)V

    .line 10644
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lorg/telegram/messenger/MediaController;->canDownloadMedia(I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 10645
    check-cast v16, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local v16    # "view":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->downloadAudioIfNeed()V

    .line 10647
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 10648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19800(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v17

    if-nez v17, :cond_11

    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_11

    .line 10649
    invoke-static {}, Lorg/telegram/messenger/query/MessagesSearchQuery;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    .line 10654
    :goto_7
    sget-boolean v17, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .local v5, "index":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_0

    .line 10655
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$19900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10656
    move-object v3, v8

    .line 10657
    .local v3, "animatingView":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v17

    new-instance v18, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v8}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_1

    .line 10626
    .end local v3    # "animatingView":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v5    # "index":I
    .end local v10    # "nextType":I
    .end local v11    # "pinnedBotton":Z
    .end local v12    # "pinnedTop":Z
    .end local v14    # "prevType":I
    .restart local v16    # "view":Landroid/view/View;
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 10633
    .restart local v9    # "nextMessage":Lorg/telegram/messenger/MessageObject;
    .restart local v10    # "nextType":I
    .restart local v14    # "prevType":I
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 10635
    .end local v9    # "nextMessage":Lorg/telegram/messenger/MessageObject;
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "pinnedBotton":Z
    goto/16 :goto_4

    .line 10639
    .restart local v13    # "prevMessage":Lorg/telegram/messenger/MessageObject;
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 10641
    .end local v13    # "prevMessage":Lorg/telegram/messenger/MessageObject;
    :cond_f
    const/4 v12, 0x0

    .restart local v12    # "pinnedTop":Z
    goto/16 :goto_5

    .line 10647
    .end local v16    # "view":Landroid/view/View;
    :cond_10
    const/16 v17, 0x0

    goto :goto_6

    .line 10651
    :cond_11
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    goto :goto_7

    .line 10709
    .end local v8    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v10    # "nextType":I
    .end local v11    # "pinnedBotton":Z
    .end local v12    # "pinnedTop":Z
    .end local v14    # "prevType":I
    .restart local v16    # "view":Landroid/view/View;
    :cond_12
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    move/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v2, v16

    .line 10710
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 10711
    .local v2, "actionCell":Lorg/telegram/ui/Cells/ChatActionCell;
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 10712
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setAlpha(F)V

    goto/16 :goto_1

    .line 10713
    .end local v2    # "actionCell":Lorg/telegram/ui/Cells/ChatActionCell;
    :cond_13
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatUnreadCell;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v15, v16

    .line 10714
    check-cast v15, Lorg/telegram/ui/Cells/ChatUnreadCell;

    .line 10715
    .local v15, "unreadCell":Lorg/telegram/ui/Cells/ChatUnreadCell;
    const-string/jumbo v17, "NewMessages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ChatActivity;->access$20100(Lorg/telegram/ui/ChatActivity;)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Cells/ChatUnreadCell;->setText(Ljava/lang/String;)V

    .line 10716
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)I

    move-result v17

    if-eqz v17, :cond_0

    .line 10717
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/ChatActivity;->access$9702(Lorg/telegram/ui/ChatActivity;I)I

    goto/16 :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10202
    const/4 v1, 0x0

    .line 10203
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_2

    .line 10204
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10205
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "view":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 10206
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    move-object v0, v1

    .line 10210
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 10211
    .local v0, "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 10527
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v2, :cond_0

    .line 10528
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAllowAssistant(Z)V

    .line 10608
    .end local v0    # "chatMessageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    :cond_0
    :goto_1
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10609
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 10208
    :cond_1
    new-instance v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 10530
    :cond_2
    if-ne p2, v4, :cond_3

    .line 10531
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v2, v1

    .line 10532
    check-cast v2, Lorg/telegram/ui/Cells/ChatActionCell;

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto :goto_1

    .line 10587
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 10588
    new-instance v1, Lorg/telegram/ui/Cells/ChatUnreadCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatUnreadCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_1

    .line 10589
    :cond_4
    const/4 v2, 0x3

    if-ne p2, v2, :cond_5

    .line 10590
    new-instance v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/BotHelpCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    move-object v2, v1

    .line 10591
    check-cast v2, Lorg/telegram/ui/Cells/BotHelpCell;

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/BotHelpCell;->setDelegate(Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;)V

    goto :goto_1

    .line 10605
    :cond_5
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 10606
    new-instance v1, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .end local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/ChatLoadingCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_1
.end method

.method public onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 14
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10735
    iget-object v5, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_1

    .line 10736
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 10737
    .local v2, "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 10739
    .local v1, "message":Lorg/telegram/messenger/MessageObject;
    const/4 v4, 0x0

    .line 10740
    .local v4, "selected":Z
    const/4 v0, 0x0

    .line 10741
    .local v0, "disableSelection":Z
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$20200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 10742
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    .line 10743
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_0
    if-eq v3, v1, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-nez v5, :cond_3

    move v5, v6

    :goto_1
    aget-object v5, v9, v5

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10744
    :cond_0
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatSelectedMsgBGColor:I

    :goto_2
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setBackgroundColor(I)V

    .line 10745
    const/4 v4, 0x1

    .line 10749
    :goto_3
    const/4 v0, 0x1

    .line 10753
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_4
    if-nez v0, :cond_7

    move v8, v7

    :goto_5
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    move v5, v7

    :goto_6
    invoke-virtual {v2, v8, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckPressed(ZZ)V

    .line 10755
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v8, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;

    invoke-direct {v8, p0, v2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$5;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10773
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    const v8, 0x7fffffff

    if-eq v5, v8, :cond_9

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    if-ne v5, v8, :cond_9

    :goto_7
    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 10775
    .end local v0    # "disableSelection":Z
    .end local v1    # "message":Lorg/telegram/messenger/MessageObject;
    .end local v2    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .end local v4    # "selected":Z
    :cond_1
    return-void

    .restart local v0    # "disableSelection":Z
    .restart local v1    # "message":Lorg/telegram/messenger/MessageObject;
    .restart local v2    # "messageCell":Lorg/telegram/ui/Cells/ChatMessageCell;
    .restart local v4    # "selected":Z
    :cond_2
    move-object v3, v8

    .line 10742
    goto :goto_0

    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3
    move v5, v7

    .line 10743
    goto :goto_1

    .line 10744
    :cond_4
    const-string/jumbo v5, "chat_selectedBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    .line 10747
    :cond_5
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 10751
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_7
    move v8, v6

    .line 10753
    goto :goto_5

    :cond_8
    move v5, v6

    goto :goto_6

    :cond_9
    move v7, v6

    .line 10773
    goto :goto_7
.end method

.method public updateRowWithMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 10778
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 10779
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10783
    :goto_0
    return-void

    .line 10782
    :cond_0
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public updateRows()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 10161
    iput v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 10162
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_3

    .line 10163
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 10168
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17800(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-lez v0, :cond_6

    .line 10169
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18000(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_4

    .line 10170
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 10174
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 10175
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 10176
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    .line 10177
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8400(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8400(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v4

    if-nez v0, :cond_5

    .line 10178
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 10188
    :goto_2
    return-void

    .line 10165
    :cond_3
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    goto :goto_0

    .line 10172
    :cond_4
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    goto :goto_1

    .line 10180
    :cond_5
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    goto :goto_2

    .line 10183
    :cond_6
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 10184
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 10185
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 10186
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    goto :goto_2
.end method
