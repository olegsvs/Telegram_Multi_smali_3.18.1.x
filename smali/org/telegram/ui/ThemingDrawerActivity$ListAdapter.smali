.class Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemingDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemingDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemingDrawerActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemingDrawerActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 760
    iput-object p1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 761
    iput-object p2, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 762
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 785
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 790
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    .line 968
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 969
    const/4 v0, 0x0

    .line 987
    :cond_0
    :goto_0
    return v0

    .line 971
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 972
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 974
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 977
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 978
    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 980
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 981
    :cond_6
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 983
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 984
    :cond_8
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 800
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 801
    .local v5, "type":I
    const-string/jumbo v1, ""

    .line 802
    .local v1, "prefix":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$000(Lorg/telegram/ui/ThemingDrawerActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 803
    const-string/jumbo v1, "4."

    .line 804
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_4

    .line 805
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 814
    :cond_0
    :goto_0
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "theme"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 815
    .local v4, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "themeColor"

    const v8, -0xff6978

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 817
    .local v0, "defColor":I
    if-nez v5, :cond_7

    .line 818
    if-nez p2, :cond_1

    .line 819
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 957
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 958
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_36

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 960
    :cond_2
    if-eqz p2, :cond_3

    .line 961
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_37

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_3
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 963
    :cond_3
    return-object p2

    .line 806
    .end local v0    # "defColor":I
    .end local v4    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_5

    .line 807
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "2 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 808
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ge p1, v7, :cond_6

    .line 809
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 811
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "2."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v8}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 822
    .restart local v0    # "defColor":I
    .restart local v4    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_7
    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    .line 823
    if-nez p2, :cond_8

    .line 824
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 825
    .restart local p2    # "view":Landroid/view/View;
    const/4 v7, -0x1

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 827
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_9

    move-object v7, p2

    .line 828
    check-cast v7, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Header"

    const v10, 0x7f0702ba

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 829
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    move-object v7, p2

    .line 830
    check-cast v7, Lorg/telegram/ui/Cells/HeaderCell;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "OptionsList"

    const v10, 0x7f070468

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 833
    :cond_a
    const/4 v7, 0x2

    if-ne v5, v7, :cond_17

    .line 834
    if-nez p2, :cond_b

    .line 835
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_b
    move-object v3, p2

    .line 837
    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 838
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_d

    .line 839
    const-string/jumbo v8, "drawerAvatarRadius"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x23

    :goto_4
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 840
    .local v2, "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "AvatarRadius"

    const v9, 0x7f0700ba

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 839
    .end local v2    # "size":I
    :cond_c
    const/16 v7, 0x20

    goto :goto_4

    .line 841
    :cond_d
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_f

    .line 842
    const-string/jumbo v8, "drawerAvatarSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 v7, 0x44

    :goto_5
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 843
    .restart local v2    # "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "AvatarSize"

    const v9, 0x7f0700bb

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 842
    .end local v2    # "size":I
    :cond_e
    const/16 v7, 0x40

    goto :goto_5

    .line 844
    :cond_f
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_11

    .line 845
    const-string/jumbo v8, "drawerNameSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v7, 0x11

    :goto_6
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 846
    .restart local v2    # "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "OwnNameSize"

    const v9, 0x7f07046d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 845
    .end local v2    # "size":I
    :cond_10
    const/16 v7, 0xf

    goto :goto_6

    .line 847
    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_13

    .line 848
    const-string/jumbo v8, "drawerOptionSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v7, 0x11

    :goto_7
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 849
    .restart local v2    # "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "OptionSize"

    const v9, 0x7f070467

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 848
    .end local v2    # "size":I
    :cond_12
    const/16 v7, 0xf

    goto :goto_7

    .line 850
    :cond_13
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_15

    .line 851
    const-string/jumbo v8, "drawerPhoneSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_14

    const/16 v7, 0xf

    :goto_8
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 852
    .restart local v2    # "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "PhoneSize"

    const v9, 0x7f0704d3

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 851
    .end local v2    # "size":I
    :cond_14
    const/16 v7, 0xd

    goto :goto_8

    .line 853
    :cond_15
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 854
    const-string/jumbo v8, "drawerVersionSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_16

    const/16 v7, 0xf

    :goto_9
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 855
    .restart local v2    # "size":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "VersionSize"

    const v9, 0x7f07066f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 854
    .end local v2    # "size":I
    :cond_16
    const/16 v7, 0xd

    goto :goto_9

    .line 859
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_17
    const/4 v7, 0x3

    if-ne v5, v7, :cond_25

    .line 860
    if-nez p2, :cond_18

    .line 861
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_18
    move-object v3, p2

    .line 864
    check-cast v3, Lorg/telegram/ui/Cells/TextColorCell;

    .line 866
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_19

    .line 867
    const-string/jumbo v7, "drawerHeaderColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 868
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "HeaderColor"

    const v9, 0x7f0702bb

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->drawerHeaderColor:I

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 869
    :cond_19
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1b

    .line 870
    const-string/jumbo v7, "drawerHeaderGradientColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 871
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradientColor"

    const v9, 0x7f07054f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "drawerHeaderGradient"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1a

    const/4 v7, 0x0

    :goto_a
    const/4 v9, 0x1

    invoke-virtual {v3, v8, v7, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_1a
    const-string/jumbo v7, "drawerHeaderGradientColor"

    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_a

    .line 872
    :cond_1b
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1c

    .line 873
    const-string/jumbo v7, "drawerListColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 874
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ListColor"

    const v9, 0x7f070354

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawerListColor"

    const/4 v9, -0x1

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 875
    :cond_1c
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1e

    .line 876
    const-string/jumbo v7, "drawerRowGradientColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 877
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradientColor"

    const v9, 0x7f07054f

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "drawerRowGradient"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1d

    const/4 v7, 0x0

    :goto_b
    const/4 v9, 0x1

    invoke-virtual {v3, v8, v7, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v7, "drawerRowGradientColor"

    const/4 v9, -0x1

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_b

    .line 878
    :cond_1e
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1f

    .line 879
    const-string/jumbo v7, "drawerListDividerColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 880
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ListDividerColor"

    const v9, 0x7f070355

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawerListDividerColor"

    const v9, -0x262627

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 881
    :cond_1f
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_20

    .line 882
    const-string/jumbo v7, "drawerIconColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 883
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "IconColor"

    const v9, 0x7f0702e6

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->drawerIconColor:I

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 884
    :cond_20
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_21

    .line 885
    const-string/jumbo v7, "drawerOptionColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 886
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "OptionColor"

    const v9, 0x7f070466

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->drawerOptionColor:I

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 887
    :cond_21
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_22

    .line 888
    const-string/jumbo v7, "drawerVersionColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 889
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "VersionColor"

    const v9, 0x7f07066e

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawerVersionColor"

    const v9, -0x5c5c5d

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 890
    :cond_22
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_23

    .line 891
    const-string/jumbo v7, "drawerAvatarColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 892
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "AvatarColor"

    const v9, 0x7f0700b8

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawerAvatarColor"

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 893
    :cond_23
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_24

    .line 894
    const-string/jumbo v7, "drawerNameColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 895
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "NameColor"

    const v9, 0x7f0703b2

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->drawerNameColor:I

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 896
    :cond_24
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 897
    const-string/jumbo v7, "drawerPhoneColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

    .line 898
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "PhoneColor"

    const v9, 0x7f0704ca

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "drawerPhoneColor"

    const-string/jumbo v9, "themeColor"

    const/16 v10, -0x40

    invoke-static {v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->getIntDarkerColor(Ljava/lang/String;I)I

    move-result v9

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 900
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_25
    const/4 v7, 0x4

    if-ne v5, v7, :cond_2b

    .line 901
    if-nez p2, :cond_26

    .line 902
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_26
    move-object v3, p2

    .line 904
    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 905
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_27

    .line 906
    const-string/jumbo v7, "drawerHeaderBGCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 907
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "HideBackground"

    const v9, 0x7f0702c6

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->drawerHeaderBGCheck:Z

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 908
    :cond_27
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_28

    .line 909
    const-string/jumbo v7, "drawerHideBGShadowCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 910
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "HideBackgroundShadow"

    const v9, 0x7f0702c7

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->drawerHideBGShadowCheck:Z

    const/4 v9, 0x1

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 911
    :cond_28
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_29

    .line 912
    const-string/jumbo v7, "drawerCenterAvatarCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 913
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "CenterAvatar"

    const v9, 0x7f0700f9

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lorg/telegram/ui/ActionBar/Theme;->drawerCenterAvatarCheck:Z

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 914
    :cond_29
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 915
    const-string/jumbo v7, "drawerRowGradientListCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    .line 916
    const-string/jumbo v7, "drawerRowGradient"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v6

    .line 917
    .local v6, "value":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradientList"

    const v9, 0x7f070552

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_2a

    const/4 v7, 0x0

    :goto_c
    const/4 v9, 0x1

    invoke-virtual {v3, v8, v7, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_2a
    const-string/jumbo v7, "drawerRowGradientListCheck"

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_c

    .line 919
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v6    # "value":I
    :cond_2b
    const/4 v7, 0x5

    if-ne v5, v7, :cond_1

    .line 920
    if-nez p2, :cond_2c

    .line 921
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_2c
    move-object v3, p2

    .line 923
    check-cast v3, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 925
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_31

    .line 926
    const-string/jumbo v7, "drawerHeaderGradient"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 927
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 928
    const-string/jumbo v7, "drawerHeaderGradient"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 929
    .restart local v6    # "value":I
    if-nez v6, :cond_2d

    .line 930
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f07054d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientDisabled"

    const v9, 0x7f070550

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 931
    :cond_2d
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2e

    .line 932
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f07054d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientTopBottom"

    const v9, 0x7f070554

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 933
    :cond_2e
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2f

    .line 934
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f07054d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientLeftRight"

    const v9, 0x7f070551

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 935
    :cond_2f
    const/4 v7, 0x3

    if-ne v6, v7, :cond_30

    .line 936
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f07054d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientTLBR"

    const v9, 0x7f070553

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 937
    :cond_30
    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 938
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f07054d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientBLTR"

    const v9, 0x7f07054e

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 940
    .end local v6    # "value":I
    :cond_31
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    .line 941
    const-string/jumbo v7, "drawerRowGradient"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 942
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 943
    const-string/jumbo v7, "drawerRowGradient"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 944
    .restart local v6    # "value":I
    if-nez v6, :cond_32

    .line 945
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f07054d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientDisabled"

    const v9, 0x7f070550

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 946
    :cond_32
    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    .line 947
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f07054d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientTopBottom"

    const v9, 0x7f070554

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 948
    :cond_33
    const/4 v7, 0x2

    if-ne v6, v7, :cond_34

    .line 949
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f07054d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientLeftRight"

    const v9, 0x7f070551

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 950
    :cond_34
    const/4 v7, 0x3

    if-ne v6, v7, :cond_35

    .line 951
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f07054d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientTLBR"

    const v9, 0x7f070553

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 952
    :cond_35
    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 953
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "RowGradient"

    const v9, 0x7f07054d

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "RowGradientBLTR"

    const v9, 0x7f07054e

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 958
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .end local v6    # "value":I
    :cond_36
    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    .line 961
    :cond_37
    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 771
    const-string/jumbo v3, "drawerHeaderGradient"

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v1

    .line 772
    .local v1, "h":I
    const-string/jumbo v3, "drawerRowGradient"

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v0

    .line 773
    .local v0, "g":I
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    if-lez v1, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    .line 774
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    .line 775
    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v3

    if-ne p1, v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method
