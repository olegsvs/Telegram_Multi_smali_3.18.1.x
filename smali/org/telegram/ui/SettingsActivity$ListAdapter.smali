.class Lorg/telegram/ui/SettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1326
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1327
    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 1328
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SettingsActivity;->access$4900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x2

    .line 1582
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 1583
    :cond_0
    const/4 v0, 0x0

    .line 1598
    :cond_1
    :goto_0
    return v0

    .line 1585
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$6000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 1586
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1587
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 1588
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 1589
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 1591
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 1592
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1593
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_9

    .line 1594
    :cond_8
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 1595
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$5400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1596
    :cond_a
    const/4 v0, 0x4

    goto/16 :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1511
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1512
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1513
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1514
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1515
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1516
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    .line 1517
    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 19
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1337
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1507
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1339
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$5000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 1340
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v3, 0x42b00000    # 88.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .line 1342
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .line 1347
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1348
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 1349
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1350
    .local v12, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "fons_size"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x12

    :goto_1
    invoke-interface {v12, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1351
    .local v13, "size":I
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_2

    .line 1352
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1353
    .local v16, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "chatTextSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x12

    :goto_2
    move-object/from16 v0, v16

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 1355
    .end local v16    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_2
    const-string/jumbo v2, "TextSize"

    const v3, 0x7f070620

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1350
    .end local v13    # "size":I
    :cond_3
    const/16 v2, 0x10

    goto :goto_1

    .line 1353
    .restart local v13    # "size":I
    .restart local v16    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_4
    const/16 v2, 0x10

    goto :goto_2

    .line 1356
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    .end local v13    # "size":I
    .end local v16    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 1357
    const-string/jumbo v2, "Language"

    const v3, 0x7f07031e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getCurrentLanguageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1358
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    .line 1359
    const-string/jumbo v2, "Theme"

    const v3, 0x7f070621

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentThemeName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1360
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_a

    .line 1362
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1363
    .restart local v12    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "sortContactsBy"

    const/4 v3, 0x0

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1364
    .local v14, "sort":I
    if-nez v14, :cond_8

    .line 1365
    const-string/jumbo v2, "Default"

    const v3, 0x7f0701d7

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 1371
    .local v18, "value":Ljava/lang/String;
    :goto_3
    const-string/jumbo v2, "SortBy"

    const v3, 0x7f0705f0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v1, v2, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1366
    .end local v18    # "value":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    if-ne v14, v2, :cond_9

    .line 1367
    const-string/jumbo v2, "FirstName"

    const v3, 0x7f0705f4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "value":Ljava/lang/String;
    goto :goto_3

    .line 1369
    .end local v18    # "value":Ljava/lang/String;
    :cond_9
    const-string/jumbo v2, "LastName"

    const v3, 0x7f0705f5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "value":Ljava/lang/String;
    goto :goto_3

    .line 1372
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    .end local v14    # "sort":I
    .end local v18    # "value":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 1373
    const-string/jumbo v2, "NotificationsAndSounds"

    const v3, 0x7f07043a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1374
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_c

    .line 1375
    const-string/jumbo v2, "ChatBackground"

    const v3, 0x7f07015d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1376
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_d

    .line 1377
    const-string/jumbo v2, "SendLogs"

    const v3, 0x7f070594

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1378
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_e

    .line 1379
    const-string/jumbo v2, "ClearLogs"

    const v3, 0x7f07017a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1380
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_f

    .line 1381
    const-string/jumbo v2, "AskAQuestion"

    const v3, 0x7f07009e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1382
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_10

    .line 1383
    const-string/jumbo v2, "PrivacySettings"

    const v3, 0x7f0704fb

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1384
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_11

    .line 1385
    const-string/jumbo v2, "DataSettings"

    const v3, 0x7f0701c3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1386
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_12

    .line 1387
    const-string/jumbo v2, "Switch Backend"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1388
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_13

    .line 1389
    const-string/jumbo v2, "TelegramFAQ"

    const v3, 0x7f070618

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1390
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_14

    .line 1391
    const-string/jumbo v2, "ImportContacts"

    const v3, 0x7f0702e8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1392
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_16

    .line 1393
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getUnreadStickerSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1394
    .local v9, "count":I
    const-string/jumbo v2, "Stickers"

    const v3, 0x7f0705fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_15

    const-string/jumbo v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v2, ""

    goto :goto_4

    .line 1395
    .end local v9    # "count":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_17

    .line 1396
    const-string/jumbo v2, "PrivacyPolicy"

    const v3, 0x7f0704f9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1397
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 1398
    const-string/jumbo v2, "Emoji"

    const v3, 0x7f070219

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1403
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1404
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1405
    .restart local v12    # "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_18

    .line 1406
    const-string/jumbo v2, "EnableAnimations"

    const v3, 0x7f070221

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "view_animations"

    const/4 v4, 0x1

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1407
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_19

    .line 1408
    const-string/jumbo v2, "SendByEnter"

    const v3, 0x7f07058c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "send_by_enter"

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1409
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1a

    .line 1410
    const-string/jumbo v2, "SaveToGallerySettings"

    const v3, 0x7f070565

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->canSaveToGallery()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1411
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1b

    .line 1412
    const-string/jumbo v2, "AutoplayGifs"

    const v3, 0x7f0700b6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->canAutoplayGifs()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1413
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1c

    .line 1414
    const-string/jumbo v2, "RaiseToSpeak"

    const v3, 0x7f070508

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->canRaiseToSpeak()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1415
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1d

    .line 1416
    const-string/jumbo v2, "ChromeCustomTabs"

    const v3, 0x7f070175

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ChromeCustomTabsInfo"

    const v4, 0x7f070176

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_0

    .line 1417
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 1418
    const-string/jumbo v2, "DirectShare"

    const v3, 0x7f0701f8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DirectShareInfo"

    const v4, 0x7f0701f9

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->canDirectShare()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_0

    .line 1423
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v12    # "preferences":Landroid/content/SharedPreferences;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$5100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1e

    .line 1424
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v3, "SETTINGS"

    const v4, 0x7f070556

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1425
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$5200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_1f

    .line 1426
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v3, "Support"

    const v4, 0x7f07060d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1427
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$5300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_20

    .line 1428
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v3, "MessagesSettings"

    const v4, 0x7f070391

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1429
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$5400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 1430
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v3, "Info"

    const v4, 0x7f0702f2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1435
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v15, Lorg/telegram/ui/Cells/TextInfoCell;

    .line 1437
    .local v15, "textInfoCell":Lorg/telegram/ui/Cells/TextInfoCell;
    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 1438
    .local v11, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit8 v8, v2, 0xa

    .line 1439
    .local v8, "code":I
    const-string/jumbo v7, ""

    .line 1440
    .local v7, "abi":Ljava/lang/String;
    iget v2, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    packed-switch v2, :pswitch_data_1

    .line 1454
    :goto_5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "Telegram for Android v%s (%d) %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lorg/telegram/ui/Cells/TextInfoCell;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1455
    .end local v7    # "abi":Ljava/lang/String;
    .end local v8    # "code":I
    .end local v11    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v10

    .line 1456
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1442
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "abi":Ljava/lang/String;
    .restart local v8    # "code":I
    .restart local v11    # "pInfo":Landroid/content/pm/PackageInfo;
    :pswitch_6
    :try_start_1
    const-string/jumbo v7, "arm"

    .line 1443
    goto :goto_5

    .line 1445
    :pswitch_7
    const-string/jumbo v7, "arm-v7a"

    .line 1446
    goto :goto_5

    .line 1448
    :pswitch_8
    const-string/jumbo v7, "x86"

    .line 1449
    goto :goto_5

    .line 1451
    :pswitch_9
    const-string/jumbo v7, "universal"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 1462
    .end local v7    # "abi":Ljava/lang/String;
    .end local v8    # "code":I
    .end local v11    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "textInfoCell":Lorg/telegram/ui/Cells/TextInfoCell;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 1464
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_22

    .line 1465
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    .line 1467
    .local v17, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v17, :cond_21

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_21

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_21

    .line 1468
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1472
    .restart local v18    # "value":Ljava/lang/String;
    :goto_6
    const-string/jumbo v2, "Phone"

    const v3, 0x7f0704c9

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1470
    .end local v18    # "value":Ljava/lang/String;
    :cond_21
    const-string/jumbo v2, "NumberUnknown"

    const v3, 0x7f070451

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "value":Ljava/lang/String;
    goto :goto_6

    .line 1473
    .end local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v18    # "value":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_24

    .line 1474
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v17

    .line 1476
    .restart local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v17, :cond_23

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v2, :cond_23

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23

    .line 1477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1481
    .restart local v18    # "value":Ljava/lang/String;
    :goto_7
    const-string/jumbo v2, "Username"

    const v3, 0x7f07065b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1479
    .end local v18    # "value":Ljava/lang/String;
    :cond_23
    const-string/jumbo v2, "UsernameEmpty"

    const v3, 0x7f07065e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "value":Ljava/lang/String;
    goto :goto_7

    .line 1484
    .end local v17    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v18    # "value":Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$3500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 1485
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-static {v3, v2}, Lorg/telegram/ui/SettingsActivity;->access$5502(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/ui/Cells/TextDetailSettingsCell;)Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$5500(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineText(Z)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$5500(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$4300(Lorg/telegram/ui/SettingsActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$4300(Lorg/telegram/ui/SettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/SettingsActivity;->access$4300(Lorg/telegram/ui/SettingsActivity;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    const-string/jumbo v4, "Bio"

    const v5, 0x7f0700c1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_25
    const-string/jumbo v2, "UsernameEmpty"

    const v4, 0x7f07065e

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 1337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
    .end packed-switch

    .line 1440
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 16
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1522
    const/4 v5, 0x0

    .line 1523
    .local v5, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 1576
    :goto_0
    new-instance v6, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1577
    new-instance v6, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v6

    .line 1525
    :pswitch_0
    new-instance v5, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .line 1526
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1529
    :pswitch_1
    new-instance v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1530
    .restart local v5    # "view":Landroid/view/View;
    goto :goto_0

    .line 1532
    :pswitch_2
    new-instance v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1533
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1536
    :pswitch_3
    new-instance v5, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1537
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1540
    :pswitch_4
    new-instance v5, Lorg/telegram/ui/Cells/HeaderCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1541
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1544
    :pswitch_5
    new-instance v5, Lorg/telegram/ui/Cells/TextInfoCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextInfoCell;-><init>(Landroid/content/Context;)V

    .line 1545
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1547
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1548
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit8 v2, v6, 0xa

    .line 1549
    .local v2, "code":I
    const-string/jumbo v1, ""

    .line 1550
    .local v1, "abi":Ljava/lang/String;
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v6, v6, 0xa

    packed-switch v6, :pswitch_data_1

    .line 1566
    :goto_1
    move-object v0, v5

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoCell;

    move-object v6, v0

    const-string/jumbo v7, "TelegramVersion"

    const v8, 0x7f07061b

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v12, "v%s (%d) %s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v1, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/TextInfoCell;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1567
    .end local v1    # "abi":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 1568
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1552
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "abi":Ljava/lang/String;
    .restart local v2    # "code":I
    .restart local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :pswitch_6
    :try_start_1
    const-string/jumbo v1, "arm"

    .line 1553
    goto :goto_1

    .line 1556
    :pswitch_7
    const-string/jumbo v1, "arm-v7a"

    .line 1557
    goto :goto_1

    .line 1560
    :pswitch_8
    const-string/jumbo v1, "x86"

    .line 1561
    goto :goto_1

    .line 1563
    :pswitch_9
    const-string/jumbo v1, "universal"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1572
    .end local v1    # "abi":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    :pswitch_a
    new-instance v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local v5    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/SettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1573
    .restart local v5    # "view":Landroid/view/View;
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
    .end packed-switch

    .line 1550
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
