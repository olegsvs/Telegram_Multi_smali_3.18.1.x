.class Lorg/telegram/ui/ProfileActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 3228
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 3229
    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 3230
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 3619
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$8600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 3624
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 3643
    :cond_0
    :goto_0
    return v0

    .line 3626
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 3627
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3628
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 3629
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 3630
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 3631
    :cond_6
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 3632
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-le p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 3633
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 3634
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_9

    .line 3635
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 3636
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 3637
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 3638
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$5500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_b

    .line 3639
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 3640
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3641
    :cond_c
    const/16 v0, 0x8

    goto/16 :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3604
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 3605
    .local v0, "i":I
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 3606
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 3607
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 3608
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 3614
    :cond_1
    :goto_0
    return v1

    .line 3609
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 3610
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-le v0, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-lt v0, v3, :cond_4

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 3611
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 3612
    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-ne v0, v3, :cond_1

    :cond_4
    move v1, v2

    goto/16 :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 38
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 3327
    const/4 v9, 0x1

    .line 3328
    .local v9, "checkBackground":Z
    sget-object v30, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v31, "theme"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 3329
    .local v23, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v30

    packed-switch v30, :pswitch_data_0

    .line 3600
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3331
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 3332
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v30, v0

    check-cast v30, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v31, 0x41000000    # 8.0f

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .line 3334
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v30, v0

    check-cast v30, Lorg/telegram/ui/Cells/EmptyCell;

    const/high16 v31, 0x42100000    # 36.0f

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .line 3338
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    check-cast v22, Lorg/telegram/ui/Cells/TextDetailCell;

    .line 3339
    .local v22, "textDetailCell":Lorg/telegram/ui/Cells/TextDetailCell;
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_3

    .line 3340
    sget v30, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextColor(I)V

    .line 3341
    sget v30, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setValueColor(I)V

    .line 3342
    sget v30, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextDetailCell;->setIconColor(I)V

    .line 3344
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 3346
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v24

    .line 3347
    .local v24, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-eqz v30, :cond_4

    .line 3348
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v30

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "+"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3352
    .local v20, "text":Ljava/lang/String;
    :goto_1
    const-string/jumbo v30, "PhoneMobile"

    const v31, 0x7f0704cd

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const v31, 0x7f02022f

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3350
    .end local v20    # "text":Ljava/lang/String;
    :cond_4
    const-string/jumbo v30, "NumberUnknown"

    const v31, 0x7f070451

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "text":Ljava/lang/String;
    goto :goto_1

    .line 3353
    .end local v20    # "text":Ljava/lang/String;
    .end local v24    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$2600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 3355
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v24

    .line 3356
    .restart local v24    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v24, :cond_6

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-eqz v30, :cond_6

    .line 3357
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "@"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3361
    .restart local v20    # "text":Ljava/lang/String;
    :goto_2
    const-string/jumbo v30, "Username"

    const v31, 0x7f07065b

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3359
    .end local v20    # "text":Ljava/lang/String;
    :cond_6
    const-string/jumbo v20, "-"

    .restart local v20    # "text":Ljava/lang/String;
    goto :goto_2

    .line 3362
    .end local v20    # "text":Ljava/lang/String;
    .end local v24    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    .line 3364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v30

    if-eqz v30, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    if-eqz v30, :cond_8

    .line 3365
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "@"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3369
    .restart local v20    # "text":Ljava/lang/String;
    :goto_3
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3367
    .end local v20    # "text":Ljava/lang/String;
    :cond_8
    const-string/jumbo v20, "-"

    .restart local v20    # "text":Ljava/lang/String;
    goto :goto_3

    .line 3373
    .end local v20    # "text":Ljava/lang/String;
    .end local v22    # "textDetailCell":Lorg/telegram/ui/Cells/TextDetailCell;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/telegram/ui/Cells/TextCell;

    .line 3374
    .local v21, "textCell":Lorg/telegram/ui/Cells/TextCell;
    const-string/jumbo v30, "windowBackgroundWhiteBlackText"

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 3375
    const-string/jumbo v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 3376
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_9

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 3377
    :cond_9
    const-string/jumbo v30, "profileTitleColor"

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 3378
    .local v27, "vColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 3380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$7800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 3381
    const-string/jumbo v30, "Loading"

    const v31, 0x7f070356

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 3385
    .local v29, "value":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    if-eqz v30, :cond_c

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    .line 3386
    const-string/jumbo v30, "SharedMedia"

    const v31, 0x7f0705c9

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const v31, 0x7f02022e

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3390
    :goto_5
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3383
    .end local v29    # "value":Ljava/lang/String;
    :cond_a
    const-string/jumbo v31, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$7800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$7900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    const/16 v35, -0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$7900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    :goto_6
    add-int v30, v30, v34

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "value":Ljava/lang/String;
    goto/16 :goto_4

    .end local v29    # "value":Ljava/lang/String;
    :cond_b
    const/16 v30, 0x0

    goto :goto_6

    .line 3388
    .restart local v29    # "value":Ljava/lang/String;
    :cond_c
    const-string/jumbo v30, "SharedMedia"

    const v31, 0x7f0705c9

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 3391
    .end local v29    # "value":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 3393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 3394
    const-string/jumbo v30, "Loading"

    const v31, 0x7f070356

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 3398
    .restart local v29    # "value":Ljava/lang/String;
    :goto_7
    const-string/jumbo v30, "DocumentsTitle"

    const v31, 0x7f070206

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3396
    .end local v29    # "value":Ljava/lang/String;
    :cond_e
    const-string/jumbo v31, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    const/16 v35, -0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    :goto_8
    add-int v30, v30, v34

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "value":Ljava/lang/String;
    goto :goto_7

    .end local v29    # "value":Ljava/lang/String;
    :cond_f
    const/16 v30, 0x0

    goto :goto_8

    .line 3400
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    .line 3402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    .line 3403
    const-string/jumbo v30, "Loading"

    const v31, 0x7f070356

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 3407
    .restart local v29    # "value":Ljava/lang/String;
    :goto_9
    const-string/jumbo v30, "AudioTitle"

    const v31, 0x7f0700ae

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3408
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3405
    .end local v29    # "value":Ljava/lang/String;
    :cond_11
    const-string/jumbo v31, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    const/16 v35, -0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    :goto_a
    add-int v30, v30, v34

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "value":Ljava/lang/String;
    goto :goto_9

    .end local v29    # "value":Ljava/lang/String;
    :cond_12
    const/16 v30, 0x0

    goto :goto_a

    .line 3409
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 3411
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_14

    .line 3412
    const-string/jumbo v30, "Loading"

    const v31, 0x7f070356

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 3416
    .restart local v29    # "value":Ljava/lang/String;
    :goto_b
    const-string/jumbo v30, "LinksTitle"

    const v31, 0x7f070353

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3417
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3414
    .end local v29    # "value":Ljava/lang/String;
    :cond_14
    const-string/jumbo v31, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    const/16 v35, -0x1

    move/from16 v0, v30

    move/from16 v1, v35

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$8500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    :goto_c
    add-int v30, v30, v34

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "value":Ljava/lang/String;
    goto :goto_b

    .end local v29    # "value":Ljava/lang/String;
    :cond_15
    const/16 v30, 0x0

    goto :goto_c

    .line 3418
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_18

    .line 3419
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v26

    .line 3420
    .local v26, "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    const-string/jumbo v30, "GroupsInCommon"

    const v31, 0x7f0702b7

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "%d"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    if-eqz v26, :cond_17

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->common_chats_count:I

    move/from16 v30, v0

    :goto_d
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3421
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3420
    :cond_17
    const/16 v30, 0x0

    goto :goto_d

    .line 3422
    .end local v26    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$2100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    .line 3423
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v32

    const/16 v31, 0x20

    shr-long v32, v32, v31

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v15

    .line 3425
    .local v15, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move/from16 v30, v0

    if-nez v30, :cond_19

    .line 3426
    const-string/jumbo v30, "ShortMessageLifetimeForever"

    const v31, 0x7f0705cd

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 3430
    .restart local v29    # "value":Ljava/lang/String;
    :goto_e
    const-string/jumbo v30, "MessageLifetime"

    const v31, 0x7f070386

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3428
    .end local v29    # "value":Ljava/lang/String;
    :cond_19
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29    # "value":Ljava/lang/String;
    goto :goto_e

    .line 3432
    .end local v15    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v29    # "value":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_2b

    .line 3433
    sget-object v30, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v31, "Notifications"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 3436
    .local v19, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-eqz v30, :cond_1b

    .line 3437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v12

    .line 3444
    .local v12, "did":J
    :goto_f
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "custom_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 3445
    .local v10, "custom":Z
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "notify2_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v16

    .line 3446
    .local v16, "hasOverride":Z
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "notify2_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    .line 3447
    .local v29, "value":I
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "notifyuntil_"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 3449
    .local v11, "delta":I
    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_22

    const v30, 0x7fffffff

    move/from16 v0, v30

    if-eq v11, v0, :cond_22

    .line 3450
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v30

    sub-int v11, v11, v30

    .line 3451
    if-gtz v11, :cond_1e

    .line 3452
    if-eqz v10, :cond_1d

    .line 3453
    const-string/jumbo v30, "NotificationsCustom"

    const v31, 0x7f07043b

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 3490
    .local v28, "val":Ljava/lang/String;
    :goto_10
    if-eqz v28, :cond_2a

    .line 3491
    const-string/jumbo v30, "Notifications"

    const v31, 0x7f070439

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const v31, 0x7f02022e

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3495
    :goto_11
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    .line 3496
    sget v30, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setIconColor(I)V

    .line 3497
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3438
    .end local v10    # "custom":Z
    .end local v11    # "delta":I
    .end local v12    # "did":J
    .end local v16    # "hasOverride":Z
    .end local v28    # "val":Ljava/lang/String;
    .end local v29    # "value":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    if-eqz v30, :cond_1c

    .line 3439
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, v30

    int-to-long v12, v0

    .restart local v12    # "did":J
    goto/16 :goto_f

    .line 3441
    .end local v12    # "did":J
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v12, v0

    .restart local v12    # "did":J
    goto/16 :goto_f

    .line 3455
    .restart local v10    # "custom":Z
    .restart local v11    # "delta":I
    .restart local v16    # "hasOverride":Z
    .restart local v29    # "value":I
    :cond_1d
    const-string/jumbo v30, "NotificationsOn"

    const v31, 0x7f070443

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "val":Ljava/lang/String;
    goto :goto_10

    .line 3457
    .end local v28    # "val":Ljava/lang/String;
    :cond_1e
    const/16 v30, 0xe10

    move/from16 v0, v30

    if-ge v11, v0, :cond_1f

    .line 3458
    const-string/jumbo v30, "WillUnmuteIn"

    const v31, 0x7f0706ad

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string/jumbo v34, "Minutes"

    div-int/lit8 v35, v11, 0x3c

    invoke-static/range {v34 .. v35}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "val":Ljava/lang/String;
    goto/16 :goto_10

    .line 3459
    .end local v28    # "val":Ljava/lang/String;
    :cond_1f
    const v30, 0x15180

    move/from16 v0, v30

    if-ge v11, v0, :cond_20

    .line 3460
    const-string/jumbo v30, "WillUnmuteIn"

    const v31, 0x7f0706ad

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string/jumbo v34, "Hours"

    int-to-float v0, v11

    move/from16 v35, v0

    const/high16 v36, 0x42700000    # 60.0f

    div-float v35, v35, v36

    const/high16 v36, 0x42700000    # 60.0f

    div-float v35, v35, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "val":Ljava/lang/String;
    goto/16 :goto_10

    .line 3461
    .end local v28    # "val":Ljava/lang/String;
    :cond_20
    const v30, 0x1e13380

    move/from16 v0, v30

    if-ge v11, v0, :cond_21

    .line 3462
    const-string/jumbo v30, "WillUnmuteIn"

    const v31, 0x7f0706ad

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-string/jumbo v34, "Days"

    int-to-float v0, v11

    move/from16 v35, v0

    const/high16 v36, 0x42700000    # 60.0f

    div-float v35, v35, v36

    const/high16 v36, 0x42700000    # 60.0f

    div-float v35, v35, v36

    const/high16 v36, 0x41c00000    # 24.0f

    div-float v35, v35, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v36

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v30 .. v32}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "val":Ljava/lang/String;
    goto/16 :goto_10

    .line 3464
    .end local v28    # "val":Ljava/lang/String;
    :cond_21
    const/16 v28, 0x0

    .restart local v28    # "val":Ljava/lang/String;
    goto/16 :goto_10

    .line 3467
    .end local v28    # "val":Ljava/lang/String;
    :cond_22
    if-nez v29, :cond_25

    .line 3468
    if-eqz v16, :cond_23

    .line 3469
    const/4 v14, 0x1

    .line 3484
    .local v14, "enabled":Z
    :goto_12
    if-eqz v14, :cond_28

    if-eqz v10, :cond_28

    .line 3485
    const-string/jumbo v30, "NotificationsCustom"

    const v31, 0x7f07043b

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "val":Ljava/lang/String;
    goto/16 :goto_10

    .line 3471
    .end local v14    # "enabled":Z
    .end local v28    # "val":Ljava/lang/String;
    :cond_23
    long-to-int v0, v12

    move/from16 v30, v0

    if-gez v30, :cond_24

    .line 3472
    const-string/jumbo v30, "EnableGroup"

    const/16 v31, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .restart local v14    # "enabled":Z
    goto :goto_12

    .line 3474
    .end local v14    # "enabled":Z
    :cond_24
    const-string/jumbo v30, "EnableAll"

    const/16 v31, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .restart local v14    # "enabled":Z
    goto :goto_12

    .line 3477
    .end local v14    # "enabled":Z
    :cond_25
    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_26

    .line 3478
    const/4 v14, 0x1

    .restart local v14    # "enabled":Z
    goto :goto_12

    .line 3479
    .end local v14    # "enabled":Z
    :cond_26
    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_27

    .line 3480
    const/4 v14, 0x0

    .restart local v14    # "enabled":Z
    goto :goto_12

    .line 3482
    .end local v14    # "enabled":Z
    :cond_27
    const/4 v14, 0x0

    .restart local v14    # "enabled":Z
    goto :goto_12

    .line 3487
    :cond_28
    if-eqz v14, :cond_29

    const-string/jumbo v30, "NotificationsOn"

    const v31, 0x7f070443

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "val":Ljava/lang/String;
    :goto_13
    goto/16 :goto_10

    .end local v28    # "val":Ljava/lang/String;
    :cond_29
    const-string/jumbo v30, "NotificationsOff"

    const v31, 0x7f070442

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    goto :goto_13

    .line 3493
    .end local v14    # "enabled":Z
    .restart local v28    # "val":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v30, "Notifications"

    const v31, 0x7f070439

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "NotificationsOff"

    const v32, 0x7f070442

    invoke-static/range {v31 .. v32}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    const v32, 0x7f02022e

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_11

    .line 3499
    .end local v10    # "custom":Z
    .end local v11    # "delta":I
    .end local v12    # "did":J
    .end local v16    # "hasOverride":Z
    .end local v19    # "preferences":Landroid/content/SharedPreferences;
    .end local v28    # "val":Ljava/lang/String;
    .end local v29    # "value":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_2c

    .line 3500
    const-string/jumbo v30, "StartEncryptedChat"

    const v31, 0x7f0705f9

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    .line 3501
    const-string/jumbo v30, "windowBackgroundWhiteGreenText2"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 3502
    const-string/jumbo v30, "windowBackgroundWhiteGreenText2"

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 3503
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    const-string/jumbo v30, "profileTitleColor"

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto/16 :goto_0

    .line 3504
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$2000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_2d

    .line 3505
    new-instance v17, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    .line 3506
    .local v17, "identiconDrawable":Lorg/telegram/ui/Components/IdenticonDrawable;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$1500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v32

    const/16 v31, 0x20

    shr-long v32, v32, v31

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v15

    .line 3507
    .restart local v15    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/IdenticonDrawable;->setEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 3508
    const-string/jumbo v30, "EncryptionKey"

    const v31, 0x7f070230

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 3509
    .end local v15    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v17    # "identiconDrawable":Lorg/telegram/ui/Components/IdenticonDrawable;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_2e

    .line 3510
    const-string/jumbo v30, "windowBackgroundWhiteRedText5"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 3511
    const-string/jumbo v30, "windowBackgroundWhiteRedText5"

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    .line 3512
    const-string/jumbo v30, "LeaveChannel"

    const v31, 0x7f07033d

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    .line 3513
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    const-string/jumbo v30, "profileTitleColor"

    const v31, -0x12c2c7

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto/16 :goto_0

    .line 3514
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_2f

    .line 3515
    const-string/jumbo v30, "UpgradeGroup"

    const v31, 0x7f070653

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    .line 3516
    const-string/jumbo v30, "windowBackgroundWhiteGreenText2"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTag(Ljava/lang/Object;)V

    .line 3517
    const-string/jumbo v30, "windowBackgroundWhiteGreenText2"

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto/16 :goto_0

    .line 3518
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_31

    .line 3519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v30

    if-eqz v30, :cond_30

    .line 3520
    const-string/jumbo v30, "ChannelMembers"

    const v31, 0x7f070127

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "%d"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3523
    :cond_30
    const-string/jumbo v30, "ChannelMembers"

    const v31, 0x7f070127

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3525
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_33

    .line 3526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v30

    if-eqz v30, :cond_32

    .line 3527
    const-string/jumbo v30, "ChannelAdministrators"

    const v31, 0x7f07010b

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "%d"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->admins_count:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3530
    :cond_32
    const-string/jumbo v30, "ChannelAdministrators"

    const v31, 0x7f07010b

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3532
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_35

    .line 3533
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v30

    if-eqz v30, :cond_34

    .line 3534
    const-string/jumbo v30, "ChannelBlockedUsers"

    const v31, 0x7f070110

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "%d"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setValueColor(I)V

    goto/16 :goto_0

    .line 3537
    :cond_34
    const-string/jumbo v30, "ChannelBlockedUsers"

    const v31, 0x7f070110

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3539
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    .line 3540
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    if-lez v30, :cond_36

    .line 3541
    const-string/jumbo v30, "AddMember"

    const v31, 0x7f07004c

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3543
    :cond_36
    const-string/jumbo v30, "AddRecipient"

    const v31, 0x7f07004e

    invoke-static/range {v30 .. v31}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3548
    .end local v21    # "textCell":Lorg/telegram/ui/Cells/TextCell;
    .end local v27    # "vColor":I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    check-cast v25, Lorg/telegram/ui/Cells/UserCell;

    .line 3550
    .local v25, "userCell":Lorg/telegram/ui/Cells/UserCell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_37

    .line 3551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v32

    sub-int v32, p2, v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 3555
    .local v18, "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :goto_14
    if-eqz v18, :cond_0

    .line 3556
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    move/from16 v30, v0

    if-eqz v30, :cond_3b

    move-object/from16 v30, v18

    .line 3557
    check-cast v30, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    move-object/from16 v0, v30

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 3558
    .local v8, "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    instance-of v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    move/from16 v30, v0

    if-eqz v30, :cond_38

    .line 3559
    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    .line 3574
    .end local v8    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :goto_15
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v30

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_3e

    const v30, 0x7f020143

    :goto_16
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    .line 3553
    .end local v18    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$2800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v31

    sub-int v31, p2, v31

    add-int/lit8 v31, v31, -0x1

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .restart local v18    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    goto/16 :goto_14

    .line 3560
    .restart local v8    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_38
    instance-of v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantEditor;

    move/from16 v30, v0

    if-nez v30, :cond_39

    instance-of v0, v8, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantModerator;

    move/from16 v30, v0

    if-eqz v30, :cond_3a

    .line 3561
    :cond_39
    const/16 v30, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto :goto_15

    .line 3563
    :cond_3a
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_15

    .line 3566
    .end local v8    # "channelParticipant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_3b
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    move/from16 v30, v0

    if-eqz v30, :cond_3c

    .line 3567
    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_15

    .line 3568
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admins_enabled:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3d

    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    move/from16 v30, v0

    if-eqz v30, :cond_3d

    .line 3569
    const/16 v30, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_15

    .line 3571
    :cond_3d
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/UserCell;->setIsAdmin(I)V

    goto/16 :goto_15

    .line 3574
    :cond_3e
    const/16 v30, 0x0

    goto/16 :goto_16

    .line 3578
    .end local v18    # "part":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v25    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v7, Lorg/telegram/ui/Cells/AboutLinkCell;

    .line 3579
    .local v7, "aboutLinkCell":Lorg/telegram/ui/Cells/AboutLinkCell;
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_3f

    .line 3580
    sget v30, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextColor(I)V

    .line 3581
    const-string/jumbo v30, "profileSummaryColor"

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setLinkColor(I)V

    .line 3582
    sget v30, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setIconColor(I)V

    .line 3584
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$3900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_42

    .line 3585
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v26

    .line 3586
    .restart local v26    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    if-eqz v26, :cond_41

    move-object/from16 v0, v26

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_userFull;->about:Ljava/lang/String;

    .line 3588
    .local v6, "about":Ljava/lang/String;
    :goto_17
    if-nez v6, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$6000(Lorg/telegram/ui/ProfileActivity;)Ljava/lang/String;

    move-result-object v6

    .end local v6    # "about":Ljava/lang/String;
    :cond_40
    const v30, 0x7f02022d

    move/from16 v0, v30

    invoke-virtual {v7, v6, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3586
    :cond_41
    const/4 v6, 0x0

    goto :goto_17

    .line 3590
    .end local v26    # "userFull":Lorg/telegram/tgnet/TLRPC$TL_userFull;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    .line 3591
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->about:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3592
    .restart local v20    # "text":Ljava/lang/String;
    :goto_18
    const-string/jumbo v30, "\n\n\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_43

    .line 3593
    const-string/jumbo v30, "\n\n\n"

    const-string/jumbo v31, "\n\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    goto :goto_18

    .line 3595
    :cond_43
    const v30, 0x7f02022d

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/Cells/AboutLinkCell;->setTextAndIcon(Ljava/lang/String;I)V

    .line 3596
    sget-boolean v30, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v30, :cond_0

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Cells/AboutLinkCell;->setIconColor(I)V

    goto/16 :goto_0

    .line 3329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 11
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v7, 0x7f0200ae

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 3234
    const/4 v3, 0x0

    .line 3235
    .local v3, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 3321
    :cond_0
    :goto_0
    new-instance v4, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v10, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3322
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v4

    .line 3237
    :pswitch_0
    new-instance v3, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .line 3238
    .restart local v3    # "view":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 3241
    :pswitch_1
    new-instance v3, Lorg/telegram/ui/Cells/DividerCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 3242
    .restart local v3    # "view":Landroid/view/View;
    const/high16 v4, 0x42900000    # 72.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 3243
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    .line 3244
    const-string/jumbo v4, "profileRowColor"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3245
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3246
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-lez v4, :cond_0

    const-string/jumbo v4, "Profile00"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 3250
    :pswitch_2
    new-instance v3, Lorg/telegram/ui/Cells/TextDetailCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;)V

    .line 3251
    .restart local v3    # "view":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    move-object v4, v3

    .line 3252
    check-cast v4, Lorg/telegram/ui/Cells/TextDetailCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextColor(I)V

    move-object v4, v3

    .line 3253
    check-cast v4, Lorg/telegram/ui/Cells/TextDetailCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextDetailCell;->setValueColor(I)V

    .line 3255
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 3259
    :pswitch_3
    new-instance v3, Lorg/telegram/ui/Cells/TextCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 3260
    .restart local v3    # "view":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    .line 3261
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v4, v3

    .line 3262
    check-cast v4, Lorg/telegram/ui/Cells/TextCell;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    goto :goto_0

    .line 3266
    :pswitch_4
    new-instance v3, Lorg/telegram/ui/Cells/UserCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x3d

    invoke-direct {v3, v4, v5, v9, v6}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 3267
    .restart local v3    # "view":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    .line 3268
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3269
    const-string/jumbo v4, "Profile"

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3274
    :pswitch_5
    new-instance v3, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v9}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;Z)V

    .line 3275
    .restart local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3276
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v5, "windowBackgroundGray"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v4, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3277
    .local v1, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 3278
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3279
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    if-ne v4, v10, :cond_1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-lez v4, :cond_0

    :cond_1
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 3283
    .end local v1    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_6
    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .restart local v3    # "view":Landroid/view/View;
    move-object v0, v3

    .line 3284
    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 3285
    .local v0, "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "windowBackgroundGrayShadow"

    invoke-static {v4, v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3286
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v5, "windowBackgroundGray"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v4, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3287
    .restart local v1    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 3288
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3289
    const-string/jumbo v4, "ConvertGroupInfo"

    const v5, 0x7f07019f

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Members"

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v8, v8, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3290
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    if-ne v4, v10, :cond_2

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-lez v4, :cond_0

    :cond_2
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 3294
    .end local v0    # "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    .end local v1    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_7
    new-instance v3, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 3295
    .restart local v3    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 3297
    :pswitch_8
    new-instance v3, Lorg/telegram/ui/Cells/AboutLinkCell;

    .end local v3    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/AboutLinkCell;-><init>(Landroid/content/Context;)V

    .line 3298
    .restart local v3    # "view":Landroid/view/View;
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_4

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    if-ne v4, v10, :cond_3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-lez v4, :cond_4

    :cond_3
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    move-object v4, v3

    .line 3299
    check-cast v4, Lorg/telegram/ui/Cells/AboutLinkCell;

    new-instance v5, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ProfileActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/AboutLinkCell;->setDelegate(Lorg/telegram/ui/Cells/AboutLinkCell$AboutLinkCellDelegate;)V

    goto/16 :goto_0

    .line 3235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
