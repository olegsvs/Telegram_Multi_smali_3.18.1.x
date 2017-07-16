.class Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlusSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PlusSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PlusSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PlusSettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1864
    iput-object p1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1865
    iput-object p2, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 1866
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1870
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1897
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1902
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 2458
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2459
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$11000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 2460
    :cond_0
    const/4 v0, 0x0

    .line 2485
    :cond_1
    :goto_0
    return v0

    .line 2461
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2462
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2463
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 2464
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 2465
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2466
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2467
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2468
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2469
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$1900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2470
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2471
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2472
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2473
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2474
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$2700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$5300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 2475
    :cond_5
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 2476
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2477
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$8000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$8100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 2479
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$3900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 2480
    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$6800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$7000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$4300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 2481
    :cond_7
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 2482
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$10100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PlusSettingsActivity;->access$9800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 2483
    :cond_9
    const/4 v0, 0x7

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1912
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v25

    .line 1913
    .local v25, "type":I
    const-string/jumbo v12, ""

    .line 1914
    .local v12, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$000(Lorg/telegram/ui/PlusSettingsActivity;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1915
    const-string/jumbo v12, "P"

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 1917
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "0 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1955
    :cond_0
    :goto_0
    if-nez v25, :cond_15

    .line 1956
    if-nez p2, :cond_1

    .line 1957
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 2450
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 2451
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v27, :cond_a4

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2453
    :cond_2
    return-object p2

    .line 1918
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 1919
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "0."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 1920
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 1921
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "1 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 1922
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 1923
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "1."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1924
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    .line 1925
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "2 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1926
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 1927
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "2."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1928
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 1929
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "3 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1930
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 1931
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "3."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1932
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 1933
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "4 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1934
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 1935
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "4."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1936
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 1937
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "5 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1938
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    .line 1939
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "5."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1940
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    .line 1941
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "6 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1942
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    .line 1943
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "6."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    sub-int v29, p1, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-gt v0, v1, :cond_10

    const/16 v27, 0x0

    :goto_3
    sub-int v27, v29, v27

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_10
    const/16 v27, 0x1

    goto :goto_3

    .line 1944
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    .line 1945
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "7 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1946
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_13

    .line 1947
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "7."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1948
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 1949
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "8 "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1950
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 1951
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "8."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v28

    sub-int v28, p1, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 1959
    :cond_15
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    .line 1960
    if-nez p2, :cond_16

    .line 1961
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1963
    .restart local p2    # "view":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    move-object/from16 v27, p2

    .line 1964
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "General"

    const v30, 0x7f0702a1

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1965
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    move-object/from16 v27, p2

    .line 1966
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "MessagesSettings"

    const v30, 0x7f070391

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1967
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    move-object/from16 v27, p2

    .line 1968
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "ProfileScreen"

    const v30, 0x7f0704ff

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1969
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    move-object/from16 v27, p2

    .line 1970
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "NavigationDrawer"

    const v30, 0x7f0703b5

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1971
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    move-object/from16 v27, p2

    .line 1972
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "PrivacySettings"

    const v30, 0x7f0704fb

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1973
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    move-object/from16 v27, p2

    .line 1974
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "SharedMedia"

    const v30, 0x7f0705c9

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1975
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1d

    move-object/from16 v27, p2

    .line 1976
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "DialogsSettings"

    const v30, 0x7f0701f6

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1977
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    move-object/from16 v27, p2

    .line 1978
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "Notifications"

    const v30, 0x7f070439

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1979
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    move-object/from16 v27, p2

    .line 1980
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "ToastNotification"

    const v30, 0x7f070637

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1981
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    move-object/from16 v27, p2

    .line 1982
    check-cast v27, Lorg/telegram/ui/Cells/HeaderCell;

    const-string/jumbo v28, "PlusSettings"

    const v29, 0x7f0704eb

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1984
    :cond_20
    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_3d

    .line 1985
    if-nez p2, :cond_21

    .line 1986
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_21
    move-object/from16 v23, p2

    .line 1988
    check-cast v23, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1989
    .local v23, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v28, "plusconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1990
    .local v11, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    .line 1991
    const-string/jumbo v28, "emojiPopupSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v27

    if-eqz v27, :cond_23

    const/16 v27, 0x41

    :goto_4
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 1992
    .local v20, "size":I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "EmojiPopupSize"

    const v29, 0x7f07021b

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2063
    .end local v20    # "size":I
    :cond_22
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 2064
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SortTabs"

    const v29, 0x7f0705f6

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1991
    :cond_23
    const/16 v27, 0x3c

    goto/16 :goto_4

    .line 1993
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_25

    .line 1994
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "PhotoQuality"

    const v29, 0x7f0704d6

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoQuality:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 1995
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_26

    .line 1996
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "TabsTextSize"

    const v29, 0x7f070613

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->plusTabsTextSize:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 1997
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_27

    .line 1999
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "TabsHeight"

    const v29, 0x7f070612

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2000
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2a

    .line 2002
    const-string/jumbo v27, "dialogsClickOnPic"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 2003
    .local v21, "sort":I
    if-nez v21, :cond_28

    .line 2004
    const-string/jumbo v27, "RowGradientDisabled"

    const v28, 0x7f070550

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 2010
    .local v26, "value":Ljava/lang/String;
    :goto_6
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ClickOnContactPic"

    const v29, 0x7f070181

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2005
    .end local v26    # "value":Ljava/lang/String;
    :cond_28
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_29

    .line 2006
    const-string/jumbo v27, "ShowPics"

    const v28, 0x7f0705dd

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_6

    .line 2008
    .end local v26    # "value":Ljava/lang/String;
    :cond_29
    const-string/jumbo v27, "ShowProfile"

    const v28, 0x7f0705de

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_6

    .line 2011
    .end local v21    # "sort":I
    .end local v26    # "value":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2d

    .line 2013
    const-string/jumbo v27, "dialogsClickOnGroupPic"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 2014
    .restart local v21    # "sort":I
    if-nez v21, :cond_2b

    .line 2015
    const-string/jumbo v27, "RowGradientDisabled"

    const v28, 0x7f070550

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 2021
    .restart local v26    # "value":Ljava/lang/String;
    :goto_7
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ClickOnGroupPic"

    const v29, 0x7f070182

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2016
    .end local v26    # "value":Ljava/lang/String;
    :cond_2b
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_2c

    .line 2017
    const-string/jumbo v27, "ShowPics"

    const v28, 0x7f0705dd

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_7

    .line 2019
    .end local v26    # "value":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v27, "ShowProfile"

    const v28, 0x7f0705de

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_7

    .line 2022
    .end local v21    # "sort":I
    .end local v26    # "value":Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2e

    .line 2023
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ToastNotificationSize"

    const v29, 0x7f07063a

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationSize:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2024
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2f

    .line 2025
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ToastNotificationPadding"

    const v29, 0x7f070638

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "%d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPadding:I

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2026
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$8000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_32

    .line 2028
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPosition:I

    .line 2029
    .restart local v21    # "sort":I
    if-nez v21, :cond_30

    .line 2030
    const-string/jumbo v27, "Left"

    const v28, 0x7f070345

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .line 2036
    .restart local v26    # "value":Ljava/lang/String;
    :goto_8
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ToastNotificationPosition"

    const v29, 0x7f070639

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2031
    .end local v26    # "value":Ljava/lang/String;
    :cond_30
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_31

    .line 2032
    const-string/jumbo v27, "Center"

    const v28, 0x7f0700f8

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_8

    .line 2034
    .end local v26    # "value":Ljava/lang/String;
    :cond_31
    const-string/jumbo v27, "Right"

    const v28, 0x7f07054a

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "value":Ljava/lang/String;
    goto :goto_8

    .line 2037
    .end local v21    # "sort":I
    .end local v26    # "value":Ljava/lang/String;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$8100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    .line 2038
    const-string/jumbo v24, "Chats to load"

    .line 2039
    .local v24, "title":Ljava/lang/String;
    const-string/jumbo v27, "chatsToLoad"

    const/16 v28, 0x64

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 2040
    .local v26, "value":I
    const/16 v27, 0x32

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_33

    .line 2041
    const-string/jumbo v27, "50"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2042
    :cond_33
    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_34

    .line 2043
    const-string/jumbo v27, "100"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2044
    :cond_34
    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_35

    .line 2045
    const-string/jumbo v27, "200"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2046
    :cond_35
    const/16 v27, 0x12c

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_36

    .line 2047
    const-string/jumbo v27, "300"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2048
    :cond_36
    const/16 v27, 0x190

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_37

    .line 2049
    const-string/jumbo v27, "400"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2050
    :cond_37
    const/16 v27, 0x1f4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_38

    .line 2051
    const-string/jumbo v27, "500"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2052
    :cond_38
    const/16 v27, 0x2ee

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_39

    .line 2053
    const-string/jumbo v27, "750"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2054
    :cond_39
    const/16 v27, 0x3e8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3a

    .line 2055
    const-string/jumbo v27, "1000"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2056
    :cond_3a
    const/16 v27, 0x5dc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3b

    .line 2057
    const-string/jumbo v27, "1500"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2058
    :cond_3b
    const/16 v27, 0x7d0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3c

    .line 2059
    const-string/jumbo v27, "2000"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2060
    :cond_3c
    const v27, 0xf4240

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    .line 2061
    const-string/jumbo v27, "All"

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 2066
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v23    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v24    # "title":Ljava/lang/String;
    .end local v26    # "value":I
    :cond_3d
    const/16 v27, 0x3

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_73

    .line 2067
    if-nez p2, :cond_3e

    .line 2068
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_3e
    move-object/from16 v23, p2

    .line 2070
    check-cast v23, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 2072
    .local v23, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v28, "plusconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2073
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_3f

    .line 2074
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DisableAudioStop"

    const v29, 0x7f0701fd

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "disableAudioStop"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2075
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_40

    .line 2076
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DisableMessageClick"

    const v29, 0x7f0701fe

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "disableMessageClick"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2077
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_41

    .line 2078
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DirectShareReplies"

    const v29, 0x7f0701fa

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "directShareReplies"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2079
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_42

    .line 2080
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DirectShareToMenu"

    const v29, 0x7f0701fc

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "directShareToMenu"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2081
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_43

    .line 2082
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DirectShareShowFavsFirst"

    const v29, 0x7f0701fb

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "directShareFavsFirst"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2083
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_44

    .line 2084
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowEditedMark"

    const v29, 0x7f0705d5

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "showEditedMark"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2085
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_45

    .line 2086
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowDateToast"

    const v29, 0x7f0705d3

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "showDateToast"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2087
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_46

    .line 2088
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideLeftGroup"

    const v29, 0x7f0702cb

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "hideLeftGroup"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2089
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_47

    .line 2090
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideJoinedGroup"

    const v29, 0x7f0702ca

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "hideJoinedGroup"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2091
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_48

    .line 2092
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideBotKeyboard"

    const v29, 0x7f0702c8

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "hideBotKeyboard"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2093
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_49

    .line 2094
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "KeepOriginalFilename"

    const v29, 0x7f070316

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "keepOriginalFilename"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2095
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4a

    .line 2096
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowAndroidEmoji"

    const v29, 0x7f0705d1

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "showAndroidEmoji"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2097
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4b

    .line 2098
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "UseDeviceFont"

    const v29, 0x7f070655

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "useDeviceFont"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2099
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4c

    .line 2100
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideTabs"

    const v29, 0x7f0702d4

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2101
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4d

    .line 2102
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DisableTabsAnimation"

    const v29, 0x7f0701ff

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsAnimation:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2103
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4e

    .line 2104
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowTabTitle"

    const v29, 0x7f0705e1

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusTabTitlesMode:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2105
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$1900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_4f

    .line 2106
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "FitTabsToScreen"

    const v29, 0x7f07024f

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusTabsShouldExpand:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2107
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_50

    .line 2108
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "TabsToBottom"

    const v29, 0x7f070614

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "tabsToBottom"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2109
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_51

    .line 2110
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DisableTabsScrolling"

    const v29, 0x7f070200

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDisableTabsScrolling:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2111
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_52

    .line 2112
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideSelectedTabIndicator"

    const v29, 0x7f0702cf

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "hideSelectedTabIndicator"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2113
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_53

    .line 2114
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "InfiniteSwipe"

    const v29, 0x7f0702f1

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusInfiniteTabsSwipe:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2115
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_54

    .line 2116
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideTabsCounters"

    const v29, 0x7f0702d5

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2117
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_55

    .line 2118
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HeaderTabCounterCountChats"

    const v29, 0x7f0702bf

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountChats:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2119
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_56

    .line 2120
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HeaderTabCounterCountNotMuted"

    const v29, 0x7f0702c0

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusTabsCountersCountNotMuted:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2121
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_57

    .line 2122
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideMobile"

    const v29, 0x7f0702cc

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2123
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_58

    .line 2124
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowUsernameInMenu"

    const v29, 0x7f0705e6

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowUsername:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2125
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_59

    .line 2126
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "InvertMessageOrder"

    const v29, 0x7f0702fa

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "invertMessagesOrder"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2127
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5a

    .line 2128
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SearchUserOnTwitter"

    const v29, 0x7f070573

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "searchOnTwitter"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2129
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5b

    .line 2130
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowPhotoQualityBar"

    const v29, 0x7f0705dc

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowPhotoQualityBar:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2131
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5c

    .line 2132
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowTypingToast"

    const v29, 0x7f0705e2

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowTypingToast:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2133
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5d

    .line 2134
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ToastNotificationToBottom"

    const v29, 0x7f07063b

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationToBottom:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2135
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5e

    .line 2136
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowOnlineToast"

    const v29, 0x7f0705d8

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlineToast:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2137
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_5f

    .line 2138
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowOnlyIfContactFav"

    const v29, 0x7f0705d9

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlyIfContactFav:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2139
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_60

    .line 2140
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowOfflineToast"

    const v29, 0x7f0705d7

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowOfflineToast:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2141
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_61

    .line 2142
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "OverrideNotificationsIfPlaying"

    const v29, 0x7f07046b

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideNotificationsIfPlaying:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2143
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_62

    .line 2144
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "EnableDirectReply"

    const v29, 0x7f070222

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusEnableDirectReply:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2145
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_63

    .line 2146
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowQuickBar"

    const v29, 0x7f0705df

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2147
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_64

    .line 2148
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "VerticalQuickBar"

    const v29, 0x7f070670

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2150
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_65

    .line 2151
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "AlwaysBackToMain"

    const v29, 0x7f070067

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusAlwaysBackToMain:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2153
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_66

    .line 2154
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DoNotCloseQuickBar"

    const v29, 0x7f070204

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2156
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_67

    .line 2157
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideQuickBarOnScroll"

    const v29, 0x7f0702ce

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2159
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_68

    .line 2160
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "CenterQuickBarButton"

    const v29, 0x7f0700fa

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2162
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_69

    .line 2163
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowMembersOnQuickBar"

    const v29, 0x7f0705d6

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarShowMembers:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2165
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6a

    .line 2166
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SaveToCloudQuote"

    const v29, 0x7f070561

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusSaveToCloudQuote:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2167
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6b

    .line 2168
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SwipeToReply"

    const v29, 0x7f07060e

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusSwipeToReply:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2169
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6c

    .line 2170
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideInstantCamera"

    const v29, 0x7f0702c9

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusHideInstantCamera:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2171
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6d

    .line 2172
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DoNotHideStickersTab"

    const v29, 0x7f070205

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotHideStickersTab:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2173
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6e

    .line 2174
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideStatusBar"

    const v29, 0x7f0702d1

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusPhotoViewerHideStatusBar:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2175
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6f

    .line 2176
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "EnableGoToMessage"

    const v29, 0x7f070223

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusProfileEnableGoToMsg:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2177
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_70

    .line 2178
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DoNotChangeHeaderTitle"

    const v29, 0x7f0706ea

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2179
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_71

    .line 2180
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "EmojiBigSize"

    const v29, 0x7f07021a

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusDrawSingleBigEmoji:Z

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2181
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$2700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_72

    .line 2182
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "LimitTabsCounter"

    const v29, 0x7f070346

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusLimitTabsCounters:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2183
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$5300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 2184
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Markdown"

    const v29, 0x7f07036a

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    sget-boolean v28, Lorg/telegram/ui/ActionBar/Theme;->plusEnableMarkdown:Z

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 2186
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v23    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_73
    const/16 v27, 0x6

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_a1

    .line 2187
    if-nez p2, :cond_74

    .line 2188
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_74
    move-object/from16 v23, p2

    .line 2190
    check-cast v23, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 2192
    .local v23, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$3900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_83

    .line 2203
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "HideShowTabs"

    const v29, 0x7f0702d0

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2205
    .local v26, "value":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 2206
    .local v22, "text":Ljava/lang/String;
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideAllTab:Z

    if-nez v27, :cond_75

    .line 2207
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "All"

    const v29, 0x7f07005d

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2209
    :cond_75
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideUsersTab:Z

    if-nez v27, :cond_77

    .line 2210
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_76

    .line 2211
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2213
    :cond_76
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Users"

    const v29, 0x7f070667

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2215
    :cond_77
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideGroupsTab:Z

    if-nez v27, :cond_79

    .line 2216
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_78

    .line 2217
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2219
    :cond_78
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Groups"

    const v29, 0x7f0702b4

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2221
    :cond_79
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideSuperGroupsTab:Z

    if-nez v27, :cond_7b

    .line 2222
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_7a

    .line 2223
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2225
    :cond_7a
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SuperGroups"

    const v29, 0x7f07060c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2227
    :cond_7b
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideChannelsTab:Z

    if-nez v27, :cond_7d

    .line 2228
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_7c

    .line 2229
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2231
    :cond_7c
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Channels"

    const v29, 0x7f07015c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2233
    :cond_7d
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideBotsTab:Z

    if-nez v27, :cond_7f

    .line 2234
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_7e

    .line 2235
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2237
    :cond_7e
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Bots"

    const v29, 0x7f0700d7

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2239
    :cond_7f
    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->plusHideFavsTab:Z

    if-nez v27, :cond_81

    .line 2240
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_80

    .line 2241
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2243
    :cond_80
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Favorites"

    const v29, 0x7f070245

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2245
    :cond_81
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_82

    .line 2246
    const-string/jumbo v22, ""

    .line 2248
    :cond_82
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2249
    .end local v22    # "text":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_8e

    .line 2251
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v28, "plusconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2252
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v27, "showDSBtnUsers"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 2253
    .local v17, "showDSBtnUsers":Z
    const-string/jumbo v27, "showDSBtnGroups"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 2254
    .local v15, "showDSBtnGroups":Z
    const-string/jumbo v27, "showDSBtnSGroups"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 2255
    .local v16, "showDSBtnSGroups":Z
    const-string/jumbo v27, "showDSBtnChannels"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 2256
    .local v14, "showDSBtnChannels":Z
    const-string/jumbo v27, "showDSBtnBots"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 2258
    .local v13, "showDSBtnBots":Z
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowDirectShareButton"

    const v29, 0x7f0705d4

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2260
    .restart local v26    # "value":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 2261
    .restart local v22    # "text":Ljava/lang/String;
    if-eqz v17, :cond_84

    .line 2262
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Users"

    const v29, 0x7f070667

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2264
    :cond_84
    if-eqz v15, :cond_86

    .line 2265
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_85

    .line 2266
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2268
    :cond_85
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Groups"

    const v29, 0x7f0702b4

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2270
    :cond_86
    if-eqz v16, :cond_88

    .line 2271
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_87

    .line 2272
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2274
    :cond_87
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SuperGroups"

    const v29, 0x7f07060c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2276
    :cond_88
    if-eqz v14, :cond_8a

    .line 2277
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_89

    .line 2278
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2280
    :cond_89
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Channels"

    const v29, 0x7f07015c

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2282
    :cond_8a
    if-eqz v13, :cond_8c

    .line 2283
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_8b

    .line 2284
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2286
    :cond_8b
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Bots"

    const v29, 0x7f0700d7

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2289
    :cond_8c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_8d

    .line 2290
    const-string/jumbo v27, "Channels"

    const v28, 0x7f07065e

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 2292
    :cond_8d
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2293
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v13    # "showDSBtnBots":Z
    .end local v14    # "showDSBtnChannels":Z
    .end local v15    # "showDSBtnGroups":Z
    .end local v16    # "showDSBtnSGroups":Z
    .end local v17    # "showDSBtnUsers":Z
    .end local v22    # "text":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_97

    .line 2295
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v28, "plusconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2297
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v27, "hideSharedMedia"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 2298
    .local v9, "hideMedia":Z
    const-string/jumbo v27, "hideSharedFiles"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2299
    .local v7, "hideFiles":Z
    const-string/jumbo v27, "hideSharedMusic"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 2300
    .local v10, "hideMusic":Z
    const-string/jumbo v27, "hideSharedLinks"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 2302
    .local v8, "hideLinks":Z
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SharedMedia"

    const v29, 0x7f0705c9

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2304
    .restart local v26    # "value":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 2305
    .restart local v22    # "text":Ljava/lang/String;
    if-nez v9, :cond_8f

    .line 2306
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "SharedMediaTitle"

    const v29, 0x7f0705ca

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2308
    :cond_8f
    if-nez v7, :cond_91

    .line 2309
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_90

    .line 2310
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2312
    :cond_90
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "DocumentsTitle"

    const v29, 0x7f070206

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2314
    :cond_91
    if-nez v10, :cond_93

    .line 2315
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_92

    .line 2316
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2318
    :cond_92
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "AudioTitle"

    const v29, 0x7f0700ae

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2320
    :cond_93
    if-nez v8, :cond_95

    .line 2321
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_94

    .line 2322
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2324
    :cond_94
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "LinksTitle"

    const v29, 0x7f070353

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2327
    :cond_95
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_96

    .line 2328
    const-string/jumbo v22, ""

    .line 2330
    :cond_96
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2391
    .end local v7    # "hideFiles":Z
    .end local v8    # "hideLinks":Z
    .end local v9    # "hideMedia":Z
    .end local v10    # "hideMusic":Z
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v22    # "text":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$4300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_9e

    .line 2393
    sget-object v27, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v28, "plusconfig"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2395
    .restart local v11    # "preferences":Landroid/content/SharedPreferences;
    const/4 v6, 0x1

    .line 2396
    .local v6, "VERSION":I
    const/4 v5, 0x2

    .line 2402
    .local v5, "LANGUAGE":I
    const-string/jumbo v27, "showMySettings"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2403
    .local v4, "FLAGS":I
    and-int/lit8 v27, v4, 0x1

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9c

    const/16 v19, 0x1

    .line 2404
    .local v19, "showVersion":Z
    :goto_9
    and-int/lit8 v27, v4, 0x2

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9d

    const/16 v18, 0x1

    .line 2410
    .local v18, "showLanguage":Z
    :goto_a
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ShowMySettings"

    const v29, 0x7f07073b

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2412
    .restart local v26    # "value":Ljava/lang/String;
    const-string/jumbo v22, ""

    .line 2413
    .restart local v22    # "text":Ljava/lang/String;
    if-eqz v19, :cond_98

    .line 2414
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "PlusVersion"

    const v29, 0x7f070739

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2416
    :cond_98
    if-eqz v18, :cond_9a

    .line 2417
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_99

    .line 2418
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2420
    :cond_99
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Language"

    const v29, 0x7f07031e

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2423
    :cond_9a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_9b

    .line 2424
    const-string/jumbo v22, ""

    .line 2426
    :cond_9b
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2403
    .end local v18    # "showLanguage":Z
    .end local v19    # "showVersion":Z
    .end local v22    # "text":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_9c
    const/16 v19, 0x0

    goto/16 :goto_9

    .line 2404
    .restart local v19    # "showVersion":Z
    :cond_9d
    const/16 v18, 0x0

    goto/16 :goto_a

    .line 2427
    .end local v4    # "FLAGS":I
    .end local v5    # "LANGUAGE":I
    .end local v6    # "VERSION":I
    .end local v11    # "preferences":Landroid/content/SharedPreferences;
    .end local v19    # "showVersion":Z
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_9f

    .line 2428
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 2429
    const-string/jumbo v27, "SaveSettings"

    const v28, 0x7f07055b

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "SaveSettingsSum"

    const v30, 0x7f07055c

    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "AlsoFavorites"

    const v30, 0x7f070064

    .line 2430
    invoke-static/range {v29 .. v30}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    .line 2429
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2431
    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$6800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_a0

    .line 2432
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 2433
    const-string/jumbo v27, "RestoreSettings"

    const v28, 0x7f07053e

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "RestoreSettingsSum"

    const v29, 0x7f07053f

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2434
    :cond_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$7000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 2435
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 2436
    const-string/jumbo v27, "ResetSettings"

    const v28, 0x7f070531

    invoke-static/range {v27 .. v28}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "ResetSettingsSum"

    const v29, 0x7f070532

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 2438
    .end local v23    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    :cond_a1
    const/16 v27, 0x7

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 2439
    if-nez p2, :cond_a2

    .line 2440
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 2442
    .restart local p2    # "view":Landroid/view/View;
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$10100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_a3

    move-object/from16 v27, p2

    .line 2443
    check-cast v27, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v28, "KeepOriginalFilenameHelp"

    const v29, 0x7f070317

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2444
    const v27, 0x7f0200ae

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 2445
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/PlusSettingsActivity;->access$9800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v27

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    move-object/from16 v27, p2

    .line 2446
    check-cast v27, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v28, "OnlineToastHelp"

    const v29, 0x7f070458

    invoke-static/range {v28 .. v29}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 2447
    const v27, 0x7f0200ae

    move-object/from16 v0, p2

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 2451
    :cond_a4
    const-string/jumbo v27, "windowBackgroundWhite"

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2491
    const/16 v0, 0x8

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1907
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2496
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1875
    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1876
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1877
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1878
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1879
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1880
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1881
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$1900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1882
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1883
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$7500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1884
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5900(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6000(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1885
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$6500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5600(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1886
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$4800(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5500(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5400(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$8100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    .line 1887
    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$3100(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5200(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$2700(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusSettingsActivity;->access$5300(Lorg/telegram/ui/PlusSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
