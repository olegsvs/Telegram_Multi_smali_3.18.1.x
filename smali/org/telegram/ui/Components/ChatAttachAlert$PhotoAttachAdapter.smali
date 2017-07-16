.class Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAttachAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private selectedPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2033
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2031
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    .line 2034
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    .line 2035
    return-void
.end method

.method static synthetic access$6600(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    .prologue
    .line 2028
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public clearSelectedPhotos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2038
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2039
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2040
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2041
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 2042
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 2043
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 2044
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 2046
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2047
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    .line 2048
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 2050
    :cond_1
    return-void
.end method

.method public createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    .prologue
    .line 2053
    new-instance v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;-><init>(Landroid/content/Context;)V

    .line 2054
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setDelegate(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;)V

    .line 2072
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 2127
    const/4 v0, 0x0

    .line 2128
    .local v0, "count":I
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2129
    add-int/lit8 v0, v0, 0x1

    .line 2131
    :cond_0
    sget-object v1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_1

    .line 2132
    sget-object v1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2134
    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2139
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2140
    const/4 v0, 0x1

    .line 2142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2076
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2102
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 2081
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_4

    .line 2082
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2083
    add-int/lit8 p2, p2, -0x1

    .line 2085
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 2086
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    sget-object v2, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 2087
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    sget-object v2, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    .line 2088
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->selectedPhotos:Ljava/util/HashMap;

    iget v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(ZZ)V

    .line 2089
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setTag(Ljava/lang/Object;)V

    .line 2090
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setTag(Ljava/lang/Object;)V

    .line 2098
    .end local v0    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_2
    :goto_1
    return-void

    .restart local v0    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .restart local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_3
    move v2, v3

    .line 2087
    goto :goto_0

    .line 2091
    .end local v0    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    .line 2092
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->isInitied()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2093
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2095
    :cond_5
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v2, 0x0

    .line 2108
    packed-switch p2, :pswitch_data_0

    .line 2113
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2114
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 2115
    .local v0, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2122
    :goto_0
    return-object v0

    .line 2110
    .end local v0    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance v1, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    .line 2111
    .restart local v0    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    goto :goto_0

    .line 2117
    .end local v0    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object v0

    .restart local v0    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    goto :goto_0

    .line 2108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
