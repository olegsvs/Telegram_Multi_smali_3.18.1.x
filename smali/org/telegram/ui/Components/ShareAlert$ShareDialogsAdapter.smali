.class Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareDialogsAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentCount:I

.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    .line 554
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->context:Landroid/content/Context;

    .line 555
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->fetchDialogs()V

    .line 556
    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    .prologue
    .line 547
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public fetchDialogs()V
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x1

    .line 559
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 561
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$2500(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 562
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 563
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 564
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v4, v6

    .line 565
    .local v4, "lower_id":I
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    shr-long/2addr v6, v9

    long-to-int v3, v6

    .line 566
    .local v3, "high_id":I
    if-eqz v4, :cond_0

    if-eq v3, v8, :cond_0

    .line 567
    if-lez v4, :cond_1

    .line 568
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 571
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v5, :cond_2

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v5, :cond_2

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_0

    .line 572
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 578
    .end local v0    # "a":I
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "high_id":I
    .end local v4    # "lower_id":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 579
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 581
    .restart local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$2500(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v5

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/Favorite;->isFavorite(Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 578
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 585
    :cond_5
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v4, v6

    .line 586
    .restart local v4    # "lower_id":I
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    shr-long/2addr v6, v9

    long-to-int v3, v6

    .line 587
    .restart local v3    # "high_id":I
    if-eqz v4, :cond_4

    if-eq v3, v8, :cond_4

    .line 588
    if-lez v4, :cond_6

    .line 589
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 591
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-int v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 592
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v5, :cond_7

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->editor:Z

    if-nez v5, :cond_7

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_4

    .line 593
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 598
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v2    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v3    # "high_id":I
    .end local v4    # "lower_id":I
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->notifyDataSetChanged()V

    .line 599
    return-void
.end method

.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 607
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 608
    :cond_0
    const/4 v0, 0x0

    .line 610
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 627
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    .line 628
    .local v0, "cell":Lorg/telegram/ui/Cells/ShareDialogCell;
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v1

    .line 629
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$1200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(IZLjava/lang/CharSequence;)V

    .line 630
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 620
    new-instance v0, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShareDialogCell;-><init>(Landroid/content/Context;)V

    .line 621
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
