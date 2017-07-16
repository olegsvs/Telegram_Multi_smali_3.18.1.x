.class Lorg/telegram/ui/ThemingChatActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingChatActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingChatActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1598
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1599
    iput-object p2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 1600
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1604
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$7600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1627
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1632
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 1983
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1984
    const/4 v0, 0x0

    .line 2006
    :cond_0
    :goto_0
    return v0

    .line 1986
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 1987
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1989
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$6900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1993
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1994
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1995
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1996
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1997
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$4900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$5100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$3200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1998
    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 1999
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 2000
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$1900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 2001
    :cond_6
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 2002
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$2200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingChatActivity;->access$900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 2003
    :cond_8
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 1642
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->getItemViewType(I)I

    move-result v4

    .line 1643
    .local v4, "type":I
    const-string/jumbo v0, ""

    .line 1644
    .local v0, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$000(Lorg/telegram/ui/ThemingChatActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1645
    const-string/jumbo v0, "2."

    .line 1646
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$7700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 1647
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1656
    :cond_0
    :goto_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "theme"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1657
    .local v3, "themePrefs":Landroid/content/SharedPreferences;
    if-nez v4, :cond_6

    .line 1658
    if-nez p2, :cond_1

    .line 1659
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1975
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 1976
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v6, :cond_72

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1978
    :cond_2
    return-object p2

    .line 1648
    .end local v3    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$7800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_4

    .line 1649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1650
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$7800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ge p1, v6, :cond_5

    .line 1651
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "1."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1653
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "2."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingChatActivity;->access$7800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v7

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1662
    .restart local v3    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_6
    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    .line 1663
    if-nez p2, :cond_7

    .line 1664
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1665
    .restart local p2    # "view":Landroid/view/View;
    const/4 v6, -0x1

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1667
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$7700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_8

    move-object v6, p2

    .line 1668
    check-cast v6, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Header"

    const v9, 0x7f0702ba

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1669
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$7800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    move-object v6, p2

    .line 1670
    check-cast v6, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ChatList"

    const v9, 0x7f070163

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1673
    :cond_9
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1a

    .line 1674
    if-nez p2, :cond_a

    .line 1675
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    move-object v2, p2

    .line 1677
    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1678
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$5800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_c

    .line 1679
    const-string/jumbo v6, "chatHeaderAvatarRadius"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1680
    const-string/jumbo v7, "chatHeaderAvatarRadius"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x23

    :goto_3
    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1681
    .local v1, "size":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "AvatarRadius"

    const v8, 0x7f0700ba

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1680
    .end local v1    # "size":I
    :cond_b
    const/16 v6, 0x20

    goto :goto_3

    .line 1682
    :cond_c
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$5900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_d

    .line 1683
    const-string/jumbo v6, "chatAvatarRadius"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1685
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "AvatarRadius"

    const v8, 0x7f0700ba

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarRadius:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1686
    :cond_d
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$6000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_e

    .line 1687
    const-string/jumbo v6, "chatAvatarSize"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1689
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "AvatarSize"

    const v8, 0x7f0700bb

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarSize:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1690
    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$6100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_f

    .line 1691
    const-string/jumbo v6, "chatAvatarMarginLeft"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1693
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "AvatarMarginLeft"

    const v8, 0x7f0700b9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarMarginLeft:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1694
    :cond_f
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$6200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_11

    .line 1695
    const-string/jumbo v6, "chatNameSize"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1696
    const-string/jumbo v7, "chatNameSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v6, 0x14

    :goto_4
    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1697
    .restart local v1    # "size":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "NameSize"

    const v8, 0x7f0703b3

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1696
    .end local v1    # "size":I
    :cond_10
    const/16 v6, 0x12

    goto :goto_4

    .line 1698
    :cond_11
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$6300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_12

    .line 1699
    const-string/jumbo v6, "chatStatusSize"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1700
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "StatusSize"

    const v8, 0x7f0705fd

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatStatusSize:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1701
    :cond_12
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$6400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_14

    .line 1702
    const-string/jumbo v6, "chatTextSize"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1703
    const-string/jumbo v7, "chatTextSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_13

    const/16 v6, 0x12

    :goto_5
    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1704
    .restart local v1    # "size":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "TextSize"

    const v8, 0x7f070620

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1703
    .end local v1    # "size":I
    :cond_13
    const/16 v6, 0x10

    goto :goto_5

    .line 1705
    :cond_14
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$6500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_15

    .line 1706
    const-string/jumbo v6, "chatTimeSize"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1708
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "TimeSize"

    const v8, 0x7f07062a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatTimeSize:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1709
    :cond_15
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$6600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_16

    .line 1710
    const-string/jumbo v6, "chatDateSize"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1712
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "DateSize"

    const v8, 0x7f0701c7

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->chatDateSize:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1713
    :cond_16
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$6700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_18

    .line 1714
    const-string/jumbo v6, "chatEditTextSize"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1715
    const-string/jumbo v7, "chatEditTextSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_17

    const/16 v6, 0x14

    :goto_6
    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1716
    .restart local v1    # "size":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "EditTextSize"

    const v8, 0x7f070214

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1715
    .end local v1    # "size":I
    :cond_17
    const/16 v6, 0x12

    goto :goto_6

    .line 1717
    :cond_18
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$6800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_19

    .line 1718
    const-string/jumbo v6, "chatBubbleStyle"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1720
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "BubbleStyle"

    const v8, 0x7f0700d8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chatBubbleStyle:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1721
    :cond_19
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$6900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 1722
    const-string/jumbo v6, "chatCheckStyle"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 1724
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "CheckStyle"

    const v8, 0x7f070172

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chatCheckStyle:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1726
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_1a
    const/4 v6, 0x4

    if-ne v4, v6, :cond_25

    .line 1727
    if-nez p2, :cond_1b

    .line 1728
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_1b
    move-object v2, p2

    .line 1730
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1731
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$1100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1c

    .line 1732
    const-string/jumbo v6, "chatSolidBGColorCheck"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1733
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "SetSolidBGColor"

    const v8, 0x7f0705b6

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1734
    :cond_1c
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$1000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1d

    .line 1735
    const-string/jumbo v6, "chatCommandColorCheck"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1736
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "CommandColorCheck"

    const v8, 0x7f070191

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatCommandColorCheck"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1737
    :cond_1d
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$1200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1e

    .line 1738
    const-string/jumbo v6, "chatMemberColorCheck"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1739
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "SetMemberColor"

    const v8, 0x7f0705b4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColorCheck:Z

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1740
    :cond_1e
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$1300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1f

    .line 1741
    const-string/jumbo v6, "chatShowUsernameCheck"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1742
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ShowUsername"

    const v8, 0x7f0705e5

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->chatShowUsernameCheck:Z

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1743
    :cond_1f
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$1400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_20

    .line 1744
    const-string/jumbo v6, "chatAvatarAlignTop"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "AvatarAlignTop"

    const v8, 0x7f0700b7

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->chatAvatarAlignTop:Z

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1746
    :cond_20
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$1500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_21

    .line 1747
    const-string/jumbo v6, "chatOwnAvatarAlignTop"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1748
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "OwnAvatarAlignTop"

    const v8, 0x7f07046c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->chatOwnAvatarAlignTop:Z

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1749
    :cond_21
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$1600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_22

    .line 1750
    const-string/jumbo v6, "chatShowContactAvatar"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1751
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ShowContactAvatar"

    const v8, 0x7f0705d2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->chatShowContactAvatar:Z

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1752
    :cond_22
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$1700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_23

    .line 1753
    const-string/jumbo v6, "chatShowOwnAvatar"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1754
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ShowOwnAvatar"

    const v8, 0x7f0705da

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatar:Z

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1755
    :cond_23
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$1800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_24

    .line 1756
    const-string/jumbo v6, "chatShowOwnAvatarGroup"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ShowOwnAvatarGroup"

    const v8, 0x7f0705db

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->chatShowOwnAvatarGroup:Z

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1758
    :cond_24
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$1900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 1759
    const-string/jumbo v6, "chatHideStatusIndicator"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 1760
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "HideStatusIndicator"

    const v8, 0x7f0702d2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->chatHideStatusIndicator:Z

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 1763
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_25
    const/4 v6, 0x3

    if-ne v4, v6, :cond_58

    .line 1764
    if-nez p2, :cond_26

    .line 1765
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_26
    move-object v2, p2

    .line 1768
    check-cast v2, Lorg/telegram/ui/Cells/TextColorCell;

    .line 1773
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_27

    .line 1774
    const-string/jumbo v6, "chatHeaderColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1775
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "HeaderColor"

    const v8, 0x7f0702bb

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1776
    :cond_27
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_29

    .line 1777
    const-string/jumbo v6, "chatHeaderGradientColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "HeaderColor"

    const v8, 0x7f07054f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "chatHeaderGradient"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_28

    const/4 v6, 0x0

    :goto_7
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_28
    const-string/jumbo v6, "chatHeaderGradientColor"

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_7

    .line 1779
    :cond_29
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$3800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_2a

    .line 1780
    const-string/jumbo v6, "chatHeaderIconsColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1781
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "HeaderIconsColor"

    const v8, 0x7f0702bc

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1782
    :cond_2a
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$2000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_2c

    .line 1783
    const-string/jumbo v6, "chatSolidBGColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1784
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "SolidBGColor"

    const v8, 0x7f0705ef

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-eqz v6, :cond_2b

    const-string/jumbo v6, "chatSolidBGColor"

    const/4 v8, -0x1

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_8
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_2b
    const/4 v6, 0x0

    goto :goto_8

    .line 1785
    :cond_2c
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$2100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_2f

    .line 1786
    const-string/jumbo v6, "chatGradientBGColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1787
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradientColor"

    const v8, 0x7f07054f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "chatGradientBG"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2d

    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-nez v6, :cond_2e

    :cond_2d
    const/4 v6, 0x0

    :goto_9
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_2e
    const-string/jumbo v6, "chatGradientBGColor"

    const/4 v8, -0x1

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_9

    .line 1788
    :cond_2f
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$2300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_31

    .line 1789
    const-string/jumbo v6, "chatMemberColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1790
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "MemberColor"

    const v8, 0x7f07037b

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColorCheck:Z

    if-eqz v6, :cond_30

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColor:I

    :goto_a
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_30
    const/4 v6, 0x0

    goto :goto_a

    .line 1791
    :cond_31
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$2400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_32

    .line 1792
    const-string/jumbo v6, "chatContactNameColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1793
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "SharedContactNameColor"

    const v8, 0x7f0705c8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatContactNameColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1794
    :cond_32
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$2500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_33

    .line 1795
    const-string/jumbo v6, "chatForwardRColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1796
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ForwardRightNameColor"

    const v8, 0x7f07025c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatForwardRColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1797
    :cond_33
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$2600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_34

    .line 1798
    const-string/jumbo v6, "chatForwardLColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1799
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ForwardLeftNameColor"

    const v8, 0x7f070257

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatForwardLColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1800
    :cond_34
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$2700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_35

    .line 1801
    const-string/jumbo v6, "chatMuteColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1802
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "MuteColor"

    const v8, 0x7f0703ad

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatMuteColor"

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1803
    :cond_35
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$2800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_36

    .line 1804
    const-string/jumbo v6, "chatRBubbleColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1805
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RBubbleColor"

    const v8, 0x7f070504

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatRBubbleColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1806
    :cond_36
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$2900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_37

    .line 1807
    const-string/jumbo v6, "chatLBubbleColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1808
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "LBubbleColor"

    const v8, 0x7f07031a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatLBubbleColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1809
    :cond_37
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$3000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_38

    .line 1810
    const-string/jumbo v6, "chatRTextColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1811
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RTextColor"

    const v8, 0x7f070506

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatRTextColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1812
    :cond_38
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$3100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_39

    .line 1813
    const-string/jumbo v6, "chatLTextColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1814
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "LTextColor"

    const v8, 0x7f07031c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatLTextColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1815
    :cond_39
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$3200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_3a

    .line 1816
    const-string/jumbo v6, "chatSelectedMsgBGColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1817
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "SelectedMsgBGColor"

    const v8, 0x7f07058a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatSelectedMsgBGColor"

    const v8, 0x6626a69a

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1818
    :cond_3a
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$3300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_3b

    .line 1819
    const-string/jumbo v6, "chatRLinkColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1820
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RLinkColor"

    const v8, 0x7f070505

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatRLinkColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1821
    :cond_3b
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$3400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_3c

    .line 1822
    const-string/jumbo v6, "chatLLinkColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1823
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "LLinkColor"

    const v8, 0x7f07031b

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatLLinkColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1824
    :cond_3c
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$3900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_3d

    .line 1825
    const-string/jumbo v6, "chatNameColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1826
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "NameColor"

    const v8, 0x7f0703b2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatNameColor"

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1827
    :cond_3d
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$5200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_3e

    .line 1828
    const-string/jumbo v6, "chatStatusColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1829
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "StatusColor"

    const v8, 0x7f0705fc

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatStatusColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1830
    :cond_3e
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$5300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_3f

    .line 1831
    const-string/jumbo v6, "chatOnlineColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1832
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "OnlineColor"

    const v8, 0x7f070457

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatOnlineColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1833
    :cond_3f
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$5400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_40

    .line 1834
    const-string/jumbo v6, "chatTypingColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1835
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "TypingColor"

    const v8, 0x7f070644

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatTypingColor:I

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1836
    :cond_40
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$3500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_41

    .line 1837
    const-string/jumbo v6, "chatRTimeColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1838
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RTimeColor"

    const v8, 0x7f070507

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatRTimeColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1839
    :cond_41
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$3600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_42

    .line 1840
    const-string/jumbo v6, "chatLTimeColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1841
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "LTimeColor"

    const v8, 0x7f07031d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatLTimeColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1842
    :cond_42
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$5700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_43

    .line 1843
    const-string/jumbo v6, "chatChecksColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1844
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ChecksColor"

    const v8, 0x7f070173

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatChecksColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1845
    :cond_43
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$5500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_45

    .line 1846
    const-string/jumbo v6, "chatCommandColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1847
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "CommandColor"

    const v8, 0x7f070190

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "chatCommandColorCheck"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_44

    const-string/jumbo v6, "chatCommandColor"

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    :goto_b
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_44
    const/4 v6, 0x0

    goto :goto_b

    .line 1848
    :cond_45
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$5600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_46

    .line 1849
    const-string/jumbo v6, "chatDateColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1850
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "DateColor"

    const v8, 0x7f0701c6

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatDateColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1851
    :cond_46
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$3700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_47

    .line 1852
    const-string/jumbo v6, "chatDateBubbleColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1853
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "DateBubbleColor"

    const v8, 0x7f0701c5

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatDateBubbleColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1854
    :cond_47
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$4000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_48

    .line 1855
    const-string/jumbo v6, "chatSendIconColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1856
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "SendIcon"

    const v8, 0x7f070591

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatSendIconColor"

    const-string/jumbo v8, "chatEditTextIconsColor"

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1857
    :cond_48
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$4100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_49

    .line 1858
    const-string/jumbo v6, "chatEditTextColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1859
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "EditTextColor"

    const v8, 0x7f070212

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatEditTextColor"

    const/high16 v8, -0x1000000

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1860
    :cond_49
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$4200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_4a

    .line 1861
    const-string/jumbo v6, "chatEditTextBGColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1862
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "EditTextBGColor"

    const v8, 0x7f070211

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatEditTextBGColor"

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1863
    :cond_4a
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$4300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_4c

    .line 1864
    const-string/jumbo v6, "chatEditTextBGGradient"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradientColor"

    const v8, 0x7f07054f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "chatEditTextBGGradient"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4b

    const/4 v6, 0x0

    :goto_c
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_4b
    const-string/jumbo v6, "chatEditTextBGGradientColor"

    const/4 v8, -0x1

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_c

    .line 1866
    :cond_4c
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$4400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_4d

    .line 1867
    const-string/jumbo v6, "chatAttachBGColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1868
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "AttachBGColor"

    const v8, 0x7f0700a2

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatAttachBGColor"

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1869
    :cond_4d
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$4500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_4f

    .line 1870
    const-string/jumbo v6, "chatAttachBGGradient"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1871
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradientColor"

    const v8, 0x7f07054f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "chatAttachBGGradient"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4e

    const/4 v6, 0x0

    :goto_d
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_4e
    const-string/jumbo v6, "chatAttachBGGradientColor"

    const/4 v8, -0x1

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_d

    .line 1872
    :cond_4f
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$4600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_50

    .line 1873
    const-string/jumbo v6, "chatAttachTextColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1874
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "AttachTextColor"

    const v8, 0x7f0700ac

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatAttachTextColor"

    const v8, -0x8a8a8b

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1875
    :cond_50
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$4700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_51

    .line 1876
    const-string/jumbo v6, "chatEditTextIconsColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1877
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "EditTextIconsColor"

    const v8, 0x7f070213

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatEditTextIconsColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1878
    :cond_51
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$4800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_52

    .line 1879
    const-string/jumbo v6, "chatEmojiViewBGColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1880
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "EmojiViewBGColor"

    const v8, 0x7f07021d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatEmojiViewBGColor"

    const v8, -0xa0909

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1881
    :cond_52
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$4900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_54

    .line 1882
    const-string/jumbo v6, "chatEmojiViewBGGradient"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1883
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradientColor"

    const v8, 0x7f07054f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, "chatEmojiViewBGGradient"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_53

    const/4 v6, 0x0

    :goto_e
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_53
    const-string/jumbo v6, "chatEmojiViewBGGradientColor"

    const v8, -0xa0909

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_e

    .line 1884
    :cond_54
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$5000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_55

    .line 1885
    const-string/jumbo v6, "chatEmojiViewTabIconColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1886
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "EmojiViewTabIconColor"

    const v8, 0x7f07021f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatEmojiViewTabIconColor"

    const v8, -0x575758

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1887
    :cond_55
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$5100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_56

    .line 1888
    const-string/jumbo v6, "chatEmojiViewTabColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "EmojiViewTabColor"

    const v8, 0x7f07021e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "chatEmojiViewTabColor"

    const-string/jumbo v8, "themeColor"

    const/16 v9, -0x15

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1890
    :cond_56
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$7000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_57

    .line 1891
    const-string/jumbo v6, "chatQuickBarColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1892
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "QuickBarColor"

    const v8, 0x7f070501

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarColor:I

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1893
    :cond_57
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$7100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 1894
    const-string/jumbo v6, "chatQuickBarNamesColor"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 1895
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "QuickBarNamesColor"

    const v8, 0x7f070502

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarNamesColor:I

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 1897
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_58
    const/4 v6, 0x5

    if-ne v4, v6, :cond_1

    .line 1898
    if-nez p2, :cond_59

    .line 1899
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_59
    move-object v2, p2

    .line 1902
    check-cast v2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 1903
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$2200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_5e

    .line 1904
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1905
    const-string/jumbo v6, "chatGradientBG"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1906
    .local v5, "value":I
    if-nez v5, :cond_5a

    .line 1907
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientDisabled"

    const v8, 0x7f070550

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1908
    :cond_5a
    const/4 v6, 0x1

    if-ne v5, v6, :cond_5b

    .line 1909
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTopBottom"

    const v8, 0x7f070554

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1910
    :cond_5b
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5c

    .line 1911
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientLeftRight"

    const v8, 0x7f070551

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1912
    :cond_5c
    const/4 v6, 0x3

    if-ne v5, v6, :cond_5d

    .line 1913
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTLBR"

    const v8, 0x7f070553

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1914
    :cond_5d
    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1915
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientBLTR"

    const v8, 0x7f07054e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1917
    .end local v5    # "value":I
    :cond_5e
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_63

    .line 1918
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1919
    const-string/jumbo v6, "chatHeaderGradient"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1920
    .restart local v5    # "value":I
    if-nez v5, :cond_5f

    .line 1921
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientDisabled"

    const v8, 0x7f070550

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1922
    :cond_5f
    const/4 v6, 0x1

    if-ne v5, v6, :cond_60

    .line 1923
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTopBottom"

    const v8, 0x7f070554

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1924
    :cond_60
    const/4 v6, 0x2

    if-ne v5, v6, :cond_61

    .line 1925
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientLeftRight"

    const v8, 0x7f070551

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1926
    :cond_61
    const/4 v6, 0x3

    if-ne v5, v6, :cond_62

    .line 1927
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTLBR"

    const v8, 0x7f070553

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1928
    :cond_62
    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1929
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientBLTR"

    const v8, 0x7f07054e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1931
    .end local v5    # "value":I
    :cond_63
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_68

    .line 1932
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1933
    const-string/jumbo v6, "chatEditTextBGGradient"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1934
    .restart local v5    # "value":I
    if-nez v5, :cond_64

    .line 1935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientDisabled"

    const v8, 0x7f070550

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1936
    :cond_64
    const/4 v6, 0x1

    if-ne v5, v6, :cond_65

    .line 1937
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTopBottom"

    const v8, 0x7f070554

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1938
    :cond_65
    const/4 v6, 0x2

    if-ne v5, v6, :cond_66

    .line 1939
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientLeftRight"

    const v8, 0x7f070551

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1940
    :cond_66
    const/4 v6, 0x3

    if-ne v5, v6, :cond_67

    .line 1941
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTLBR"

    const v8, 0x7f070553

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1942
    :cond_67
    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1943
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientBLTR"

    const v8, 0x7f07054e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1945
    .end local v5    # "value":I
    :cond_68
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_6d

    .line 1946
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1947
    const-string/jumbo v6, "chatAttachBGGradient"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1948
    .restart local v5    # "value":I
    if-nez v5, :cond_69

    .line 1949
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientDisabled"

    const v8, 0x7f070550

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1950
    :cond_69
    const/4 v6, 0x1

    if-ne v5, v6, :cond_6a

    .line 1951
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTopBottom"

    const v8, 0x7f070554

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1952
    :cond_6a
    const/4 v6, 0x2

    if-ne v5, v6, :cond_6b

    .line 1953
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientLeftRight"

    const v8, 0x7f070551

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1954
    :cond_6b
    const/4 v6, 0x3

    if-ne v5, v6, :cond_6c

    .line 1955
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTLBR"

    const v8, 0x7f070553

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1956
    :cond_6c
    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1957
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientBLTR"

    const v8, 0x7f07054e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1959
    .end local v5    # "value":I
    :cond_6d
    iget-object v6, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingChatActivity;->access$900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 1960
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 1961
    const-string/jumbo v6, "chatEmojiViewBGGradient"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1962
    .restart local v5    # "value":I
    if-nez v5, :cond_6e

    .line 1963
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientDisabled"

    const v8, 0x7f070550

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1964
    :cond_6e
    const/4 v6, 0x1

    if-ne v5, v6, :cond_6f

    .line 1965
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTopBottom"

    const v8, 0x7f070554

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1966
    :cond_6f
    const/4 v6, 0x2

    if-ne v5, v6, :cond_70

    .line 1967
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientLeftRight"

    const v8, 0x7f070551

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1968
    :cond_70
    const/4 v6, 0x3

    if-ne v5, v6, :cond_71

    .line 1969
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientTLBR"

    const v8, 0x7f070553

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1970
    :cond_71
    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 1971
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradient"

    const v8, 0x7f07054d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "RowGradientBLTR"

    const v8, 0x7f07054e

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1976
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .end local v5    # "value":I
    :cond_72
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 2012
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2017
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 1610
    const-string/jumbo v2, "chatGradientBG"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v0

    .line 1611
    .local v0, "g":I
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    const-string/jumbo v2, "chatHeaderGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1612
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_1
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1613
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    const-string/jumbo v2, "chatCommandColorCheck"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getBoolPref(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1614
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->chatMemberColorCheck:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$2600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$1300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1615
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$6700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    const-string/jumbo v2, "chatEditTextBGGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    const-string/jumbo v2, "chatAttachBGGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1616
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    const-string/jumbo v2, "chatEmojiViewBGGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$4900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$5100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$3200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    .line 1617
    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$7000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-eq p1, v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingChatActivity;->access$7100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v2

    if-ne p1, v2, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    return v1
.end method
