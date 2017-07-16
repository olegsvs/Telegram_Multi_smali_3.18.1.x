.class Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingContactsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingContactsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 592
    iput-object p1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 593
    iput-object p2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 594
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingContactsActivity;->access$2400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 615
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 620
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 762
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 763
    const/4 v0, 0x0

    .line 781
    :cond_0
    :goto_0
    return v0

    .line 765
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 766
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 768
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 771
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$200(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 772
    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    .line 774
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1000(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 775
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 777
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1100(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingContactsActivity;->access$1300(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 778
    :cond_7
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 630
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->getItemViewType(I)I

    move-result v4

    .line 631
    .local v4, "type":I
    const-string/jumbo v0, ""

    .line 632
    .local v0, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$000(Lorg/telegram/ui/ThemingContactsActivity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 633
    const-string/jumbo v0, "3."

    .line 634
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$2500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_3

    .line 635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    :cond_0
    :goto_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "theme"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 645
    .local v3, "themePrefs":Landroid/content/SharedPreferences;
    if-nez v4, :cond_6

    .line 646
    if-nez p2, :cond_1

    .line 647
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 754
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 755
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v6, :cond_2b

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 757
    :cond_2
    return-object p2

    .line 636
    .end local v3    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_4

    .line 637
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

    .line 638
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ge p1, v6, :cond_5

    .line 639
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

    .line 641
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "2."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingContactsActivity;->access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I

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

    .line 650
    .restart local v3    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_6
    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    .line 651
    if-nez p2, :cond_7

    .line 652
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 653
    .restart local p2    # "view":Landroid/view/View;
    const/4 v6, -0x1

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 655
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$2500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_8

    move-object v6, p2

    .line 656
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

    .line 657
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$2600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    move-object v6, p2

    .line 658
    check-cast v6, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ContactsList"

    const v9, 0x7f070199

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 661
    :cond_9
    const/4 v6, 0x2

    if-ne v4, v6, :cond_10

    .line 662
    if-nez p2, :cond_a

    .line 663
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_a
    move-object v2, p2

    .line 665
    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 666
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_c

    .line 667
    const-string/jumbo v7, "contactsAvatarRadius"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x23

    :goto_3
    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 668
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

    .line 667
    .end local v1    # "size":I
    :cond_b
    const/16 v6, 0x20

    goto :goto_3

    .line 669
    :cond_c
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_e

    .line 670
    const-string/jumbo v7, "contactsNameSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x13

    :goto_4
    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 671
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

    .line 670
    .end local v1    # "size":I
    :cond_d
    const/16 v6, 0x11

    goto :goto_4

    .line 672
    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 673
    const-string/jumbo v7, "contactsStatusSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v6, 0x10

    :goto_5
    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 674
    .restart local v1    # "size":I
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

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 673
    .end local v1    # "size":I
    :cond_f
    const/16 v6, 0xe

    goto :goto_5

    .line 678
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_10
    const/4 v6, 0x3

    if-ne v4, v6, :cond_1d

    .line 679
    if-nez p2, :cond_11

    .line 680
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_11
    move-object v2, p2

    .line 683
    check-cast v2, Lorg/telegram/ui/Cells/TextColorCell;

    .line 685
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$200(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_12

    .line 686
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

    const-string/jumbo v7, "contactsHeaderColor"

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 687
    :cond_12
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_14

    .line 688
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

    const-string/jumbo v6, "contactsHeaderGradient"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_13

    const/4 v6, 0x0

    :goto_6
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v6, "contactsHeaderGradientColor"

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_6

    .line 689
    :cond_14
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_15

    .line 690
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "HeaderTitleColor"

    const v8, 0x7f0702c4

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "contactsHeaderTitleColor"

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 691
    :cond_15
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_16

    .line 692
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

    const-string/jumbo v7, "contactsHeaderIconsColor"

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 693
    :cond_16
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_17

    .line 694
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "IconsColor"

    const v8, 0x7f0702e7

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "contactsIconsColor"

    const v8, -0x8c8c8d

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 695
    :cond_17
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_18

    .line 696
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowColor"

    const v8, 0x7f07054c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "contactsRowColor"

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 697
    :cond_18
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1a

    .line 698
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

    const-string/jumbo v6, "contactsRowGradient"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_19

    const/4 v6, 0x0

    :goto_7
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v6, "contactsRowGradientColor"

    const/4 v8, -0x1

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_7

    .line 699
    :cond_1a
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1b

    .line 700
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

    const-string/jumbo v7, "contactsNameColor"

    const/high16 v8, -0x1000000

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 701
    :cond_1b
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1c

    .line 702
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

    const-string/jumbo v7, "contactsStatusColor"

    const v8, -0x575758

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 703
    :cond_1c
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 704
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

    const-string/jumbo v7, "contactsOnlineColor"

    const-string/jumbo v8, "themeColor"

    const/16 v9, 0x15

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 706
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_1d
    const/4 v6, 0x4

    if-ne v4, v6, :cond_20

    .line 707
    if-nez p2, :cond_1e

    .line 708
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_1e
    move-object v2, p2

    .line 710
    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 711
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1000(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 712
    const-string/jumbo v6, "contactsRowGradientListCheck"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 713
    const-string/jumbo v6, "contactsRowGradient"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v5

    .line 714
    .local v5, "value":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "RowGradientList"

    const v8, 0x7f070552

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_1f

    const/4 v6, 0x0

    :goto_8
    const/4 v8, 0x1

    invoke-virtual {v2, v7, v6, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v6, "contactsRowGradientListCheck"

    const/4 v8, 0x0

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_8

    .line 716
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v5    # "value":I
    :cond_20
    const/4 v6, 0x5

    if-ne v4, v6, :cond_1

    .line 717
    if-nez p2, :cond_21

    .line 718
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_21
    move-object v2, p2

    .line 721
    check-cast v2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 722
    .local v2, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1100(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_26

    .line 723
    const-string/jumbo v6, "contactsHeaderGradient"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 724
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 725
    const-string/jumbo v6, "contactsHeaderGradient"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 726
    .restart local v5    # "value":I
    if-nez v5, :cond_22

    .line 727
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

    .line 728
    :cond_22
    const/4 v6, 0x1

    if-ne v5, v6, :cond_23

    .line 729
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

    .line 730
    :cond_23
    const/4 v6, 0x2

    if-ne v5, v6, :cond_24

    .line 731
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

    .line 732
    :cond_24
    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    .line 733
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

    .line 734
    :cond_25
    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 735
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

    .line 737
    .end local v5    # "value":I
    :cond_26
    iget-object v6, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v6}, Lorg/telegram/ui/ThemingContactsActivity;->access$1300(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v6

    if-ne p1, v6, :cond_1

    .line 738
    const-string/jumbo v6, "contactsRowGradient"

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 739
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 740
    const-string/jumbo v6, "contactsRowGradient"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 741
    .restart local v5    # "value":I
    if-nez v5, :cond_27

    .line 742
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

    .line 743
    :cond_27
    const/4 v6, 0x1

    if-ne v5, v6, :cond_28

    .line 744
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

    .line 745
    :cond_28
    const/4 v6, 0x2

    if-ne v5, v6, :cond_29

    .line 746
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

    .line 747
    :cond_29
    const/4 v6, 0x3

    if-ne v5, v6, :cond_2a

    .line 748
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

    .line 749
    :cond_2a
    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 750
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

    .line 755
    .end local v2    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .end local v5    # "value":I
    :cond_2b
    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 603
    const-string/jumbo v2, "contactsRowGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v0

    .line 604
    .local v0, "g":I
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$200(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1100(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    const-string/jumbo v2, "contactsHeaderGradient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1300(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1000(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1700(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1400(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1800(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1500(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1900(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-eq p1, v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ThemingContactsActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingContactsActivity;

    .line 605
    invoke-static {v2}, Lorg/telegram/ui/ThemingContactsActivity;->access$1600(Lorg/telegram/ui/ThemingContactsActivity;)I

    move-result v2

    if-ne p1, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
