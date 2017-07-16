.class public abstract Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SectionsAdapter"
.end annotation


# instance fields
.field private count:I

.field private sectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionCount:I

.field private sectionCountCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionPositionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;-><init>()V

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->cleanupCache()V

    .line 125
    return-void
.end method

.method private cleanupCache()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCache:Landroid/util/SparseArray;

    .line 116
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionPositionCache:Landroid/util/SparseArray;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCountCache:Landroid/util/SparseArray;

    .line 118
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    .line 119
    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCount:I

    .line 120
    return-void
.end method

.method private internalGetCountForSection(I)I
    .locals 4
    .param p1, "section"    # I

    .prologue
    .line 165
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    .local v0, "cachedSectionCount":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    :goto_0
    return v1

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getCountForSection(I)I

    move-result v1

    .line 170
    .local v1, "sectionCount":I
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCountCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private internalGetSectionCount()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCount:I

    if-ltz v0, :cond_0

    .line 176
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCount:I

    .line 179
    :goto_0
    return v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCount:I

    .line 179
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCount:I

    goto :goto_0
.end method


# virtual methods
.method public abstract getCountForSection(I)I
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItem(II)Ljava/lang/Object;
.end method

.method public final getItemCount()I
    .locals 3

    .prologue
    .line 141
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    if-ltz v1, :cond_0

    .line 142
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    .line 148
    :goto_0
    return v1

    .line 144
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetSectionCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 146
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetCountForSection(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->count:I

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemViewType(II)I

    move-result v0

    return v0
.end method

.method public abstract getItemViewType(II)I
.end method

.method public getPositionInSectionForPosition(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 201
    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 202
    .local v0, "cachedPosition":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 216
    :goto_0
    return v2

    .line 205
    :cond_0
    const/4 v5, 0x0

    .line 206
    .local v5, "sectionStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetSectionCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 207
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetCountForSection(I)I

    move-result v3

    .line 208
    .local v3, "sectionCount":I
    add-int v4, v5, v3

    .line 209
    .local v4, "sectionEnd":I
    if-lt p1, v5, :cond_1

    if-ge p1, v4, :cond_1

    .line 210
    sub-int v2, p1, v5

    .line 211
    .local v2, "positionInSection":I
    iget-object v6, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionPositionCache:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 214
    .end local v2    # "positionInSection":I
    :cond_1
    move v5, v4

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    .end local v3    # "sectionCount":I
    .end local v4    # "sectionEnd":I
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public abstract getSectionCount()I
.end method

.method public final getSectionForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 183
    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 184
    .local v0, "cachedSection":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 197
    :goto_0
    return v1

    .line 187
    :cond_0
    const/4 v4, 0x0

    .line 188
    .local v4, "sectionStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetSectionCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 189
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->internalGetCountForSection(I)I

    move-result v2

    .line 190
    .local v2, "sectionCount":I
    add-int v3, v4, v2

    .line 191
    .local v3, "sectionEnd":I
    if-lt p1, v4, :cond_1

    if-ge p1, v3, :cond_1

    .line 192
    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->sectionCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_1
    move v4, v3

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    .end local v2    # "sectionCount":I
    .end local v3    # "sectionEnd":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public abstract getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
.end method

.method public abstract isEnabled(II)Z
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 135
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 136
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->isEnabled(II)Z

    move-result v1

    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->cleanupCache()V

    .line 130
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;->notifyDataSetChanged()V

    .line 131
    return-void
.end method

.method public abstract onBindViewHolder(IILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
.end method

.method public final onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 161
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->onBindViewHolder(IILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 162
    return-void
.end method
