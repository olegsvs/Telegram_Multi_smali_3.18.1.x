.class Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/MediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedPhotoVideoAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/MediaActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1783
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 1784
    iput-object p2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    .line 1785
    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    const/4 v2, 0x0

    .line 1804
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$4000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 1807
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 1789
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 2
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 1899
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1900
    if-nez p2, :cond_0

    .line 1906
    :goto_0
    return v0

    .line 1903
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1906
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1911
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositionForScrollProgress(F)I
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 1916
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionCount()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1799
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "section"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1812
    if-nez p2, :cond_0

    .line 1813
    new-instance p2, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/SharedMediaSectionCell;-><init>(Landroid/content/Context;)V

    .line 1814
    .restart local p2    # "view":Landroid/view/View;
    const-string/jumbo v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1816
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 1817
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1818
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1819
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .local v0, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object v3, p2

    .line 1820
    check-cast v3, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v6, v5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/SharedMediaSectionCell;->setText(Ljava/lang/String;)V

    .line 1822
    .end local v0    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method public isEnabled(II)Z
    .locals 1
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    .line 1794
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(IILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 12
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1862
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 1863
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3400(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1864
    .local v5, "name":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3500(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1865
    .local v4, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1895
    .end local v4    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1867
    .restart local v4    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v5    # "name":Ljava/lang/String;
    :pswitch_0
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1868
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v6, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v6, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterMonthYear:Lorg/telegram/messenger/time/FastDateFormat;

    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/time/FastDateFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/SharedMediaSectionCell;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1872
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :pswitch_1
    iget-object v1, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 1873
    .local v1, "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$4000(Lorg/telegram/ui/MediaActivity;)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setItemsCount(I)V

    .line 1874
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$4000(Lorg/telegram/ui/MediaActivity;)I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 1875
    add-int/lit8 v6, p2, -0x1

    iget-object v7, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$4000(Lorg/telegram/ui/MediaActivity;)I

    move-result v7

    mul-int/2addr v6, v7

    add-int v2, v6, v0

    .line 1876
    .local v2, "index":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 1877
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1878
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setIsFirst(Z)V

    .line 1879
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2400(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$3000(Lorg/telegram/ui/MediaActivity$SharedMediaData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v1, v0, v6, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setItem(IILorg/telegram/messenger/MessageObject;)V

    .line 1881
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$4200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1882
    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v8

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :goto_3
    aget-object v6, v7, v6

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v1, v0, v7, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    .line 1874
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1878
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 1882
    :cond_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 1884
    :cond_4
    const/4 v7, 0x0

    iget-object v6, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v6}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_6
    invoke-virtual {v1, v0, v7, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    goto :goto_6

    .line 1887
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v2, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setItem(IILorg/telegram/messenger/MessageObject;)V

    goto :goto_5

    .line 1890
    .end local v2    # "index":I
    :cond_7
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->requestLayout()V

    goto/16 :goto_0

    .line 1865
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 1828
    packed-switch p2, :pswitch_data_0

    .line 1854
    new-instance v1, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 1857
    .local v1, "view":Landroid/view/View;
    :goto_0
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 1830
    .end local v1    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v1, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/SharedMediaSectionCell;-><init>(Landroid/content/Context;)V

    .line 1831
    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 1833
    .end local v1    # "view":Landroid/view/View;
    :pswitch_1
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$4100(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1834
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$4100(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1835
    .restart local v1    # "view":Landroid/view/View;
    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$4100(Lorg/telegram/ui/MediaActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    move-object v0, v1

    .line 1839
    check-cast v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .line 1840
    .local v0, "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    new-instance v2, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter$1;-><init>(Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setDelegate(Lorg/telegram/ui/Cells/SharedPhotoVideoCell$SharedPhotoVideoCellDelegate;)V

    goto :goto_0

    .line 1837
    .end local v0    # "cell":Lorg/telegram/ui/Cells/SharedPhotoVideoCell;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    new-instance v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    iget-object v2, p0, Lorg/telegram/ui/MediaActivity$SharedPhotoVideoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;-><init>(Landroid/content/Context;)V

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_1

    .line 1828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
