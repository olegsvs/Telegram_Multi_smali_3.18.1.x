.class Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/ui/Cells/PhotoAttachPhotoCell$PhotoAttachPhotoCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    .prologue
    .line 2054
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckClick(Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;)V
    .locals 6
    .param p1, "v"    # Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2057
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getPhotoEntry()Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    .line 2058
    .local v0, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->access$6600(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2059
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->access$6600(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(ZZ)V

    .line 2061
    iput-object v5, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 2062
    iput-object v5, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 2063
    iget-object v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2064
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setPhotoEntry(Lorg/telegram/messenger/MediaController$PhotoEntry;Z)V

    .line 2069
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    .line 2070
    return-void

    :cond_0
    move v1, v3

    .line 2064
    goto :goto_0

    .line 2066
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->access$6600(Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(ZZ)V

    goto :goto_1
.end method
