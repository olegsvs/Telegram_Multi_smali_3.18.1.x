.class Lorg/telegram/ui/ChannelUsersActivity$3;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChannelUsersActivity;

    .prologue
    .line 240
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChannelUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v4

    .line 246
    :cond_1
    const/4 v3, 0x0

    .line 247
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    if-lt p2, v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v7

    add-int/2addr v6, v7

    if-ge p2, v6, :cond_2

    .line 248
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v7

    sub-int v7, p2, v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 250
    .restart local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_2
    if-eqz v3, :cond_0

    .line 251
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 254
    move-object v1, v3

    .line 255
    .local v1, "finalParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ChannelUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const/4 v2, 0x0

    .line 257
    .local v2, "items":[Ljava/lang/CharSequence;
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    if-nez v6, :cond_4

    .line 258
    new-array v2, v5, [Ljava/lang/CharSequence;

    .end local v2    # "items":[Ljava/lang/CharSequence;
    const-string/jumbo v6, "Unblock"

    const v7, 0x7f070645

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 264
    .restart local v2    # "items":[Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    new-instance v4, Lorg/telegram/ui/ChannelUsersActivity$3$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/ChannelUsersActivity$3$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$3;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 301
    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ChannelUsersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v4, v5

    .line 302
    goto :goto_0

    .line 259
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    if-ne v6, v5, :cond_5

    .line 260
    new-array v2, v5, [Ljava/lang/CharSequence;

    .end local v2    # "items":[Ljava/lang/CharSequence;
    const-string/jumbo v6, "ChannelRemoveUserAdmin"

    const v7, 0x7f07014b

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .restart local v2    # "items":[Ljava/lang/CharSequence;
    goto :goto_1

    .line 261
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 262
    new-array v2, v5, [Ljava/lang/CharSequence;

    .end local v2    # "items":[Ljava/lang/CharSequence;
    const-string/jumbo v6, "ChannelRemoveUser"

    const v7, 0x7f07014a

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .restart local v2    # "items":[Ljava/lang/CharSequence;
    goto :goto_1
.end method
