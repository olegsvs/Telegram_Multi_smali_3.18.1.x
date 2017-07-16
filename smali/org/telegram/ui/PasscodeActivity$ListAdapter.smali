.class Lorg/telegram/ui/PasscodeActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PasscodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PasscodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 612
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 613
    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 614
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1600(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 712
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return v0

    .line 714
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 715
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 716
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1700(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 717
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 618
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 619
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v6, 0x7f0200ae

    const v10, 0x7f0700b3

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 649
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 651
    :pswitch_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 652
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p2, v5, :cond_2

    .line 653
    const-string/jumbo v5, "Passcode"

    const v6, 0x7f070484

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v5, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$1300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p2, v5, :cond_3

    .line 655
    const-string/jumbo v3, "UnlockFingerprint"

    const v5, 0x7f07064a

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v5, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-virtual {v1, v3, v5, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 656
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v4}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 657
    const-string/jumbo v4, "ScreenCapture"

    const v5, 0x7f070568

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    invoke-virtual {v1, v4, v5, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 662
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :pswitch_1
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 663
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p2, v5, :cond_5

    .line 664
    const-string/jumbo v4, "ChangePasscode"

    const v5, 0x7f0700fb

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 665
    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 666
    const-string/jumbo v3, "windowBackgroundWhiteGrayText7"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 667
    const-string/jumbo v3, "windowBackgroundWhiteGrayText7"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_0

    .line 669
    :cond_4
    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 670
    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_0

    .line 672
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p2, v5, :cond_0

    .line 674
    sget v5, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-nez v5, :cond_6

    .line 675
    const-string/jumbo v5, "AutoLockDisabled"

    const v6, 0x7f0700b2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "val":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "AutoLock"

    const v5, 0x7f0700b1

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 684
    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 685
    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_0

    .line 676
    .end local v2    # "val":Ljava/lang/String;
    :cond_6
    sget v5, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v6, 0xe10

    if-ge v5, v6, :cond_7

    .line 677
    const-string/jumbo v5, "AutoLockInTime"

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Minutes"

    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    div-int/lit8 v8, v8, 0x3c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v10, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "val":Ljava/lang/String;
    goto :goto_1

    .line 678
    .end local v2    # "val":Ljava/lang/String;
    :cond_7
    sget v5, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const v6, 0x15180

    if-ge v5, v6, :cond_8

    .line 679
    const-string/jumbo v5, "AutoLockInTime"

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Hours"

    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v10, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "val":Ljava/lang/String;
    goto :goto_1

    .line 681
    .end local v2    # "val":Ljava/lang/String;
    :cond_8
    const-string/jumbo v5, "AutoLockInTime"

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Days"

    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x41c00000    # 24.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v10, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "val":Ljava/lang/String;
    goto/16 :goto_1

    .line 690
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v2    # "val":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 691
    .local v0, "cell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1700(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    if-ne p2, v3, :cond_a

    .line 692
    const-string/jumbo v3, "ChangePasscodeInfo"

    const v4, 0x7f0700fd

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 694
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "windowBackgroundGrayShadow"

    invoke-static {v3, v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 696
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0200af

    const-string/jumbo v5, "windowBackgroundGrayShadow"

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 698
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    if-ne p2, v3, :cond_b

    .line 699
    const-string/jumbo v3, "AutoLockInfo"

    const v4, 0x7f0700b4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "windowBackgroundGrayShadow"

    invoke-static {v3, v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 701
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 702
    const-string/jumbo v3, "ScreenCaptureInfo"

    const v4, 0x7f070569

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0200af

    const-string/jumbo v5, "windowBackgroundGrayShadow"

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 649
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 630
    packed-switch p2, :pswitch_data_0

    .line 641
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 644
    .local v0, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 632
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 633
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 636
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 637
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 630
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
