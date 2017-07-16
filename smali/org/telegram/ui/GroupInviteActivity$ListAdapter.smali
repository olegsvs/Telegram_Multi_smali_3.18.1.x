.class Lorg/telegram/ui/GroupInviteActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "GroupInviteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/GroupInviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/GroupInviteActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/GroupInviteActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 248
    iput-object p2, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 249
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$600(Lorg/telegram/ui/GroupInviteActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupInviteActivity;->access$800(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$300(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$400(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$900(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$1000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 327
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 328
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$100(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 329
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 253
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 254
    .local v0, "position":I
    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$400(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$300(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupInviteActivity;->access$100(Lorg/telegram/ui/GroupInviteActivity;)I

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
    .locals 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 289
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 291
    :pswitch_0
    iget-object v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 292
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v4

    if-ne p2, v4, :cond_1

    .line 293
    const-string/jumbo v4, "CopyLink"

    const v5, 0x7f0701a5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$300(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v4

    if-ne p2, v4, :cond_2

    .line 295
    const-string/jumbo v4, "ShareLink"

    const v5, 0x7f0705be

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$400(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 297
    const-string/jumbo v4, "RevokeLink"

    const v5, 0x7f070547

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 301
    .end local v3    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    :pswitch_1
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 302
    .local v1, "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$900(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v4

    if-ne p2, v4, :cond_3

    .line 303
    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0200af

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 305
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$1000(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v4

    if-ne p2, v4, :cond_0

    .line 306
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v5}, Lorg/telegram/ui/GroupInviteActivity;->access$1100(Lorg/telegram/ui/GroupInviteActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 307
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_4

    .line 308
    const-string/jumbo v4, "ChannelLinkInfo"

    const v5, 0x7f070124

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0200ae

    const-string/jumbo v6, "windowBackgroundGrayShadow"

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 310
    :cond_4
    const-string/jumbo v4, "LinkInfo"

    const v5, 0x7f07034b

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 316
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v1    # "privacyCell":Lorg/telegram/ui/Cells/TextInfoPrivacyCell;
    :pswitch_2
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextBlockCell;

    .line 317
    .local v2, "textBlockCell":Lorg/telegram/ui/Cells/TextBlockCell;
    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->this$0:Lorg/telegram/ui/GroupInviteActivity;

    invoke-static {v4}, Lorg/telegram/ui/GroupInviteActivity;->access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->link:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v4, v6}, Lorg/telegram/ui/Cells/TextBlockCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "error"

    goto :goto_2

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 265
    packed-switch p2, :pswitch_data_0

    .line 275
    new-instance v3, Lorg/telegram/ui/Cells/TextBlockCell;

    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextBlockCell;-><init>(Landroid/content/Context;)V

    .line 276
    .local v3, "view":Landroid/view/View;
    const-string/jumbo v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 277
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "theme"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 278
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "prefBGColor"

    const/4 v5, -0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 279
    .local v0, "bgColor":I
    const-string/jumbo v4, "prefTitleColor"

    const v5, -0xdededf

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 280
    .local v2, "titleColor":I
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v4, v3

    .line 281
    check-cast v4, Lorg/telegram/ui/Cells/TextBlockCell;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Cells/TextBlockCell;->setTextColor(I)V

    .line 284
    .end local v0    # "bgColor":I
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "titleColor":I
    :goto_0
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v4

    .line 267
    .end local v3    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v3, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 268
    .restart local v3    # "view":Landroid/view/View;
    const-string/jumbo v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 271
    .end local v3    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v4, p0, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 272
    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
