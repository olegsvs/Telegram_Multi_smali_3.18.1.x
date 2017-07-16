.class Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StickerMasksView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerMasksView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StickersGridAdapter"
.end annotation


# instance fields
.field private cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private packStartRow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rowStartPack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private stickersPerRow:I

.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksView;

.field private totalItems:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/StickerMasksView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->packStartRow:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->totalItems:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    return v0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->totalItems:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->totalItems:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPositionForPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)I
    .locals 2
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->packStartRow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getTabForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/StickerMasksView;->getMeasuredWidth()I

    move-result v2

    .local v2, "width":I
    if-nez v2, :cond_0

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    :cond_0
    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    div-int v3, v2, v3

    iput v3, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    .end local v2    # "width":I
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    div-int v1, p1, v3

    .local v1, "row":I
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .local v0, "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-nez v0, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksView;->access$1300(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v3

    :goto_0
    return v3

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksView;->access$1500(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksView;->access$1400(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 11

    .prologue
    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/StickerMasksView;->getMeasuredWidth()I

    move-result v7

    .local v7, "width":I
    if-nez v7, :cond_0

    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v8, Landroid/graphics/Point;->x:I

    :cond_0
    const/high16 v8, 0x42900000    # 72.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    div-int v8, v7, v8

    iput v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickerMasksView;->access$800(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/messenger/support/widget/GridLayoutManager;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->packStartRow:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    const/4 v8, 0x0

    iput v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->totalItems:I

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickerMasksView;->access$1500(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v9}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v9

    aget-object v5, v8, v9

    .local v5, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v0, -0x1

    .local v0, "a":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    const/4 v4, 0x0

    .local v4, "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->totalItems:I

    iget v9, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    div-int v6, v8, v9

    .local v6, "startRow":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickerMasksView;->access$700(Lorg/telegram/ui/Components/StickerMasksView;)[Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v9}, Lorg/telegram/ui/Components/StickerMasksView;->access$600(Lorg/telegram/ui/Components/StickerMasksView;)I

    move-result v9

    aget-object v3, v8, v9

    .local v3, "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .restart local v4    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    .restart local v3    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->packStartRow:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    .local v2, "count":I
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    iget v9, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->totalItems:I

    add-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->totalItems:I

    iget v9, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    mul-int/2addr v9, v2

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->totalItems:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_1

    iget-object v8, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    add-int v9, v6, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "b":I
    .end local v2    # "count":I
    .end local v3    # "documents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Document;>;"
    .end local v4    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v6    # "startRow":I
    :cond_5
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x42a40000    # 82.0f

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->cache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .local v3, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setSticker(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto :goto_0

    .end local v3    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    :pswitch_1
    iget v4, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->totalItems:I

    if-ne p2, v4, :cond_2

    add-int/lit8 v4, p2, -0x1

    iget v6, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    div-int v2, v4, v6

    .local v2, "row":I
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->rowStartPack:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .local v1, "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    if-nez v1, :cond_0

    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/EmptyCell;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->this$0:Lorg/telegram/ui/Components/StickerMasksView;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksView;->access$000(Lorg/telegram/ui/Components/StickerMasksView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getMeasuredHeight()I

    move-result v4

    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->stickersPerRow:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    mul-int/2addr v6, v7

    sub-int v0, v4, v6

    .local v0, "height":I
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/EmptyCell;

    if-lez v0, :cond_1

    .end local v0    # "height":I
    :goto_1
    invoke-virtual {v4, v0}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

    .restart local v0    # "height":I
    :cond_1
    move v0, v5

    goto :goto_1

    .end local v0    # "height":I
    .end local v1    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .end local v2    # "row":I
    :cond_2
    iget-object v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/EmptyCell;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/EmptyCell;->setHeight(I)V

    goto :goto_0

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
    const/4 v0, 0x0

    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter$1;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter$1;-><init>(Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/telegram/ui/Cells/EmptyCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksView$StickersGridAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
