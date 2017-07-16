.class public Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatDialogsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatDialogsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter$Holder;
    }
.end annotation


# instance fields
.field private ChatDialogRow:I

.field private InvisibleRow:I

.field private NoChatsRow:I

.field private chatId:J

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatDialogsView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;J)V
    .locals 1
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "chat_id"    # J

    .prologue
    .line 615
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 604
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->InvisibleRow:I

    .line 605
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->NoChatsRow:I

    .line 606
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->ChatDialogRow:I

    .line 616
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->mContext:Landroid/content/Context;

    .line 617
    iput-wide p3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->chatId:J

    .line 618
    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;JLorg/telegram/ui/Components/ChatDialogsView$1;)V
    .locals 1
    .param p1, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lorg/telegram/ui/Components/ChatDialogsView$1;

    .prologue
    .line 600
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;

    .prologue
    .line 600
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getTitleRes()I

    move-result v0

    return v0
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1000(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 642
    :pswitch_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    .line 628
    :pswitch_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    goto :goto_0

    .line 630
    :pswitch_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    goto :goto_0

    .line 632
    :pswitch_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    goto :goto_0

    .line 634
    :pswitch_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    goto :goto_0

    .line 636
    :pswitch_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    goto :goto_0

    .line 638
    :pswitch_6
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    goto :goto_0

    .line 640
    :pswitch_7
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    goto :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private getTitleRes()I
    .locals 2

    .prologue
    const v0, 0x7f070161

    .line 702
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1000(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 718
    :goto_0
    :pswitch_0
    return v0

    .line 706
    :pswitch_1
    const v0, 0x7f070245

    goto :goto_0

    .line 708
    :pswitch_2
    const v0, 0x7f070667

    goto :goto_0

    .line 710
    :pswitch_3
    const v0, 0x7f0702b4

    goto :goto_0

    .line 712
    :pswitch_4
    const v0, 0x7f07060c

    goto :goto_0

    .line 714
    :pswitch_5
    const v0, 0x7f07015c

    goto :goto_0

    .line 716
    :pswitch_6
    const v0, 0x7f0700d7

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 622
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 648
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 649
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 650
    :cond_0
    const-wide/16 v2, 0x0

    .line 652
    :goto_0
    return-wide v2

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 657
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->chatId:J

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1000(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 660
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->NoChatsRow:I

    .line 664
    :goto_0
    return v0

    .line 662
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->InvisibleRow:I

    goto :goto_0

    .line 664
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->ChatDialogRow:I

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 686
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->ChatDialogRow:I

    if-ne v5, v6, :cond_1

    .line 687
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getItemId(I)J

    move-result-wide v2

    .line 689
    .local v2, "id":J
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;

    .line 690
    .local v0, "cell":Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setTag(Ljava/lang/Object;)V

    .line 691
    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;->setDialog(J)V

    .line 699
    .end local v0    # "cell":Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;
    .end local v2    # "id":J
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->NoChatsRow:I

    if-ne v5, v6, :cond_0

    .line 693
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    .line 694
    .local v4, "tv":Landroid/widget/TextView;
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 695
    const-string/jumbo v5, "NoChatsYet"

    const v6, 0x7f0706ee

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->getTitleRes()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->ChatDialogRow:I

    if-ne p2, v1, :cond_1

    .line 671
    new-instance v0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    .line 672
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2000(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2100(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    :cond_0
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter$Holder;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter$Holder;-><init>(Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;Landroid/view/View;)V

    return-object v1

    .line 673
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->NoChatsRow:I

    if-ne p2, v1, :cond_4

    .line 674
    new-instance v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 675
    .restart local v0    # "view":Landroid/view/View;
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2000(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_1
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    if-eqz v4, :cond_3

    :goto_2
    invoke-direct {v3, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatDialogsView;->access$2100(Lorg/telegram/ui/Components/ChatDialogsView;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_2

    .line 676
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->InvisibleRow:I

    if-ne p2, v1, :cond_0

    .line 677
    new-instance v0, Landroid/view/View;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 678
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v3, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
