.class Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingProfileActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingProfileActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 641
    iput-object p1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 642
    iput-object p2, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 643
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$2700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 666
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 671
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 831
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$3000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 832
    const/4 v0, 0x0

    .line 852
    :cond_0
    :goto_0
    return v0

    .line 834
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 835
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 837
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1500(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 840
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1300(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 841
    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 842
    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$1100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 843
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 845
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$2600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 846
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 848
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingProfileActivity;->access$600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 849
    :cond_7
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x2

    const v6, 0x7f07054d

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 681
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 682
    .local v2, "type":I
    const-string/jumbo v0, ""

    .line 683
    .local v0, "prefix":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$000(Lorg/telegram/ui/ThemingProfileActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 684
    const-string/jumbo v0, "5."

    .line 685
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$2800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 696
    if-nez p2, :cond_1

    .line 697
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 823
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 824
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_2a

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 826
    :cond_2
    return-object p2

    .line 687
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_4

    .line 688
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 689
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ge p1, v4, :cond_5

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 692
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "2."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemingProfileActivity;->access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 700
    :cond_6
    if-ne v2, v8, :cond_9

    .line 701
    if-nez p2, :cond_7

    .line 702
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 703
    .restart local p2    # "view":Landroid/view/View;
    const/4 v3, -0x1

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 705
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingProfileActivity;->access$2800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v3

    if-ne p1, v3, :cond_8

    move-object v3, p2

    .line 706
    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Header"

    const v6, 0x7f0702ba

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 707
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingProfileActivity;->access$2900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v3

    if-ne p1, v3, :cond_1

    move-object v3, p2

    .line 708
    check-cast v3, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "OptionsList"

    const v6, 0x7f070468

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 711
    :cond_9
    if-ne v2, v7, :cond_e

    .line 712
    if-nez p2, :cond_a

    .line 713
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    move-object v1, p2

    .line 715
    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 716
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_b

    .line 717
    const-string/jumbo v4, "profileNameSize"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 718
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "NameSize"

    const v6, 0x7f0703b3

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%d"

    new-array v6, v8, [Ljava/lang/Object;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 719
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1500(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_c

    .line 720
    const-string/jumbo v4, "profileStatusSize"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "StatusSize"

    const v6, 0x7f0705fd

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%d"

    new-array v6, v8, [Ljava/lang/Object;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 722
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_d

    .line 723
    const-string/jumbo v4, "profileAvatarRadius"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "AvatarRadius"

    const v6, 0x7f0700ba

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%d"

    new-array v6, v8, [Ljava/lang/Object;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarAvatarRadius:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 725
    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 726
    const-string/jumbo v4, "profileRowAvatarRadius"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "AvatarRadius"

    const v6, 0x7f0700ba

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "%d"

    new-array v6, v8, [Ljava/lang/Object;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->profileRowAvatarRadius:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 730
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_e
    if-ne v2, v9, :cond_1e

    .line 731
    if-nez p2, :cond_f

    .line 732
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_f
    move-object v1, p2

    .line 735
    check-cast v1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 736
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_10

    .line 737
    const-string/jumbo v4, "profileHeaderColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "HeaderColor"

    const v6, 0x7f0702bb

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarColor:I

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 739
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_12

    .line 740
    const-string/jumbo v4, "profileHeaderGradientColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradientColor"

    const v6, 0x7f07054f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-nez v5, :cond_11

    :goto_3
    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_11
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientColor:I

    goto :goto_3

    .line 742
    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_13

    .line 743
    const-string/jumbo v3, "profileHeaderIconsColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "HeaderIconsColor"

    const v5, 0x7f0702bc

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarIconsColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 745
    :cond_13
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_14

    .line 746
    const-string/jumbo v3, "profileIconsColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "IconsColor"

    const v5, 0x7f0702e7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 748
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_15

    .line 749
    const-string/jumbo v3, "profileCreatorStarColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "CreatorStarColor"

    const v5, 0x7f0701b2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowCreatorStarColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 751
    :cond_15
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_16

    .line 752
    const-string/jumbo v4, "profileAdminStarColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "AdminStarColor"

    const v6, 0x7f07005a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowAdminStarColor:I

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 754
    :cond_16
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_17

    .line 755
    const-string/jumbo v3, "profileNameColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "NameColor"

    const v5, 0x7f0703b2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarNameColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 757
    :cond_17
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1300(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_18

    .line 758
    const-string/jumbo v4, "profileStatusColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "StatusColor"

    const v6, 0x7f0705fc

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarStatusColor:I

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 760
    :cond_18
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_19

    .line 761
    const-string/jumbo v4, "profileRowColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowColor"

    const v6, 0x7f07054c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowColor:I

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 763
    :cond_19
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$1700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_1b

    .line 764
    const-string/jumbo v4, "profileRowGradientColor"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradientColor"

    const v6, 0x7f07054f

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-nez v5, :cond_1a

    :goto_4
    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_1a
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientColor:I

    goto :goto_4

    .line 766
    :cond_1b
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingProfileActivity;->access$2000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v3

    if-ne p1, v3, :cond_1c

    .line 767
    const-string/jumbo v3, "profileTitleColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 768
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "NameColor"

    const v5, 0x7f0703b2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 769
    :cond_1c
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingProfileActivity;->access$2100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v3

    if-ne p1, v3, :cond_1d

    .line 770
    const-string/jumbo v3, "profileSummaryColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "StatusColor"

    const v5, 0x7f0705fc

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 772
    :cond_1d
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingProfileActivity;->access$2200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 773
    const-string/jumbo v3, "profileOnlineColor"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 774
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "OnlineColor"

    const v5, 0x7f070457

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowOnlineColor:I

    invoke-virtual {v1, v3, v4, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 776
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_1e
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1f

    .line 777
    if-nez p2, :cond_1

    .line 778
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    goto/16 :goto_1

    .line 787
    :cond_1f
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 788
    if-nez p2, :cond_20

    .line 789
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_20
    move-object v1, p2

    .line 791
    check-cast v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 793
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_25

    .line 794
    const-string/jumbo v4, "profileHeaderGradient"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 795
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 796
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-nez v4, :cond_21

    .line 797
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientDisabled"

    const v6, 0x7f070550

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 798
    :cond_21
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-ne v4, v8, :cond_22

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientTopBottom"

    const v6, 0x7f070554

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 800
    :cond_22
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-ne v4, v7, :cond_23

    .line 801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientLeftRight"

    const v6, 0x7f070551

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 802
    :cond_23
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-ne v4, v9, :cond_24

    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientTLBR"

    const v6, 0x7f070553

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 804
    :cond_24
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientBLTR"

    const v6, 0x7f07054e

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 807
    :cond_25
    iget-object v4, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemingProfileActivity;->access$600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 808
    const-string/jumbo v4, "profileRowGradient"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 809
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 810
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-nez v4, :cond_26

    .line 811
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientDisabled"

    const v6, 0x7f070550

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 812
    :cond_26
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-ne v4, v8, :cond_27

    .line 813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientTopBottom"

    const v6, 0x7f070554

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 814
    :cond_27
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-ne v4, v7, :cond_28

    .line 815
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientLeftRight"

    const v6, 0x7f070551

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 816
    :cond_28
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-ne v4, v9, :cond_29

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientTLBR"

    const v6, 0x7f070553

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 818
    :cond_29
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 819
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "RowGradient"

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RowGradientBLTR"

    const v6, 0x7f07054e

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 824
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    :cond_2a
    const-string/jumbo v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 652
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileActionbarGradientList:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 653
    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1400(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1300(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1500(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 654
    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1700(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowGradientList:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$2600(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 655
    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$2000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$2100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$2200(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1800(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1900(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1000(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ThemingProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingProfileActivity;

    .line 656
    invoke-static {v0}, Lorg/telegram/ui/ThemingProfileActivity;->access$1100(Lorg/telegram/ui/ThemingProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
