.class Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DataSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DataSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 302
    iput-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 303
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 454
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 455
    :cond_0
    const/4 v0, 0x0

    .line 463
    :cond_1
    :goto_0
    return v0

    .line 456
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 458
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 459
    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    .line 460
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 461
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 423
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 424
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    .line 425
    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 424
    :goto_0
    return v1

    .line 425
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 312
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-eq p2, v6, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 315
    :cond_1
    iget-object v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0200af

    const-string/jumbo v9, "windowBackgroundGrayShadow"

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 317
    :cond_2
    iget-object v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0200ae

    const-string/jumbo v9, "windowBackgroundGrayShadow"

    invoke-static {v7, v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 323
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_3

    .line 324
    const-string/jumbo v6, "StorageUsage"

    const v7, 0x7f07060a

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_4

    .line 326
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mainconfig"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 327
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 328
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "VoipDataSaving"

    invoke-interface {v2, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 339
    :goto_1
    const-string/jumbo v6, "VoipUseLessData"

    const v7, 0x7f070698

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 330
    :pswitch_2
    const-string/jumbo v6, "UseLessDataNever"

    const v7, 0x7f070657

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 331
    goto :goto_1

    .line 333
    :pswitch_3
    const-string/jumbo v6, "UseLessDataOnMobile"

    const v7, 0x7f070658

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 334
    goto :goto_1

    .line 336
    :pswitch_4
    const-string/jumbo v6, "UseLessDataAlways"

    const v7, 0x7f070656

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 340
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_5

    .line 341
    const-string/jumbo v6, "MobileUsage"

    const v7, 0x7f0703a5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 342
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_6

    .line 343
    const-string/jumbo v6, "RoamingUsage"

    const v7, 0x7f07054b

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 344
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 345
    const-string/jumbo v6, "WiFiUsage"

    const v7, 0x7f0706ac

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 350
    .end local v4    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_5
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HeaderCell;

    .line 351
    .local v0, "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_7

    .line 352
    const-string/jumbo v6, "AutomaticMediaDownload"

    const v7, 0x7f0700b5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_8

    .line 354
    const-string/jumbo v6, "DataUsage"

    const v7, 0x7f0701c4

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 356
    const-string/jumbo v6, "Calls"

    const v7, 0x7f0700ed

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 361
    .end local v0    # "headerCell":Lorg/telegram/ui/Cells/HeaderCell;
    :pswitch_6
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 363
    .local v4, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-eq p2, v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-eq p2, v6, :cond_9

    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 366
    :cond_9
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mainconfig"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 367
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_16

    .line 368
    const-string/jumbo v6, "WhenUsingMobileData"

    const v7, 0x7f0706a4

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 369
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget v1, v6, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 377
    .local v1, "mask":I
    :goto_2
    const-string/jumbo v3, ""

    .line 378
    .local v3, "text":Ljava/lang/String;
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_a

    .line 379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "LocalPhotoCache"

    const v8, 0x7f07035f

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    :cond_a
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_c

    .line 382
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 385
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "LocalAudioCache"

    const v8, 0x7f070357

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 387
    :cond_c
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_e

    .line 388
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_d

    .line 389
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "LocalVideoCache"

    const v8, 0x7f070360

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    :cond_e
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_10

    .line 394
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_f

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "FilesDataUsage"

    const v8, 0x7f07024a

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    :cond_10
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_12

    .line 400
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11

    .line 401
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "AttachMusic"

    const v8, 0x7f0700a9

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    :cond_12
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_14

    .line 406
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_13

    .line 407
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "LocalGifCache"

    const v8, 0x7f07035d

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_15

    .line 412
    const-string/jumbo v6, "NoMediaAutoDownload"

    const v7, 0x7f0703da

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 414
    :cond_15
    invoke-virtual {v4, v5, v3, v10}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 370
    .end local v1    # "mask":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_16
    iget-object v6, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ne p2, v6, :cond_17

    .line 371
    const-string/jumbo v6, "WhenConnectedOnWiFi"

    const v7, 0x7f0706a2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 372
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget v1, v6, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .restart local v1    # "mask":I
    goto/16 :goto_2

    .line 374
    .end local v1    # "mask":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_17
    const-string/jumbo v6, "WhenRoaming"

    const v7, 0x7f0706a3

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 375
    .restart local v5    # "value":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget v1, v6, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    .restart local v1    # "mask":I
    goto/16 :goto_2

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 448
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 433
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 434
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    .line 436
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 437
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 440
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 441
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 444
    :pswitch_3
    new-instance v0, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 445
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
