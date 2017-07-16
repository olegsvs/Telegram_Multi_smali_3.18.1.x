.class Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "NotificationsSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/NotificationsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/NotificationsSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 590
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 591
    iput-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 592
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 816
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 817
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 818
    :cond_0
    const/4 v0, 0x0

    .line 834
    :goto_0
    return v0

    .line 819
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 820
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 821
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 822
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 823
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 824
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 825
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 826
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 827
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 828
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 829
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 830
    :cond_6
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 831
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 832
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 834
    :cond_8
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 596
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 597
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 598
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 599
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 600
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 601
    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 17
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 643
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 811
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 645
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v9, Lorg/telegram/ui/Cells/HeaderCell;

    .line 646
    .local v9, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 647
    const-string/jumbo v2, "MessageNotifications"

    const v3, 0x7f07038b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 649
    const-string/jumbo v2, "GroupNotifications"

    const v3, 0x7f0702ad

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 651
    const-string/jumbo v2, "InAppNotifications"

    const v3, 0x7f0702e9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 653
    const-string/jumbo v2, "Events"

    const v3, 0x7f070240

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 655
    const-string/jumbo v2, "NotificationsOther"

    const v3, 0x7f070444

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 656
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 657
    const-string/jumbo v2, "Reset"

    const v3, 0x7f070523

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 658
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 659
    const-string/jumbo v2, "VoipNotificationSettings"

    const v3, 0x7f070688

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 664
    .end local v9    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 665
    .local v1, "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 666
    .local v12, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 667
    const-string/jumbo v2, "Alert"

    const v3, 0x7f07005c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnableAll"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 668
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    .line 669
    const-string/jumbo v2, "Alert"

    const v3, 0x7f07005c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnableGroup"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 670
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    .line 671
    const-string/jumbo v2, "MessagePreview"

    const v3, 0x7f07038c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnablePreviewAll"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 672
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 673
    const-string/jumbo v2, "MessagePreview"

    const v3, 0x7f07038c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnablePreviewGroup"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 674
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 675
    const-string/jumbo v2, "InAppSounds"

    const v3, 0x7f0702eb

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnableInAppSounds"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 676
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_c

    .line 677
    const-string/jumbo v2, "InAppVibrate"

    const v3, 0x7f0702ec

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnableInAppVibrate"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 678
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_d

    .line 679
    const-string/jumbo v2, "InAppPreview"

    const v3, 0x7f0702ea

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnableInAppPreview"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 680
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_e

    .line 681
    const-string/jumbo v2, "NotificationsPriority"

    const v3, 0x7f070445

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnableInAppPriority"

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 682
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_f

    .line 683
    const-string/jumbo v2, "ContactJoined"

    const v3, 0x7f070196

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnableContactJoined"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 684
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_10

    .line 685
    const-string/jumbo v2, "PinnedMessages"

    const v3, 0x7f0704e5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PinnedMessages"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 686
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_11

    .line 687
    const-string/jumbo v2, "Android Auto"

    const-string/jumbo v3, "EnableAutoNotifications"

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 688
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_12

    .line 689
    const-string/jumbo v2, "NotificationsService"

    const v3, 0x7f07044b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NotificationsServiceInfo"

    const v4, 0x7f07044e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pushService"

    const/4 v5, 0x1

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_0

    .line 690
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_13

    .line 691
    const-string/jumbo v2, "NotificationsServiceConnection"

    const v3, 0x7f07044c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NotificationsServiceConnectionInfo"

    const v4, 0x7f07044d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pushConnection"

    const/4 v5, 0x1

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_0

    .line 692
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_14

    .line 693
    const-string/jumbo v2, "BadgeNumber"

    const v3, 0x7f0700bf

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "badgeNumber"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 694
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_15

    .line 695
    const-string/jumbo v2, "InChatSound"

    const v3, 0x7f0702ed

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnableInChatSound"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 696
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 697
    const-string/jumbo v2, "Vibrate"

    const v3, 0x7f070671

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EnableCallVibrate"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 702
    .end local v1    # "checkCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v13, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 703
    .local v13, "settingsCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 704
    const-string/jumbo v2, "ResetAllNotifications"

    const v3, 0x7f070529

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UndoAllCustom"

    const v4, 0x7f070647

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 708
    .end local v13    # "settingsCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v15, Lorg/telegram/ui/Cells/TextColorCell;

    .line 709
    .local v15, "textColorCell":Lorg/telegram/ui/Cells/TextColorCell;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 711
    .restart local v12    # "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_17

    .line 712
    const-string/jumbo v2, "MessagesLed"

    const v3, -0xffff01

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 716
    .local v8, "color":I
    :goto_1
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_2
    const/16 v2, 0x9

    if-ge v7, v2, :cond_16

    .line 717
    sget-object v2, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    aget v2, v2, v7

    if-ne v2, v8, :cond_18

    .line 718
    sget-object v2, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v8, v2, v7

    .line 722
    :cond_16
    const-string/jumbo v2, "LedColor"

    const v3, 0x7f070343

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v8, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 714
    .end local v7    # "a":I
    .end local v8    # "color":I
    :cond_17
    const-string/jumbo v2, "GroupLed"

    const v3, -0xffff01

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .restart local v8    # "color":I
    goto :goto_1

    .line 716
    .restart local v7    # "a":I
    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 726
    .end local v7    # "a":I
    .end local v8    # "color":I
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    .end local v15    # "textColorCell":Lorg/telegram/ui/Cells/TextColorCell;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 727
    .local v14, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "Notifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 728
    .restart local v12    # "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1f

    .line 729
    :cond_19
    const/16 v16, 0x0

    .line 730
    .local v16, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1c

    .line 731
    const-string/jumbo v2, "GlobalSound"

    const-string/jumbo v3, "SoundDefault"

    const v4, 0x7f0705f8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 737
    :cond_1a
    :goto_3
    const-string/jumbo v2, "NoSound"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 738
    const-string/jumbo v2, "NoSound"

    const v3, 0x7f0703ed

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 740
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1e

    .line 741
    const-string/jumbo v2, "VoipSettingsRingtone"

    const v3, 0x7f070697

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 732
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1d

    .line 733
    const-string/jumbo v2, "GroupSound"

    const-string/jumbo v3, "SoundDefault"

    const v4, 0x7f0705f8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    .line 734
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1a

    .line 735
    const-string/jumbo v2, "CallsRingtone"

    const-string/jumbo v3, "DefaultRingtone"

    const v4, 0x7f0701d8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    .line 743
    :cond_1e
    const-string/jumbo v2, "Sound"

    const v3, 0x7f0705f7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 745
    .end local v16    # "value":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_28

    .line 746
    :cond_20
    const/16 v16, 0x0

    .line 747
    .local v16, "value":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_22

    .line 748
    const-string/jumbo v2, "vibrate_messages"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 754
    :cond_21
    :goto_4
    if-nez v16, :cond_24

    .line 755
    const-string/jumbo v2, "Vibrate"

    const v3, 0x7f070671

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VibrationDefault"

    const v4, 0x7f070672

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 749
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_23

    .line 750
    const-string/jumbo v2, "vibrate_group"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    goto :goto_4

    .line 751
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_21

    .line 752
    const-string/jumbo v2, "vibrate_calls"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    goto :goto_4

    .line 756
    :cond_24
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_25

    .line 757
    const-string/jumbo v2, "Vibrate"

    const v3, 0x7f070671

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Short"

    const v4, 0x7f0705cc

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 758
    :cond_25
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_26

    .line 759
    const-string/jumbo v2, "Vibrate"

    const v3, 0x7f070671

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "VibrationDisabled"

    const v4, 0x7f070673

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 760
    :cond_26
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_27

    .line 761
    const-string/jumbo v2, "Vibrate"

    const v3, 0x7f070671

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Long"

    const v4, 0x7f070364

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 762
    :cond_27
    const/4 v2, 0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 763
    const-string/jumbo v2, "Vibrate"

    const v3, 0x7f070671

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OnlyIfSilent"

    const v4, 0x7f07045f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 765
    .end local v16    # "value":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2b

    .line 766
    const-string/jumbo v2, "repeat_messages"

    const/16 v3, 0x3c

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 768
    .local v10, "minutes":I
    if-nez v10, :cond_29

    .line 769
    const-string/jumbo v2, "RepeatNotificationsNever"

    const v3, 0x7f070514

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 775
    .local v16, "value":Ljava/lang/String;
    :goto_5
    const-string/jumbo v2, "RepeatNotifications"

    const v3, 0x7f070513

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 770
    .end local v16    # "value":Ljava/lang/String;
    :cond_29
    const/16 v2, 0x3c

    if-ge v10, v2, :cond_2a

    .line 771
    const-string/jumbo v2, "Minutes"

    invoke-static {v2, v10}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_5

    .line 773
    .end local v16    # "value":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v2, "Hours"

    div-int/lit8 v3, v10, 0x3c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_5

    .line 776
    .end local v10    # "minutes":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_31

    .line 777
    :cond_2c
    const/16 v16, 0x0

    .line 778
    .local v16, "value":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2e

    .line 779
    const-string/jumbo v2, "priority_messages"

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 783
    :cond_2d
    :goto_6
    if-nez v16, :cond_2f

    .line 784
    const-string/jumbo v2, "NotificationsPriority"

    const v3, 0x7f070445

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NotificationsPriorityDefault"

    const v4, 0x7f070446

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 780
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2d

    .line 781
    const-string/jumbo v2, "priority_group"

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    goto :goto_6

    .line 785
    :cond_2f
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_30

    .line 786
    const-string/jumbo v2, "NotificationsPriority"

    const v3, 0x7f070445

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NotificationsPriorityHigh"

    const v4, 0x7f070447

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 787
    :cond_30
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 788
    const-string/jumbo v2, "NotificationsPriority"

    const v3, 0x7f070445

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NotificationsPriorityMax"

    const v4, 0x7f070449

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 790
    .end local v16    # "value":I
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-eq v0, v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 791
    :cond_32
    const/4 v11, 0x0

    .line 792
    .local v11, "option":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_34

    .line 793
    const-string/jumbo v2, "popupAll"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 798
    :cond_33
    :goto_7
    if-nez v11, :cond_35

    .line 799
    const-string/jumbo v2, "NoPopup"

    const v3, 0x7f0703e2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 807
    .local v16, "value":Ljava/lang/String;
    :goto_8
    const-string/jumbo v2, "PopupNotification"

    const v3, 0x7f0704f4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 794
    .end local v16    # "value":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_33

    .line 795
    const-string/jumbo v2, "popupGroup"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    goto :goto_7

    .line 800
    :cond_35
    const/4 v2, 0x1

    if-ne v11, v2, :cond_36

    .line 801
    const-string/jumbo v2, "OnlyWhenScreenOn"

    const v3, 0x7f070461

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_8

    .line 802
    .end local v16    # "value":Ljava/lang/String;
    :cond_36
    const/4 v2, 0x2

    if-ne v11, v2, :cond_37

    .line 803
    const-string/jumbo v2, "OnlyWhenScreenOff"

    const v3, 0x7f070460

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_8

    .line 805
    .end local v16    # "value":Ljava/lang/String;
    :cond_37
    const-string/jumbo v2, "AlwaysShowPopup"

    const v3, 0x7f07006b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto :goto_8

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 612
    packed-switch p2, :pswitch_data_0

    .line 634
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 635
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 638
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 614
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 615
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 618
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 619
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 622
    .end local v0    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 623
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 626
    .end local v0    # "view":Landroid/view/View;
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/TextColorCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .line 627
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 630
    .end local v0    # "view":Landroid/view/View;
    :pswitch_4
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 631
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
