.class Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebpageAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I
    .locals 2
    .param p1, "block"    # Lorg/telegram/tgnet/TLRPC$PageBlock;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v1, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_0

    :cond_8
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v1, :cond_9

    const/16 v0, 0x8

    goto :goto_0

    :cond_9
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v1, :cond_a

    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v1, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    :cond_b
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v1, :cond_c

    const/16 v0, 0xb

    goto :goto_0

    :cond_c
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v1, :cond_d

    const/16 v0, 0xc

    goto :goto_0

    :cond_d
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v1, :cond_e

    const/16 v0, 0xd

    goto :goto_0

    :cond_e
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v1, :cond_f

    const/16 v0, 0xe

    goto :goto_0

    :cond_f
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v1, :cond_10

    const/16 v0, 0xf

    goto :goto_0

    :cond_10
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v1, :cond_11

    const/16 v0, 0x10

    goto :goto_0

    :cond_11
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v1, :cond_12

    const/16 v0, 0x11

    goto :goto_0

    :cond_12
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/16 v0, 0x5a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v3, v3, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .local v0, "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    move-object v2, v0

    .local v2, "originalBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .end local v2    # "originalBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    .restart local v2    # "originalBlock":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_0
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;)V

    goto :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_1
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;)V

    goto :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_2
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockDividerCell;
    goto :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockDividerCell;
    :pswitch_3
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;)V

    goto :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_4
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;)V

    goto :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_5
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    if-nez p2, :cond_2

    move v3, v4

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_3

    :goto_2
    invoke-virtual {v1, v0, v3, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;ZZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_6
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;)V

    goto :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_7
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;)V

    goto :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_8
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;)V

    goto :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_9
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    if-nez p2, :cond_4

    move v3, v4

    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, v6, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p2, v6, :cond_5

    :goto_4
    invoke-virtual {v1, v0, v3, v4}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_0

    :cond_4
    move v3, v5

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_4

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_a
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;)V

    goto/16 :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_b
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockTitleCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;)V

    goto/16 :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockTitleCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_c
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockListCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockListCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockListCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)V

    goto/16 :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockListCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_d
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockFooterCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;)V

    goto/16 :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockFooterCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_e
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;)V

    goto/16 :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_f
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;)V

    goto/16 :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_10
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)V

    goto/16 :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;
    .restart local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    :pswitch_11
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .local v1, "cell":Lorg/telegram/ui/ArticleViewer$BlockCollageCell;
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .end local v0    # "block":Lorg/telegram/tgnet/TLRPC$PageBlock;
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter$1;-><init>(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/content/Context;)V

    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v8, "textView":Landroid/widget/TextView;
    const/high16 v1, 0x42080000    # 34.0f

    const/16 v2, 0x33

    const/high16 v4, 0x41200000    # 10.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0x877d73

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, -0x121010

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string/jumbo v1, "PreviewFeedback"

    const v2, 0x7f0704f5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v8, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setGravity(I)V

    move-object v9, v7

    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v8    # "textView":Landroid/widget/TextView;
    .local v9, "view":Landroid/view/View;
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v9}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_3
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_4
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_5
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_6
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_7
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_8
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_9
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2, v4}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;I)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_a
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_b
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_c
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockListCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockListCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_d
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_e
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_f
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_10
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    .end local v9    # "view":Landroid/view/View;
    :pswitch_11
    new-instance v9, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {v9, v1, v2}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    .restart local v9    # "view":Landroid/view/View;
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
