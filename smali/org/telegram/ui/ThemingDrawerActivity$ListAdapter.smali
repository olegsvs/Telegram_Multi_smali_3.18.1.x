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
    iput-object p1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

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

    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_0

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

    :cond_6
    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-eq p1, v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

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
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->getItemViewType(I)I

    move-result v5

    .local v5, "type":I
    const-string/jumbo v1, ""

    .local v1, "prefix":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$000(Lorg/telegram/ui/ThemingDrawerActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v1, "4."

    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "theme"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "themeColor"

    const v8, -0xff6978

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, "defColor":I
    if-nez v5, :cond_7

    if-nez p2, :cond_1

    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_36

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_2
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    if-eqz p2, :cond_3

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_37

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_3
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-object p2

    .end local v0    # "defColor":I
    .end local v4    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_5

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

    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ge p1, v7, :cond_6

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

    .restart local v0    # "defColor":I
    .restart local v4    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_7
    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    if-nez p2, :cond_8

    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    const/4 v7, -0x1

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_9

    move-object v7, p2

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

    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$3500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    move-object v7, p2

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

    :cond_a
    const/4 v7, 0x2

    if-ne v5, v7, :cond_17

    if-nez p2, :cond_b

    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_b
    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .local v3, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_d

    const-string/jumbo v8, "drawerAvatarRadius"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x23

    :goto_4
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

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

    .end local v2    # "size":I
    :cond_c
    const/16 v7, 0x20

    goto :goto_4

    :cond_d
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_f

    const-string/jumbo v8, "drawerAvatarSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 v7, 0x44

    :goto_5
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

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

    .end local v2    # "size":I
    :cond_e
    const/16 v7, 0x40

    goto :goto_5

    :cond_f
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_11

    const-string/jumbo v8, "drawerNameSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v7, 0x11

    :goto_6
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

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

    .end local v2    # "size":I
    :cond_10
    const/16 v7, 0xf

    goto :goto_6

    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_13

    const-string/jumbo v8, "drawerOptionSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v7, 0x11

    :goto_7
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

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

    .end local v2    # "size":I
    :cond_12
    const/16 v7, 0xf

    goto :goto_7

    :cond_13
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_15

    const-string/jumbo v8, "drawerPhoneSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_14

    const/16 v7, 0xf

    :goto_8
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

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

    .end local v2    # "size":I
    :cond_14
    const/16 v7, 0xd

    goto :goto_8

    :cond_15
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    const-string/jumbo v8, "drawerVersionSize"

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_16

    const/16 v7, 0xf

    :goto_9
    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

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

    .end local v2    # "size":I
    :cond_16
    const/16 v7, 0xd

    goto :goto_9

    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :cond_17
    const/4 v7, 0x3

    if-ne v5, v7, :cond_25

    if-nez p2, :cond_18

    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_18
    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/Cells/TextColorCell;

    .local v3, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_19

    const-string/jumbo v7, "drawerHeaderColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    :cond_19
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1b

    const-string/jumbo v7, "drawerHeaderGradientColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    :cond_1b
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1c

    const-string/jumbo v7, "drawerListColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    :cond_1c
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1200(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1e

    const-string/jumbo v7, "drawerRowGradientColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    :cond_1e
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1500(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1f

    const-string/jumbo v7, "drawerListDividerColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    :cond_1f
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1600(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_20

    const-string/jumbo v7, "drawerIconColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    :cond_20
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_21

    const-string/jumbo v7, "drawerOptionColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    :cond_21
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_22

    const-string/jumbo v7, "drawerVersionColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    :cond_22
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_23

    const-string/jumbo v7, "drawerAvatarColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    :cond_23
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2000(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_24

    const-string/jumbo v7, "drawerNameColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    :cond_24
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$2100(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    const-string/jumbo v7, "drawerPhoneColor"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTag(Ljava/lang/Object;)V

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

    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    :cond_25
    const/4 v7, 0x4

    if-ne v5, v7, :cond_2b

    if-nez p2, :cond_26

    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_26
    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell;

    .local v3, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$700(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_27

    const-string/jumbo v7, "drawerHeaderBGCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

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

    :cond_27
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$800(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_28

    const-string/jumbo v7, "drawerHideBGShadowCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

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

    :cond_28
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$900(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_29

    const-string/jumbo v7, "drawerCenterAvatarCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

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

    :cond_29
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1300(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    const-string/jumbo v7, "drawerRowGradientListCheck"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setTag(Ljava/lang/Object;)V

    const-string/jumbo v7, "drawerRowGradient"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v6

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

    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v6    # "value":I
    :cond_2b
    const/4 v7, 0x5

    if-ne v5, v7, :cond_1

    if-nez p2, :cond_2c

    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_2c
    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .local v3, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_31

    const-string/jumbo v7, "drawerHeaderGradient"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x0


    const-string/jumbo v7, "drawerHeaderGradient"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "value":I
    if-nez v6, :cond_2d

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

    :cond_2d
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2e

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

    :cond_2e
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2f

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

    :cond_2f
    const/4 v7, 0x3

    if-ne v6, v7, :cond_30

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

    :cond_30
    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

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

    .end local v6    # "value":I
    :cond_31
    iget-object v7, p0, Lorg/telegram/ui/ThemingDrawerActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemingDrawerActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemingDrawerActivity;->access$1400(Lorg/telegram/ui/ThemingDrawerActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    const-string/jumbo v7, "drawerRowGradient"

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTag(Ljava/lang/Object;)V

    const/4 v7, 0x0


    const-string/jumbo v7, "drawerRowGradient"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "value":I
    if-nez v6, :cond_32

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

    :cond_32
    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

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

    :cond_33
    const/4 v7, 0x2

    if-ne v6, v7, :cond_34

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

    :cond_34
    const/4 v7, 0x3

    if-ne v6, v7, :cond_35

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

    :cond_35
    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

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

    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .end local v6    # "value":I
    :cond_36
    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_2

    :cond_37
    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v3, "drawerHeaderGradient"

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v1

    .local v1, "h":I
    const-string/jumbo v3, "drawerRowGradient"

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v0

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
