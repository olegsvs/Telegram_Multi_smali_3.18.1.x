.class public Lorg/telegram/ui/LocationActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LocationActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;
    }
.end annotation


# static fields
.field private static final map_list_menu_hybrid:I = 0x4

.field private static final map_list_menu_map:I = 0x2

.field private static final map_list_menu_satellite:I = 0x3

.field private static final share:I = 0x1


# instance fields
.field private adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private bottomView:Landroid/widget/FrameLayout;

.field private checkPermission:Z

.field private circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

.field private delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

.field private distanceTextView:Landroid/widget/TextView;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private firstWas:Z

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private locationButton:Landroid/widget/ImageView;

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private mapViewClip:Landroid/widget/FrameLayout;

.field private mapsInitialized:Z

.field private markerImageView:Landroid/widget/ImageView;

.field private markerTop:I

.field private markerXImageView:Landroid/widget/ImageView;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private myLocation:Landroid/location/Location;

.field private nameTextView:Landroid/widget/TextView;

.field private onResumeCalled:Z

.field private overScrollHeight:I

.field private routeButton:Landroid/widget/ImageView;

.field private searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

.field private searchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private searchWas:Z

.field private searching:Z

.field private userLocation:Landroid/location/Location;

.field private userLocationMoved:Z

.field private wasResults:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    .line 130
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    .line 131
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->firstWas:Z

    .line 135
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x42840000    # 66.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    .line 142
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/LocationActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->fixLayoutInternal(Z)V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LocationActivity;)Lcom/google/android/gms/maps/MapView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LocationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->onMapInit()V

    return-void
.end method

