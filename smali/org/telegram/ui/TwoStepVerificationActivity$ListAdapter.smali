.class Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "TwoStepVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TwoStepVerificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/TwoStepVerificationActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/TwoStepVerificationActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 913
    iput-object p1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 914
    iput-object p2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 915
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1800(Lorg/telegram/ui/TwoStepVerificationActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$3100(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 991
    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2700(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2800(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$3000(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2900(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 992
    :cond_0
    const/4 v0, 0x1

    .line 994
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 919
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 920
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2700(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2800(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2900(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$3000(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const v7, 0x7f0200af

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 946
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 948
    :pswitch_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 949
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    const-string/jumbo v4, "windowBackgroundWhiteBlackText"

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 950
    const-string/jumbo v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 951
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1000(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_1

    .line 952
    const-string/jumbo v3, "ChangePassword"

    const v4, 0x7f0700fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 953
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$900(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_2

    .line 954
    const-string/jumbo v3, "SetAdditionalPassword"

    const v4, 0x7f0705ab

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 955
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1500(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_3

    .line 956
    const-string/jumbo v3, "TurnPasswordOff"

    const v4, 0x7f07063f

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 957
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1300(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_5

    .line 958
    const-string/jumbo v4, "ChangeRecoveryEmail"

    const v5, 0x7f070103

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v5}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    :goto_1
    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    .line 959
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1200(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-ne p2, v2, :cond_6

    .line 960
    const-string/jumbo v2, "SetRecoveryEmail"

    const v4, 0x7f0705b5

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 961
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$1600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 962
    const-string/jumbo v2, "windowBackgroundWhiteRedText3"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTag(Ljava/lang/Object;)V

    .line 963
    const-string/jumbo v2, "windowBackgroundWhiteRedText3"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 964
    const-string/jumbo v2, "AbortPassword"

    const v4, 0x7f070012

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 968
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_1
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 969
    .local v0, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2600(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_7

    .line 970
    const-string/jumbo v2, "SetAdditionalPasswordInfo"

    const v3, 0x7f0705ac

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 971
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v2, v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 972
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2700(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_8

    .line 973
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v2, v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 975
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2800(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_9

    .line 976
    const-string/jumbo v4, "EmailPasswordConfirmText"

    const v5, 0x7f070218

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0200b0

    const-string/jumbo v4, "windowBackgroundGrayShadow"

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 978
    :cond_9
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$3000(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_a

    .line 979
    const-string/jumbo v2, "EnabledPasswordText"

    const v3, 0x7f070225

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v2, v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 981
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v4}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$2900(Lorg/telegram/ui/TwoStepVerificationActivity;)I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 982
    const-string/jumbo v4, "PendingEmailText"

    const v5, 0x7f0704bf

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->this$0:Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-static {v6}, Lorg/telegram/ui/TwoStepVerificationActivity;->access$200(Lorg/telegram/ui/TwoStepVerificationActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v4, v5, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 983
    iget-object v2, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v2, v7, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 946
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 931
    packed-switch p2, :pswitch_data_0

    .line 938
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 941
    .local v0, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 933
    .end local v0    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v1, p0, Lorg/telegram/ui/TwoStepVerificationActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 934
    .restart local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 931
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
