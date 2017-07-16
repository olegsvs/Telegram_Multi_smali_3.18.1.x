.class public Lorg/telegram/ui/PhotoPickerActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PhotoPickerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;,
        Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    }
.end annotation


# instance fields
.field private allowCaption:Z

.field private bingSearchEndReached:Z

.field private chatActivity:Lorg/telegram/ui/ChatActivity;

.field private currentBingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private giphyReqId:I

.field private giphySearchEndReached:Z

.field private itemWidth:I

.field private lastSearchString:Ljava/lang/String;

.field private lastSearchToken:I

.field private layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingRecent:Z

.field private nextGiphySearchOffset:I

.field private pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

.field private recentImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searching:Z

.field private selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

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

.field private selectedWebPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private sendPressed:Z

.field private singlePhoto:Z

.field private type:I


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/MediaController$AlbumEntry;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;ZZLorg/telegram/ui/ChatActivity;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "selectedAlbum"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p6, "onlyOnePhoto"    # Z
    .param p7, "allowCaption"    # Z
    .param p8, "chatActivity"    # Lorg/telegram/ui/ChatActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;ZZ",
            "Lorg/telegram/ui/ChatActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "selectedPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$PhotoEntry;>;"
    .local p4, "selectedWebPhotos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .local p5, "recentImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    const/4 v1, 0x1

    .line 123
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultUrls:Ljava/util/HashMap;

    .line 97
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->bingSearchEndReached:Z

    .line 98
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z

    .line 104
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowCaption:Z

    .line 115
    const/16 v0, 0x64

    iput v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I

    .line 124
    iput-object p2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 125
    iput-object p3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    .line 126
    iput-object p4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    .line 127
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    .line 128
    iput-object p5, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 129
    iput-boolean p6, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    .line 130
    iput-object p8, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    .line 131
    iput-boolean p7, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowCaption:Z

    .line 132
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->isVideo:Z

    if-eqz v0, :cond_0

    .line 133
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    .line 135
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResultKeys:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PhotoPickerActivity;->searchBingImages(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextGiphySearchOffset:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/PhotoPickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->nextGiphySearchOffset:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoPickerActivity;->searchGiphyImages(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/messenger/MediaController$AlbumEntry;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->bingSearchEndReached:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PhotoPickerActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->bingSearchEndReached:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/PickerBottomLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphySearchEndReached:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoPickerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoPickerActivity;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/PhotoPickerActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/PhotoPickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/PhotoPickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoPickerActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 1075
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_0

    .line 1076
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1077
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoPickerActivity$12;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1088
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method private fixLayoutInternal()V
    .locals 8

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const/4 v7, 0x0

    .line 1091
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 1095
    .local v2, "position":I
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1096
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 1099
    .local v3, "rotation":I
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1100
    const/4 v0, 0x3

    .line 1108
    .local v0, "columnsCount":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanCount(I)V

    .line 1109
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1110
    const/high16 v4, 0x43f50000    # 490.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I

    .line 1115
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1116
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->scrollToPosition(I)V

    .line 1118
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v4, :cond_0

    .line 1119
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v7, v7, v7, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setPadding(IIII)V

    goto :goto_0

    .line 1102
    .end local v0    # "columnsCount":I
    :cond_2
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1103
    :cond_3
    const/4 v0, 0x5

    .restart local v0    # "columnsCount":I
    goto :goto_1

    .line 1105
    .end local v0    # "columnsCount":I
    :cond_4
    const/4 v0, 0x3

    .restart local v0    # "columnsCount":I
    goto :goto_1

    .line 1112
    :cond_5
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v0, 0x1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    iput v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->itemWidth:I

    goto :goto_2
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 496
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 498
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 499
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 500
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    if-eqz v6, :cond_0

    move-object v2, v5

    .line 501
    check-cast v2, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .line 502
    .local v2, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    iget-object v6, v2, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BackupImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 503
    .local v4, "num":I
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v6, :cond_1

    .line 504
    if-ltz v4, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_2

    .line 498
    .end local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .end local v4    # "num":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .restart local v4    # "num":I
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 510
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 514
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_1
    if-ltz v4, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 518
    .end local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :cond_2
    if-ne v4, p1, :cond_0

    .line 523
    .end local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .end local v4    # "num":I
    .end local v5    # "view":Landroid/view/View;
    :goto_2
    return-object v2

    .line 512
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .restart local v4    # "num":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_1

    .line 523
    .end local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .end local v4    # "num":I
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private searchBingImages(Ljava/lang/String;II)V
    .locals 11
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 856
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-eqz v4, :cond_1

    .line 857
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 858
    iget v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    if-eqz v4, :cond_0

    .line 859
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    invoke-virtual {v4, v7, v6}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 860
    iput v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    .line 862
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    if-eqz v4, :cond_1

    .line 863
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    invoke-virtual {v4, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 864
    iput-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    .line 868
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 871
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 872
    .local v2, "phone":Ljava/lang/String;
    const-string/jumbo v4, "44"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "49"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "43"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "31"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v0, v6

    .line 873
    .local v0, "adult":Z
    :goto_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "https://api.cognitive.microsoft.com/bing/v5.0/images/search?q=\'%s\'&offset=%d&count=%d&$format=json&safeSearch=%s"

    const/4 v4, 0x4

    new-array v9, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v10, "UTF-8"

    invoke-static {p1, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v10, 0x3

    if-eqz v0, :cond_4

    const-string/jumbo v4, "Strict"

    :goto_1
    aput-object v4, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 875
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Lorg/telegram/ui/PhotoPickerActivity$11;

    invoke-direct {v4, p0, v3}, Lorg/telegram/ui/PhotoPickerActivity$11;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    .line 1047
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Void;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1059
    .end local v0    # "adult":Z
    .end local v2    # "phone":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :goto_2
    return-void

    .restart local v2    # "phone":Ljava/lang/String;
    :cond_3
    move v0, v5

    .line 872
    goto :goto_0

    .line 873
    .restart local v0    # "adult":Z
    :cond_4
    const-string/jumbo v4, "Off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1048
    .end local v0    # "adult":Z
    .end local v2    # "phone":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1049
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1050
    iput-boolean v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->bingSearchEndReached:Z

    .line 1051
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 1052
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    iget-object v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyItemRemoved(I)V

    .line 1053
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v4, :cond_7

    .line 1054
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto :goto_2

    .line 1056
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_2
.end method

.method private searchGiphyImages(Ljava/lang/String;I)V
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 768
    iget-boolean v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-eqz v2, :cond_1

    .line 769
    iput-boolean v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 770
    iget v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    if-eqz v2, :cond_0

    .line 771
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 772
    iput v5, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    .line 774
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_1

    .line 775
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 776
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    .line 779
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    .line 780
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGifs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGifs;-><init>()V

    .line 781
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_searchGifs;
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGifs;->q:Ljava/lang/String;

    .line 782
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGifs;->offset:I

    .line 783
    iget v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchToken:I

    .line 784
    .local v1, "token":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/PhotoPickerActivity$10;

    invoke-direct {v3, p0, v1, p1}, Lorg/telegram/ui/PhotoPickerActivity$10;-><init>(Lorg/telegram/ui/PhotoPickerActivity;ILjava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    .line 852
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    iget v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->classGuid:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 853
    return-void
.end method

.method private sendSelectedPhotos()V
    .locals 2

    .prologue
    .line 1066
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPressed:Z

    if-eqz v0, :cond_2

    .line 1072
    :cond_1
    :goto_0
    return-void

    .line 1069
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->sendPressed:Z

    .line 1070
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->actionButtonPressed(Z)V

    .line 1071
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->finishFragment()V

    goto :goto_0
.end method

.method private updateSearchInterface()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 760
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searching:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 761
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 765
    :goto_0
    return-void

    .line 763
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_0
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->allowCaption:Z

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->actionButtonPressed(Z)V

    .line 714
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->finishFragment()V

    .line 715
    return v1
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x40800000    # 4.0f

    const/4 v9, 0x0

    const/4 v0, -0x1

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 168
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, -0xc2c2c3

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 170
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 171
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 172
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_7

    .line 173
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoPickerActivity$1;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 188
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_1

    .line 189
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v8

    .line 190
    .local v8, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v1, 0x7f0200c0

    invoke-virtual {v8, v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoPickerActivity$2;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 259
    .end local v8    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_2

    .line 260
    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-nez v1, :cond_9

    .line 261
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, "SearchImagesTitle"

    const v4, 0x7f070571

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 267
    :cond_2
    :goto_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->fragmentView:Landroid/view/View;

    .line 269
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->fragmentView:Landroid/view/View;

    check-cast v7, Landroid/widget/FrameLayout;

    .line 270
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v1, -0x1000000

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 272
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 274
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 275
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setHorizontalScrollBarEnabled(Z)V

    .line 276
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 278
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 279
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$3;

    const/4 v4, 0x4

    invoke-direct {v2, p0, p1, v4}, Lorg/telegram/ui/PhotoPickerActivity$3;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;I)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 285
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoPickerActivity$4;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 299
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    if-eqz v4, :cond_a

    move v6, v3

    :goto_2
    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;-><init>(Lorg/telegram/ui/PhotoPickerActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 301
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v2, -0xcccccd

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 302
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoPickerActivity$5;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 366
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_3

    .line 367
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoPickerActivity$6;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 393
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 394
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextColor(I)V

    .line 395
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setProgressBarColor(I)V

    .line 396
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 397
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_b

    .line 398
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v2, "NoPhotos"

    const v4, 0x7f0703e0

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 406
    :cond_4
    :goto_3
    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    if-eqz v4, :cond_d

    move v6, v3

    :goto_4
    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v1, :cond_5

    .line 409
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/PhotoPickerActivity$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoPickerActivity$7;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 434
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    .line 437
    :cond_5
    new-instance v1, Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    .line 438
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/16 v2, 0x30

    const/16 v3, 0x50

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoPickerActivity$8;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/PhotoPickerActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoPickerActivity$9;-><init>(Lorg/telegram/ui/PhotoPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->singlePhoto:Z

    if-eqz v0, :cond_6

    .line 453
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayout;->setVisibility(I)V

    .line 456
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v10}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 174
    .end local v7    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_7
    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-nez v1, :cond_8

    .line 175
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "SearchImagesTitle"

    const v4, 0x7f070571

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 176
    :cond_8
    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-ne v1, v10, :cond_0

    .line 177
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "SearchGifsTitle"

    const v4, 0x7f07056e

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 262
    :cond_9
    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-ne v1, v10, :cond_2

    .line 263
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, "SearchGifsTitle"

    const v4, 0x7f07056e

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 299
    .restart local v7    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_a
    const/high16 v6, 0x42400000    # 48.0f

    goto/16 :goto_2

    .line 400
    :cond_b
    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-nez v1, :cond_c

    .line 401
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v2, "NoRecentPhotos"

    const v4, 0x7f0703e5

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 402
    :cond_c
    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    if-ne v1, v10, :cond_4

    .line 403
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v2, "NoRecentGIFs"

    const v4, 0x7f0703e4

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 406
    :cond_d
    const/high16 v6, 0x42400000    # 48.0f

    goto/16 :goto_4
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 484
    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v0, :cond_1

    .line 485
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->removeSelfFromStack()V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    if-ne p1, v0, :cond_0

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 488
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 489
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z

    .line 490
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V

    goto :goto_0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 533
    invoke-direct {p0, p3}, Lorg/telegram/ui/PhotoPickerActivity;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    move-result-object v0

    .line 534
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    if-eqz v0, :cond_1

    .line 535
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 536
    .local v1, "coords":[I
    iget-object v4, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 537
    new-instance v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 538
    .local v2, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    aget v4, v1, v3

    iput v4, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 539
    const/4 v4, 0x1

    aget v4, v1, v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    :goto_0
    sub-int v3, v4, v3

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 540
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 541
    iget-object v3, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 542
    iget-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 543
    iget-object v3, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    .line 544
    iget-object v3, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 547
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :goto_1
    return-object v2

    .line 539
    .restart local v1    # "coords":[I
    .restart local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_0
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    .line 547
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSelectedCount()I
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 597
    invoke-direct {p0, p3}, Lorg/telegram/ui/PhotoPickerActivity;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    move-result-object v0

    .line 598
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    if-eqz v0, :cond_0

    .line 599
    iget-object v1, v0, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 601
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPhotoChecked(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 652
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v1, :cond_1

    .line 653
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 661
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 653
    goto :goto_0

    .line 656
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 661
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_1
    if-ltz p1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    move v1, v2

    goto :goto_0

    .line 659
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_1

    :cond_3
    move v2, v3

    .line 661
    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 477
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 478
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->fixLayout()V

    .line 479
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 140
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->type:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->loadWebRecent(I)V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->loadingRecent:Z

    .line 147
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 153
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->currentBingTask:Landroid/os/AsyncTask;

    .line 158
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    if-eqz v0, :cond_1

    .line 159
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->giphyReqId:I

    .line 162
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 163
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 464
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->listAdapter:Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoPickerActivity$ListAdapter;->notifyDataSetChanged()V

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->openSearch(Z)V

    .line 470
    invoke-virtual {p0}, Lorg/telegram/ui/PhotoPickerActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 472
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->fixLayout()V

    .line 473
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 751
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 754
    :cond_0
    return-void
.end method

.method public scaleToFill()Z
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 720
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v2, :cond_3

    .line 721
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 722
    if-ltz p1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 726
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoPickerActivity;->sendSelectedPhotos()V

    goto :goto_0

    .line 728
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 730
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 735
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_2
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 738
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 739
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 733
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_2
.end method

.method public setDelegate(Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    .prologue
    .line 1062
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    .line 1063
    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 667
    const/4 v1, 0x1

    .line 668
    .local v1, "add":Z
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v7, :cond_4

    .line 669
    if-ltz p1, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v7, v7, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v7, v7, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 673
    .local v5, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget v8, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 674
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget v8, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const/4 v1, 0x0

    .line 698
    .end local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 699
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 700
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 701
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 702
    .local v4, "num":I
    if-ne v4, p1, :cond_7

    .line 703
    check-cast v6, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .end local v6    # "view":Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->setChecked(ZZ)V

    .line 707
    .end local v4    # "num":I
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v8, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/PickerBottomLayout;->updateSelectedCount(IZ)V

    .line 708
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->delegate:Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    invoke-interface {v7}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->selectedPhotosChanged()V

    goto :goto_0

    .line 677
    .end local v0    # "a":I
    .end local v3    # "count":I
    .restart local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedPhotos:Ljava/util/HashMap;

    iget v8, v5, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 682
    .end local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 683
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 687
    .local v2, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_3
    if-ltz p1, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 690
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 691
    .local v5, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-object v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 692
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-object v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const/4 v1, 0x0

    goto :goto_1

    .line 685
    .end local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_3

    .line 695
    .restart local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedWebPhotos:Ljava/util/HashMap;

    iget-object v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 699
    .end local v2    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v5    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    .restart local v4    # "num":I
    .restart local v6    # "view":Landroid/view/View;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public updatePhotoAtIndex(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0201f0

    .line 552
    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoPickerActivity;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    move-result-object v1

    .line 553
    .local v1, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    if-eqz v1, :cond_0

    .line 554
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v3, :cond_4

    .line 555
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 556
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 557
    .local v2, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 558
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 588
    .end local v2    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_0
    :goto_0
    return-void

    .line 559
    .restart local v2    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_1
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 560
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    iget v4, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 561
    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v3, :cond_2

    .line 562
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vthumb://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 564
    :cond_2
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "thumb://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 567
    :cond_3
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_0

    .line 571
    .end local v2    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 576
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 577
    .local v2, "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v3, :cond_6

    .line 578
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 574
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    .end local v2    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_1

    .line 579
    .restart local v2    # "photoEntry":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_6
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 580
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 581
    :cond_7
    iget-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v2, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 582
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v4, v2, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v7, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 584
    :cond_8
    iget-object v3, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->photoImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public willHidePhotoViewer()V
    .locals 6

    .prologue
    .line 638
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 639
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 640
    iget-object v4, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 641
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 642
    check-cast v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .line 643
    .local v1, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    iget-object v4, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    iget-object v4, v1, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 639
    .end local v1    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 606
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 607
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 608
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 609
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 607
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v5

    .line 612
    check-cast v2, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;

    .line 613
    .local v2, "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 614
    .local v4, "num":I
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v6, :cond_4

    .line 615
    if-ltz v4, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->selectedAlbum:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 629
    :cond_2
    if-ne v4, p3, :cond_0

    .line 630
    iget-object v6, v2, Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;->checkBox:Lorg/telegram/ui/Components/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 634
    .end local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .end local v4    # "num":I
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void

    .line 620
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/PhotoPickerPhotoCell;
    .restart local v4    # "num":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/PhotoPickerActivity;->lastSearchString:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 621
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->recentImages:Ljava/util/ArrayList;

    .line 625
    .local v1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :goto_2
    if-ltz v4, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v4, v6, :cond_2

    goto :goto_1

    .line 623
    .end local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoPickerActivity;->searchResult:Ljava/util/ArrayList;

    .restart local v1    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    goto :goto_2
.end method
