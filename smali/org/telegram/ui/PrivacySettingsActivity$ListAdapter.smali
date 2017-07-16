.class Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PrivacySettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PrivacySettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PrivacySettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 325
    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 326
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 462
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 463
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 464
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 465
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 466
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 467
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 330
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 331
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 332
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingGroupInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 333
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingLastSeenInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 334
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingCallsInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 335
    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getLoadingDeleteInfo()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f0200af

    const v7, 0x7f0200ae

    const v11, 0x7f070356

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 369
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 371
    :pswitch_0
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 372
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_1

    .line 373
    const-string/jumbo v6, "BlockedUsers"

    const v7, 0x7f0700c3

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 374
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_2

    .line 375
    const-string/jumbo v6, "SessionsTitle"

    const v7, 0x7f0705a9

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_3

    .line 377
    const-string/jumbo v6, "TwoStepVerification"

    const v7, 0x7f070641

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_4

    .line 379
    const-string/jumbo v6, "Passcode"

    const v7, 0x7f070484

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_6

    .line 382
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ContactsController;->getLoadingLastSeenInfo()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 383
    const-string/jumbo v6, "Loading"

    invoke-static {v6, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "value":Ljava/lang/String;
    :goto_1
    const-string/jumbo v6, "PrivacyLastSeen"

    const v7, 0x7f0704f8

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 385
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_1

    .line 388
    .end local v5    # "value":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_8

    .line 390
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ContactsController;->getLoadingCallsInfo()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 391
    const-string/jumbo v6, "Loading"

    invoke-static {v6, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 395
    .restart local v5    # "value":Ljava/lang/String;
    :goto_2
    const-string/jumbo v6, "Calls"

    const v7, 0x7f0700ed

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 393
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_2

    .line 396
    .end local v5    # "value":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_a

    .line 398
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ContactsController;->getLoadingGroupInfo()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 399
    const-string/jumbo v6, "Loading"

    invoke-static {v6, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 403
    .restart local v5    # "value":Ljava/lang/String;
    :goto_3
    const-string/jumbo v6, "GroupsAndChannels"

    const v7, 0x7f0702b5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 401
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6, v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_3

    .line 404
    .end local v5    # "value":Ljava/lang/String;
    :cond_a
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 406
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ContactsController;->getLoadingDeleteInfo()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 407
    const-string/jumbo v6, "Loading"

    invoke-static {v6, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 418
    .restart local v5    # "value":Ljava/lang/String;
    :goto_4
    const-string/jumbo v6, "DeleteAccountIfAwayFor"

    const v7, 0x7f0701db

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 409
    .end local v5    # "value":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/ContactsController;->getDeleteAccountTTL()I

    move-result v4

    .line 410
    .local v4, "ttl":I
    const/16 v6, 0xb6

    if-gt v4, v6, :cond_c

    .line 411
    const-string/jumbo v6, "Months"

    div-int/lit8 v7, v4, 0x1e

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_4

    .line 412
    .end local v5    # "value":Ljava/lang/String;
    :cond_c
    const/16 v6, 0x16d

    if-ne v4, v6, :cond_d

    .line 413
    const-string/jumbo v6, "Years"

    div-int/lit16 v7, v4, 0x16d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_4

    .line 415
    .end local v5    # "value":Ljava/lang/String;
    :cond_d
    const-string/jumbo v6, "Days"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_4

    .line 422
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v4    # "ttl":I
    .end local v5    # "value":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 423
    .local v1, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_f

    .line 424
    const-string/jumbo v8, "DeleteAccountHelp"

    const v9, 0x7f0701da

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_e

    :goto_5
    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-static {v8, v6, v7}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_e
    move v6, v7

    goto :goto_5

    .line 426
    :cond_f
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_10

    .line 427
    const-string/jumbo v6, "GroupsAndChannelsHelp"

    const v8, 0x7f0702b6

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 429
    :cond_10
    iget-object v8, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-ne p2, v8, :cond_11

    .line 430
    const-string/jumbo v6, "SessionsInfo"

    const v8, 0x7f0705a8

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "windowBackgroundGrayShadow"

    invoke-static {v6, v7, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 432
    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_0

    .line 433
    const-string/jumbo v7, ""

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "windowBackgroundGrayShadow"

    invoke-static {v7, v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 438
    .end local v1    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_2
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 439
    .local v0, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_12

    .line 440
    const-string/jumbo v6, "PrivacyTitle"

    const v7, 0x7f0704fc

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    :cond_12
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_13

    .line 442
    const-string/jumbo v6, "SecurityTitle"

    const v7, 0x7f070585

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :cond_13
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_14

    .line 444
    const-string/jumbo v6, "DeleteAccountTitle"

    const v7, 0x7f0701dd

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_14
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 446
    const-string/jumbo v6, "SecretChat"

    const v7, 0x7f070580

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    .end local v0    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_3
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 451
    .local v3, "textCheckCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v6, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 452
    const-string/jumbo v6, "SecretWebPage"

    const v7, 0x7f070583

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v6, v8, :cond_15

    move v6, v8

    :goto_6
    invoke-virtual {v3, v7, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_15
    move v6, v9

    goto :goto_6

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 346
    packed-switch p2, :pswitch_data_0

    .line 360
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 361
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 364
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 348
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 349
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 352
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 353
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 355
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 356
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
