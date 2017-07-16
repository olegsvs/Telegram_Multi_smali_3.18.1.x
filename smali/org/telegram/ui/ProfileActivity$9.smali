.class Lorg/telegram/ui/ProfileActivity$9;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ProfileActivity;

    .prologue
    .line 1073
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1076
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-le p2, v9, :cond_15

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-ge p2, v9, :cond_15

    .line 1077
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_0

    .line 1078
    const/4 v9, 0x0

    .line 1229
    :goto_0
    return v9

    .line 1080
    :cond_0
    const/4 v0, 0x0

    .line 1081
    .local v0, "allowKick":Z
    const/4 v1, 0x0

    .line 1084
    .local v1, "allowSetAdmin":Z
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1085
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v11, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    sub-int v11, p2, v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1089
    .local v7, "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_1
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v9, v10}, Lorg/telegram/ui/ProfileActivity;->access$4202(Lorg/telegram/ui/ProfileActivity;I)I

    .line 1091
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v9, v7

    .line 1092
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1093
    .local v3, "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget v9, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 1094
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v9, :cond_6

    .line 1095
    const/4 v0, 0x1

    .line 1102
    :cond_1
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 1103
    .local v6, "u":Lorg/telegram/tgnet/TLRPC$User;
    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-eqz v9, :cond_8

    iget-boolean v9, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v9, :cond_8

    const/4 v1, 0x1

    .line 1115
    .end local v3    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v6    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_3
    if-nez v0, :cond_d

    .line 1117
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$4400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-nez v9, :cond_4

    .line 1118
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1119
    .local v2, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 1120
    .local v8, "usr":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1121
    .local v5, "name":Ljava/lang/String;
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 1122
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1124
    :cond_3
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1125
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string/jumbo v10, "ShowUserMessages"

    const v11, 0x7f0705e4

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "ShowUserMedia"

    const v11, 0x7f0705e3

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 1126
    .local v4, "items":[Ljava/lang/CharSequence;
    new-instance v9, Lorg/telegram/ui/ProfileActivity$9$1;

    invoke-direct {v9, p0, v7}, Lorg/telegram/ui/ProfileActivity$9$1;-><init>(Lorg/telegram/ui/ProfileActivity$9;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)V

    invoke-virtual {v2, v4, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1136
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1138
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v4    # "items":[Ljava/lang/CharSequence;
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "usr":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1087
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_5
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v10}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v10

    sub-int v10, p2, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v7    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto/16 :goto_1

    .line 1096
    .restart local v3    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_6
    instance-of v9, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-eqz v9, :cond_1

    .line 1097
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v9, :cond_7

    iget v9, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 1098
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1103
    .restart local v6    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1105
    .end local v3    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    .end local v6    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_9
    iget v9, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 1106
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v9, :cond_a

    .line 1107
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1108
    :cond_a
    instance-of v9, v7, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v9, :cond_2

    .line 1109
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->admin:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    if-nez v9, :cond_c

    :cond_b
    iget v9, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 1110
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1140
    :cond_d
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ProfileActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1141
    .restart local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v9, :cond_10

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v9, :cond_10

    if-eqz v1, :cond_10

    .line 1142
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string/jumbo v10, "SetAsAdmin"

    const v11, 0x7f0705b2

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "KickFromGroup"

    const v11, 0x7f070319

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 1143
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$4400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-nez v9, :cond_f

    .line 1144
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 1145
    .restart local v8    # "usr":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1146
    .restart local v5    # "name":Ljava/lang/String;
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v9, :cond_e

    .line 1147
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1149
    :cond_e
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1150
    const/4 v9, 0x4

    new-array v4, v9, [Ljava/lang/CharSequence;

    .end local v4    # "items":[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    const-string/jumbo v10, "SetAsAdmin"

    const v11, 0x7f0705b2

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "KickFromGroup"

    const v11, 0x7f070319

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "ShowUserMessages"

    const v11, 0x7f0705e4

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string/jumbo v10, "ShowUserMedia"

    const v11, 0x7f0705e3

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 1152
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "usr":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    :cond_f
    new-instance v9, Lorg/telegram/ui/ProfileActivity$9$2;

    invoke-direct {v9, p0, v7}, Lorg/telegram/ui/ProfileActivity$9$2;-><init>(Lorg/telegram/ui/ProfileActivity$9;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)V

    invoke-virtual {v2, v4, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1226
    :goto_4
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ProfileActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1227
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1200
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :cond_10
    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-lez v9, :cond_13

    const-string/jumbo v9, "KickFromGroup"

    const v11, 0x7f070319

    invoke-static {v9, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :goto_5
    aput-object v9, v4, v10

    .line 1202
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-nez v9, :cond_12

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$4400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-nez v9, :cond_12

    .line 1203
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 1204
    .restart local v8    # "usr":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1205
    .restart local v5    # "name":Ljava/lang/String;
    iget-object v9, v8, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v9, :cond_11

    .line 1206
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1208
    :cond_11
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1209
    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/CharSequence;

    .end local v4    # "items":[Ljava/lang/CharSequence;
    const/4 v10, 0x0

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v9

    if-lez v9, :cond_14

    const-string/jumbo v9, "KickFromGroup"

    const v11, 0x7f070319

    invoke-static {v9, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :goto_6
    aput-object v9, v4, v10

    const/4 v9, 0x1

    const-string/jumbo v10, "ShowUserMessages"

    const v11, 0x7f0705e4

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "ShowUserMedia"

    const v11, 0x7f0705e3

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 1211
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "usr":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    :cond_12
    new-instance v9, Lorg/telegram/ui/ProfileActivity$9$3;

    invoke-direct {v9, p0, v7}, Lorg/telegram/ui/ProfileActivity$9$3;-><init>(Lorg/telegram/ui/ProfileActivity$9;Lorg/telegram/tgnet/TLRPC$ChatParticipant;)V

    invoke-virtual {v2, v4, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_4

    .line 1200
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :cond_13
    const-string/jumbo v9, "KickFromBroadcast"

    const v11, 0x7f070318

    invoke-static {v9, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 1209
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "usr":Lorg/telegram/tgnet/TLRPC$User;
    :cond_14
    const-string/jumbo v9, "KickFromBroadcast"

    const v11, 0x7f070318

    invoke-static {v9, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 1229
    .end local v0    # "allowKick":Z
    .end local v1    # "allowSetAdmin":Z
    .end local v2    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v8    # "usr":Lorg/telegram/tgnet/TLRPC$User;
    :cond_15
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9, p2}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;I)Z

    move-result v9

    goto/16 :goto_0
.end method