.method static synthetic access$1302(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->onResumeCalled:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->showPermissionAlert(Z)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivityAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/LocationActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->updateClipView(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->searching:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searching:Z

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->wasResults:Z

    return v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->wasResults:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/LocationActivity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/LocationActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/LocationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->markerTop:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    return v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/LocationActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/LocationActivity;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->positionMarker(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/LocationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->updateUserData()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LocationActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LocationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/LocationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LocationActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    return-object v0
.end method

.method private fixLayoutInternal(Z)V
    .locals 7
    .param p1, "resume"    # Z

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/4 v4, 0x0

    .line 816
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_0

    .line 817
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    add-int v0, v3, v5

    .line 818
    .local v0, "height":I
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 819
    .local v2, "viewHeight":I
    if-nez v2, :cond_2

    .line 860
    .end local v0    # "height":I
    .end local v2    # "viewHeight":I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 817
    goto :goto_0

    .line 822
    .restart local v0    # "height":I
    .restart local v2    # "viewHeight":I
    :cond_2
    const/high16 v3, 0x42840000    # 66.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    sub-int/2addr v3, v0

    iput v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    .line 824
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 825
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 826
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 828
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 829
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 830
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 832
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 833
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget v5, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setOverScrollHeight(I)V

    .line 836
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/MapView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 837
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_4

    .line 838
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 839
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v3, :cond_3

    .line 840
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 842
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->notifyDataSetChanged()V

    .line 846
    if-eqz p1, :cond_5

    .line 847
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40200000    # 2.5f

    mul-float/2addr v5, v6

    const/high16 v6, 0x42cc0000    # 102.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 848
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/LocationActivity;->updateClipView(I)V

    .line 849
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/LocationActivity$20;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LocationActivity$20;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 857
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/LocationActivity;->updateClipView(I)V

    goto/16 :goto_1
.end method

.method private getLastLocation()Landroid/location/Location;
    .locals 6

    .prologue
    .line 863
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 864
    .local v2, "lm":Landroid/location/LocationManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    .line 865
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 866
    .local v1, "l":Landroid/location/Location;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 867
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 868
    if-eqz v1, :cond_1

    .line 872
    :cond_0
    return-object v1

    .line 866
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private onMapInit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 686
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v3, :cond_0

    .line 720
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    .line 691
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 693
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    const v5, 0x7f020135

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 698
    .local v2, "position":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 706
    .end local v1    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v2    # "position":Lcom/google/android/gms/maps/CameraUpdate;
    :goto_2
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 710
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 711
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 712
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 713
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v4, Lorg/telegram/ui/LocationActivity$18;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LocationActivity$18;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 719
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getLastLocation()Landroid/location/Location;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-direct {p0, v3}, Lorg/telegram/ui/LocationActivity;->positionMarker(Landroid/location/Location;)V

    goto :goto_0

    .line 694
    .restart local v1    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_1
    new-instance v3, Landroid/location/Location;

    const-string/jumbo v4, "network"

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 701
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    const-wide v4, 0x4034a8c9539b8887L    # 20.659322

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 702
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    const-wide v4, -0x3fd9300000000000L    # -11.40625

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_2

    .line 707
    :catch_1
    move-exception v0

    .line 708
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private positionMarker(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v8, 0x1

    .line 917
    if-nez p1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v3, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    .line 921
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_3

    .line 922
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 923
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {p1, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 924
    .local v0, "distance":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_2

    .line 925
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "%d %s"

    new-array v5, v5, [Ljava/lang/Object;

    float-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "MetersAway"

    const v7, 0x7f070392

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 927
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "%.2f %s"

    new-array v5, v5, [Ljava/lang/Object;

    div-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "KMetersAway"

    const v7, 0x7f070312

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 930
    .end local v0    # "distance":F
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v3, :cond_0

    .line 931
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 932
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v3, :cond_4

    .line 933
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->searchGooglePlacesWithQuery(Ljava/lang/String;Landroid/location/Location;)V

    .line 934
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setGpsLocation(Landroid/location/Location;)V

    .line 936
    :cond_4
    iget-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    if-nez v3, :cond_0

    .line 937
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 938
    iget-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->firstWas:Z

    if-eqz v3, :cond_5

    .line 939
    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 940
    .local v2, "position":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto/16 :goto_0

    .line 942
    .end local v2    # "position":Lcom/google/android/gms/maps/CameraUpdate;
    :cond_5
    iput-boolean v8, p0, Lorg/telegram/ui/LocationActivity;->firstWas:Z

    .line 943
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getMaxZoomLevel()F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    .line 944
    .restart local v2    # "position":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto/16 :goto_0
.end method

.method private showPermissionAlert(Z)V
    .locals 3
    .param p1, "byButton"    # Z

    .prologue
    .line 723
    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 751
    :goto_0
    return-void

    .line 726
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 727
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f070078

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 728
    if-eqz p1, :cond_1

    .line 729
    const-string/jumbo v1, "PermissionNoLocationPosition"

    const v2, 0x7f0704c6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 733
    :goto_1
    const-string/jumbo v1, "PermissionOpenSettings"

    const v2, 0x7f0704c7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LocationActivity$19;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LocationActivity$19;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 749
    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 750
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/LocationActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 731
    :cond_1
    const-string/jumbo v1, "PermissionNoLocation"

    const v2, 0x7f0704c5

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1
.end method

.method private updateClipView(I)V
    .locals 9
    .param p1, "firstVisibleItem"    # I

    .prologue
    const/4 v7, 0x4

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 774
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    const/4 v1, 0x0

    .line 778
    .local v1, "height":I
    const/4 v3, 0x0

    .line 779
    .local v3, "top":I
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 780
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 781
    if-nez p1, :cond_2

    .line 782
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 783
    iget v6, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    if-gez v3, :cond_5

    move v4, v3

    :goto_1
    add-int v1, v6, v4

    .line 785
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 786
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_0

    .line 787
    if-gtz v1, :cond_6

    .line 788
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/MapView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 789
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/maps/MapView;->setVisibility(I)V

    .line 790
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 799
    :cond_3
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 800
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    neg-int v6, v3

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/maps/MapView;->setTranslationY(F)V

    .line 801
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;

    neg-int v6, v3

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/LocationActivity;->markerTop:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 802
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    neg-int v6, v3

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 803
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/MapView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 804
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v6, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v6, v7

    if-eq v4, v6, :cond_0

    .line 805
    iget v4, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 806
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v4, :cond_4

    .line 807
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v5, v5, v6}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 809
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    move v4, v5

    .line 783
    goto/16 :goto_1

    .line 793
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/MapView;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 794
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/MapView;->setVisibility(I)V

    .line 795
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private updateSearchInterface()V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->notifyDataSetChanged()V

    .line 1035
    :cond_0
    return-void
.end method

.method private updateUserData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 876
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v5, :cond_3

    .line 877
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 878
    .local v1, "fromId":I
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 879
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    if-eqz v5, :cond_4

    .line 880
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    neg-int v1, v5

    .line 885
    :cond_0
    :goto_0
    const-string/jumbo v2, ""

    .line 886
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 887
    .local v3, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iput-object v7, p0, Lorg/telegram/ui/LocationActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 888
    if-lez v1, :cond_5

    .line 889
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 890
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_2

    .line 891
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_1

    .line 892
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 894
    :cond_1
    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    iput-object v5, p0, Lorg/telegram/ui/LocationActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 895
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 907
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    if-eqz v5, :cond_7

    .line 908
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v5, v3, v7, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 909
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    .end local v1    # "fromId":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_3
    :goto_2
    return-void

    .line 882
    .restart local v1    # "fromId":I
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v1, v5, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    goto :goto_0

    .line 898
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-int v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 899
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_2

    .line 900
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v5, :cond_6

    .line 901
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 903
    :cond_6
    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    iput-object v5, p0, Lorg/telegram/ui/LocationActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 904
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    .line 911
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 183
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 186
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/LocationActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$1;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v16

    .line 218
    .local v16, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_8

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 227
    :cond_1
    :goto_1
    const/4 v2, 0x1

    const v3, 0x7f020246

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 268
    :goto_2
    const/4 v2, 0x0

    const v3, 0x7f0200bd

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v14

    .line 269
    .local v14, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    const/4 v2, 0x2

    const-string/jumbo v3, "Map"

    const v4, 0x7f070366

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 270
    const/4 v2, 0x3

    const-string/jumbo v3, "Satellite"

    const v4, 0x7f070557

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 271
    const/4 v2, 0x4

    const-string/jumbo v3, "Hybrid"

    const v4, 0x7f0702e5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 272
    new-instance v2, Lorg/telegram/ui/LocationActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LocationActivity$3;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    check-cast v13, Landroid/widget/FrameLayout;

    .line 287
    .local v13, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    .line 288
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const-string/jumbo v3, "profile_actionBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "profile_actionPressedBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 289
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 291
    .local v18, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 292
    new-instance v11, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v12, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 293
    .local v11, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 294
    move-object v12, v11

    .line 296
    .end local v11    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v18    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    const v3, 0x7f0201ea

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "profile_actionIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 300
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 301
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    .line 302
    .local v9, "animator":Landroid/animation/StateListAnimator;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 303
    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$4;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 314
    .end local v9    # "animator":Landroid/animation/StateListAnimator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1e

    .line 315
    new-instance v2, Lcom/google/android/gms/maps/MapView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 316
    new-instance v2, Lorg/telegram/ui/Components/MapPlaceholderDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;-><init>()V

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 318
    .local v15, "map":Lcom/google/android/gms/maps/MapView;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/telegram/ui/LocationActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lorg/telegram/ui/LocationActivity$5;-><init>(Lorg/telegram/ui/LocationActivity;Lcom/google/android/gms/maps/MapView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 352
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 354
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->bottomView:Landroid/widget/FrameLayout;

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02012f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 356
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->bottomView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->bottomView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x3c

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->bottomView:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/LocationActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$6;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->bottomView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v20, v0

    const/16 v2, 0x28

    const/high16 v3, 0x42200000    # 40.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x5

    :goto_3
    or-int/lit8 v4, v4, 0x30

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    :goto_4
    const/high16 v6, 0x41400000    # 12.0f

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_b

    const/high16 v7, 0x41400000    # 12.0f

    :goto_5
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x5

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->bottomView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_d

    const/4 v4, 0x5

    :goto_7
    or-int/lit8 v4, v4, 0x30

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_e

    const/high16 v5, 0x41400000    # 12.0f

    :goto_8
    const/high16 v6, 0x41200000    # 10.0f

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_f

    const/high16 v7, 0x42900000    # 72.0f

    :goto_9
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteValueText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x5

    :goto_a
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->bottomView:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_11

    const/4 v4, 0x5

    :goto_b
    or-int/lit8 v4, v4, 0x30

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_12

    const/high16 v5, 0x41400000    # 12.0f

    :goto_c
    const/high16 v6, 0x42040000    # 33.0f

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_13

    const/high16 v7, 0x42900000    # 72.0f

    :goto_d
    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    new-instance v2, Landroid/location/Location;

    const-string/jumbo v3, "network"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 399
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    .line 400
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const-string/jumbo v3, "chats_actionBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "chats_actionPressedBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 401
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_4

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 403
    .restart local v18    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 404
    new-instance v11, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v12, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 405
    .restart local v11    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 406
    move-object v12, v11

    .line 408
    .end local v11    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v18    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "chats_actionIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    const v3, 0x7f0201eb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 412
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_5

    .line 413
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    .line 414
    .restart local v9    # "animator":Landroid/animation/StateListAnimator;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 415
    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationZ"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$7;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 425
    .end local v9    # "animator":Landroid/animation/StateListAnimator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_14

    const/16 v2, 0x38

    :goto_e
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_15

    const/high16 v3, 0x42600000    # 56.0f

    :goto_f
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x3

    :goto_10
    or-int/lit8 v4, v4, 0x50

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_17

    const/high16 v5, 0x41600000    # 14.0f

    :goto_11
    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_18

    const/4 v7, 0x0

    :goto_12
    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$8;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_19

    const/16 v2, 0x38

    :goto_13
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1a

    const/high16 v3, 0x42600000    # 56.0f

    :goto_14
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_1b

    const/4 v4, 0x3

    :goto_15
    or-int/lit8 v4, v4, 0x50

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1c

    const/high16 v5, 0x41600000    # 14.0f

    :goto_16
    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1d

    const/4 v7, 0x0

    :goto_17
    const/high16 v8, 0x42c80000    # 100.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$9;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    .end local v10    # "background":Landroid/graphics/drawable/Drawable;
    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 186
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v14    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .end local v15    # "map":Lcom/google/android/gms/maps/MapView;
    .end local v16    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 225
    .restart local v16    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "ChatLocation"

    const v4, 0x7f070164

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 229
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "ShareLocation"

    const v4, 0x7f0705bf

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v2, 0x0

    const v3, 0x7f0200c0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LocationActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$2;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v14

    .line 265
    .restart local v14    # "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v2

    const-string/jumbo v3, "Search"

    const v4, 0x7f07056c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 374
    .restart local v10    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "frameLayout":Landroid/widget/FrameLayout;
    .restart local v15    # "map":Lcom/google/android/gms/maps/MapView;
    :cond_9
    const/4 v4, 0x3

    goto/16 :goto_3

    :cond_a
    const/high16 v5, 0x41400000    # 12.0f

    goto/16 :goto_4

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 383
    :cond_c
    const/4 v2, 0x3

    goto/16 :goto_6

    .line 384
    :cond_d
    const/4 v4, 0x3

    goto/16 :goto_7

    :cond_e
    const/high16 v5, 0x42900000    # 72.0f

    goto/16 :goto_8

    :cond_f
    const/high16 v7, 0x41400000    # 12.0f

    goto/16 :goto_9

    .line 392
    :cond_10
    const/4 v2, 0x3

    goto/16 :goto_a

    .line 393
    :cond_11
    const/4 v4, 0x3

    goto/16 :goto_b

    :cond_12
    const/high16 v5, 0x42900000    # 72.0f

    goto/16 :goto_c

    :cond_13
    const/high16 v7, 0x41400000    # 12.0f

    goto/16 :goto_d

    .line 425
    :cond_14
    const/16 v2, 0x3c

    goto/16 :goto_e

    :cond_15
    const/high16 v3, 0x42700000    # 60.0f

    goto/16 :goto_f

    :cond_16
    const/4 v4, 0x5

    goto/16 :goto_10

    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_11

    :cond_18
    const/high16 v7, 0x41600000    # 14.0f

    goto/16 :goto_12

    .line 449
    :cond_19
    const/16 v2, 0x3c

    goto/16 :goto_13

    :cond_1a
    const/high16 v3, 0x42700000    # 60.0f

    goto/16 :goto_14

    :cond_1b
    const/4 v4, 0x5

    goto/16 :goto_15

    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_16

    :cond_1d
    const/high16 v7, 0x41600000    # 14.0f

    goto/16 :goto_17

    .line 468
    .end local v10    # "background":Landroid/graphics/drawable/Drawable;
    .end local v15    # "map":Lcom/google/android/gms/maps/MapView;
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    .line 469
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LocationActivity;->searching:Z

    .line 470
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/Components/MapPlaceholderDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v2, :cond_1f

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->destroy()V

    .line 475
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    if-eqz v2, :cond_20

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->destroy()V

    .line 479
    :cond_20
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/LocationActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$10;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$11;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    new-instance v3, Lorg/telegram/ui/LocationActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$12;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setDelegate(Lorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setOverScrollHeight(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    new-instance v2, Lorg/telegram/ui/LocationActivity$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/LocationActivity$13;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 572
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 573
    .restart local v15    # "map":Lcom/google/android/gms/maps/MapView;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/telegram/ui/LocationActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lorg/telegram/ui/LocationActivity$14;-><init>(Lorg/telegram/ui/LocationActivity;Lcom/google/android/gms/maps/MapView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 607
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 609
    new-instance v17, Landroid/view/View;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 610
    .local v17, "shadow":Landroid/view/View;
    const v2, 0x7f0200b2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;

    const v3, 0x7f020135

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/widget/ImageView;

    const/16 v4, 0x18

    const/16 v5, 0x2a

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "location_markerX"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    const v3, 0x7f020228

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/16 v6, 0x31

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_21

    const/16 v2, 0x38

    :goto_19
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_22

    const/high16 v3, 0x42600000    # 56.0f

    :goto_1a
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_23

    const/4 v4, 0x3

    :goto_1b
    or-int/lit8 v4, v4, 0x50

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_24

    const/high16 v5, 0x41600000    # 14.0f

    :goto_1c
    const/4 v6, 0x0

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_25

    const/4 v7, 0x0

    :goto_1d
    const/high16 v8, 0x41600000    # 14.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$15;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 649
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v3, "NoResult"

    const v4, 0x7f0703e6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$16;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/LocationActivity$17;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_18

    .line 623
    :cond_21
    const/16 v2, 0x3c

    goto/16 :goto_19

    :cond_22
    const/high16 v3, 0x42700000    # 60.0f

    goto/16 :goto_1a

    :cond_23
    const/4 v4, 0x5

    goto/16 :goto_1b

    :cond_24
    const/4 v5, 0x0

    goto/16 :goto_1c

    :cond_25
    const/high16 v7, 0x41600000    # 14.0f

    goto/16 :goto_1d
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 956
    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v2, :cond_2

    .line 957
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 958
    .local v1, "mask":I
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    .line 959
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->updateUserData()V

    .line 972
    .end local v1    # "mask":I
    :cond_1
    :goto_0
    return-void

    .line 961
    :cond_2
    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v2, :cond_3

    .line 962
    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->removeSelfFromStack()V

    goto :goto_0

    .line 963
    :cond_3
    sget v2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    if-ne p1, v2, :cond_1

    .line 964
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_1

    .line 966
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 1039
    new-instance v9, Lorg/telegram/ui/LocationActivity$21;

    invoke-direct {v9, p0}, Lorg/telegram/ui/LocationActivity$21;-><init>(Lorg/telegram/ui/LocationActivity;)V

    .line 1045
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x31

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSearch"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSearchPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_actionIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_actionBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_actionPressedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->bottomView:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->nameTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->distanceTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_actionIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_actionBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->routeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_actionPressedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->markerXImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "location_markerX"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const-string/jumbo v7, "avatar_text"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "location_sendLocationIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "location_sendLocationBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "titleTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueText7"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "accurateTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "addressTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "nameTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "addressTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationLoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "progressBar"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "progressCircle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationLoadingCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationPoweredCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x2f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationPoweredCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "imageView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x30

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LocationPoweredCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView2"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    return-object v10
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->swipeBackEnabled:Z

    .line 150
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 151
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 155
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 161
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 162
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 163
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 165
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->destroy()V

    .line 174
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->destroy()V

    .line 177
    :cond_2
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1021
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onLowMemory()V

    .line 1022
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onLowMemory()V

    .line 1025
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 976
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 977
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    if-eqz v1, :cond_0

    .line 979
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->onResumeCalled:Z

    .line 985
    return-void

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 989
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 990
    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/LocationActivity;->classGuid:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 991
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    if-eqz v2, :cond_0

    .line 993
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/LocationActivity;->onResumeCalled:Z

    .line 999
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v2, :cond_1

    .line 1001
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1006
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->updateUserData()V

    .line 1007
    invoke-direct {p0, v4}, Lorg/telegram/ui/LocationActivity;->fixLayoutInternal(Z)V

    .line 1008
    iget-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 1009
    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1010
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 1011
    iput-boolean v5, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    .line 1012
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1013
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v2, v5

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v2, v4

    invoke-virtual {v0, v2, v6}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1017
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    return-void

    .line 994
    :catch_0
    move-exception v1

    .line 995
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1002
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1003
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 9
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/16 v8, 0x33

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 755
    if-eqz p1, :cond_1

    .line 757
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 758
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 759
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    .line 765
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    iget v4, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v6, v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/LocationActivity;->updateClipView(I)V

    .line 771
    :cond_1
    :goto_1
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 767
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 768
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->fragmentView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-static {v6, v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    .prologue
    .line 1028
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    .line 1029
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p1, "message"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 951
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 952
    return-void
.end method
