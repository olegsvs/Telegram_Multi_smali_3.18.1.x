.class Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlusChatsStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PlusChatsStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PlusChatsStatsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PlusChatsStatsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 793
    iput-object p1, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 794
    iput-object p2, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 795
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 816
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 821
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 946
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4200(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 947
    :cond_0
    const/4 v0, 0x1

    .line 955
    :goto_0
    return v0

    .line 948
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    .line 949
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    .line 950
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 951
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 952
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 953
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 955
    :cond_5
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 831
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->getItemViewType(I)I

    move-result v10

    .line 833
    .local v10, "type":I
    if-nez v10, :cond_1

    .line 834
    if-nez p2, :cond_0

    .line 835
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 941
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object p2

    .line 837
    :cond_1
    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 838
    if-nez p2, :cond_2

    .line 839
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_2
    move-object/from16 v11, p2

    .line 841
    check-cast v11, Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setTextSize(I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_5

    .line 844
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v5

    .local v5, "k":I
    move-object/from16 v11, p2

    .line 845
    check-cast v11, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Total"

    const v14, 0x7f07063d

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v5, :cond_3

    const-string/jumbo v12, ""

    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4600(Lorg/telegram/ui/PlusChatsStatsActivity;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " / "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "Cancelled"

    const v15, 0x7f0700f6

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_4
    const-string/jumbo v12, ""

    goto :goto_2

    .line 846
    .end local v5    # "k":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4200(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_7

    .line 847
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v12

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v12

    add-int v5, v11, v12

    .restart local v5    # "k":I
    move-object/from16 v11, p2

    .line 848
    check-cast v11, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Created"

    const v14, 0x7f0706e9

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v5, :cond_6

    const-string/jumbo v12, ""

    :goto_3
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 849
    .end local v5    # "k":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 850
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v12

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v12}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v12

    add-int v5, v11, v12

    .restart local v5    # "k":I
    move-object/from16 v11, p2

    .line 851
    check-cast v11, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Administrator"

    const v14, 0x7f07005b

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v5, :cond_8

    const-string/jumbo v12, ""

    :goto_4
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 853
    .end local v5    # "k":I
    :cond_9
    const/4 v11, 0x2

    if-ne v10, v11, :cond_1c

    .line 854
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v12, "chatsstats"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 856
    .local v7, "preferences":Landroid/content/SharedPreferences;
    if-nez p2, :cond_a

    .line 857
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v8, p2

    .line 859
    check-cast v8, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 861
    .local v8, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    const/4 v2, 0x0

    .line 862
    .local v2, "counter":I
    const-string/jumbo v9, ""

    .line 863
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 864
    .local v6, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 865
    .local v3, "div":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_d

    .line 866
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 867
    const-string/jumbo v6, "totalChatsCount"

    .line 868
    const-string/jumbo v11, "Total"

    const v12, 0x7f07063d

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 929
    :cond_b
    :goto_5
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 930
    const/4 v1, 0x0

    .line 931
    .local v1, "c":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    if-lez v11, :cond_c

    invoke-interface {v7, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    sub-int v1, v2, v11

    .line 932
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v1, :cond_1b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " ("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, ")"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 869
    .end local v1    # "c":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_e

    .line 870
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 871
    const-string/jumbo v6, "usersCount"

    .line 872
    const-string/jumbo v11, "Users"

    const v12, 0x7f070667

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 873
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_f

    .line 874
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 875
    const-string/jumbo v6, "groupsCount"

    .line 876
    const-string/jumbo v11, "Groups"

    const v12, 0x7f0702b4

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 877
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_10

    .line 878
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 879
    const-string/jumbo v6, "superGroupsCount"

    .line 880
    const-string/jumbo v11, "SuperGroups"

    const v12, 0x7f07060c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 881
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_11

    .line 882
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$5000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 883
    const-string/jumbo v6, "channelsCount"

    .line 884
    const-string/jumbo v11, "Channels"

    const v12, 0x7f07015c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 885
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_12

    .line 886
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$5100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 887
    const-string/jumbo v6, "botsCount"

    .line 888
    const/4 v3, 0x1

    .line 889
    const-string/jumbo v11, "Bots"

    const v12, 0x7f0700d7

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 890
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_13

    .line 891
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 892
    const-string/jumbo v6, "secretsCount"

    .line 894
    const-string/jumbo v11, "SecretChat"

    const v12, 0x7f070580

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 895
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_14

    .line 896
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 897
    const-string/jumbo v6, "otherCount"

    .line 899
    const-string/jumbo v11, "ReportChatOther"

    const v12, 0x7f07051a

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 900
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_15

    .line 901
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$5200(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 902
    const-string/jumbo v6, "favsCount"

    .line 903
    const-string/jumbo v11, "Favorites"

    const v12, 0x7f070245

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 904
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_16

    .line 905
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 906
    const-string/jumbo v6, "ownGroupsCount"

    .line 907
    const-string/jumbo v11, "Groups"

    const v12, 0x7f0702b4

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 908
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_17

    .line 909
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 910
    const-string/jumbo v6, "ownSuperGroupsCount"

    .line 911
    const-string/jumbo v11, "SuperGroups"

    const v12, 0x7f07060c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 912
    :cond_17
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_18

    .line 913
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 914
    const-string/jumbo v6, "ownChannelsCount"

    .line 915
    const-string/jumbo v11, "Channels"

    const v12, 0x7f07015c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 916
    :cond_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_19

    .line 917
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 918
    const-string/jumbo v6, "adminGroupsCount"

    .line 919
    const-string/jumbo v11, "Groups"

    const v12, 0x7f0702b4

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 920
    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_1a

    .line 921
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 922
    const-string/jumbo v6, "adminSuperGroupsCount"

    .line 923
    const-string/jumbo v11, "SuperGroups"

    const v12, 0x7f07060c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 924
    :cond_1a
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v11

    move/from16 v0, p1

    if-ne v0, v11, :cond_b

    .line 925
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v2

    .line 926
    const-string/jumbo v6, "adminChannelsCount"

    .line 927
    const-string/jumbo v11, "Channels"

    const v12, 0x7f07015c

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 932
    .restart local v1    # "c":I
    :cond_1b
    const-string/jumbo v11, ""

    goto/16 :goto_6

    .line 935
    .end local v1    # "c":I
    .end local v2    # "counter":I
    .end local v3    # "div":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    .end local v8    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v9    # "title":Ljava/lang/String;
    :cond_1c
    if-nez p2, :cond_1d

    .line 936
    new-instance p2, Lorg/telegram/ui/Cells/EmptyCell;

    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-direct {v0, v11}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_1d
    move-object/from16 v4, p2

    .line 938
    check-cast v4, Lorg/telegram/ui/Cells/EmptyCell;

    .line 939
    .local v4, "emptyCell":Lorg/telegram/ui/Cells/EmptyCell;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3500(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    .line 805
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$3900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4100(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4200(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1600(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    .line 806
    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1700(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4300(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$4400(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1800(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$1900(Lorg/telegram/ui/PlusChatsStatsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PlusChatsStatsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PlusChatsStatsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PlusChatsStatsActivity;->access$2000(Lorg/telegram/ui/PlusChatsStatsActivity;)I

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
