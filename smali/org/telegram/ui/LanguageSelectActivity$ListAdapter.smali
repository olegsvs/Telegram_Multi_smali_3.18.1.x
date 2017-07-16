.class Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "LanguageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LanguageSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private search:Z

.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;Z)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isSearch"    # Z

    .prologue
    .line 291
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 292
    iput-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 293
    iput-boolean p3, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    .line 294
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 303
    iget-boolean v1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v1, v1, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 307
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v0, v0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 309
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 312
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 323
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 326
    .local v2, "textSettingsCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-boolean v5, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    if-eqz v5, :cond_1

    .line 327
    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v5, v5, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 328
    .local v1, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v5, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v5, v5, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_0

    move v0, v3

    .line 333
    .local v0, "last":Z
    :goto_0
    iget-object v5, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v2, v5, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 334
    return-void

    .end local v0    # "last":Z
    :cond_0
    move v0, v4

    .line 328
    goto :goto_0

    .line 330
    .end local v1    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 331
    .restart local v1    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p2, v5, :cond_2

    move v0, v3

    .restart local v0    # "last":Z
    :goto_2
    goto :goto_0

    .end local v0    # "last":Z
    :cond_2
    move v0, v4

    goto :goto_2

    .restart local v0    # "last":Z
    :cond_3
    move v3, v4

    .line 333
    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 318
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
