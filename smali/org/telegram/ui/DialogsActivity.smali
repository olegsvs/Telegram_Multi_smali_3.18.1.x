.class public Lorg/telegram/ui/DialogsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;,
        Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;
    }
.end annotation


# static fields
.field public static dialogsLoaded:Z


# instance fields
.field private addToGroupAlertString:Ljava/lang/String;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private cantSendToChannels:Z

.field private chat_id:I

.field private checkPermission:Z

.field private delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

.field private dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

.field private dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field private dialogsType:I

.field private emptyTextView1:Landroid/widget/TextView;

.field private emptyTextView2:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private floatingButton:Landroid/widget/ImageView;

.field private floatingHidden:Z

.field private final floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private newTabsView:Lorg/telegram/ui/Components/TabsView;

.field private onTouchListener:Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;

.field private onlySelect:Z

.field private openedDialogId:J

.field private passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private prevPosition:I

.field private prevTop:I

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private scrollUpdated:Z

.field private searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private searchString:Ljava/lang/String;

.field private searchWas:Z

.field private searching:Z

.field private selectAlertString:Ljava/lang/String;

.field private selectAlertStringGroup:Ljava/lang/String;

.field private selectedDialog:J

.field private sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

.field private tabsHidden:Z

.field private touchPositionDP:F

.field private updateTabCounters:Z

.field private user_id:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 134
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->checkPermission:Z

    .line 156
    iput v1, p0, Lorg/telegram/ui/DialogsActivity;->user_id:I

    .line 157
    iput v1, p0, Lorg/telegram/ui/DialogsActivity;->chat_id:I

    .line 159
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity;->updateTabCounters:Z

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->onTouchListener:Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->refreshTabAndListViews(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/DialogsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/DialogsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/DialogsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->hideFloatingButton(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/DialogsActivity;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->touchPositionDP:F

    return v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/DialogsActivity;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # F

    .prologue
    .line 111
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->touchPositionDP:F

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DialogsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->user_id:I

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/DialogsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->user_id:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DialogsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/DialogsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->chat_id:I

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DialogsActivity;JZZ)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DialogsActivity;->didSelectResult(JZZ)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DialogsActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    return-wide v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/DialogsActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    return-wide p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/DialogsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    return-void
.end method

.method static synthetic access$2700(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/DialogsActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-wide v0, p0, Lorg/telegram/ui/DialogsActivity;->selectedDialog:J

    return-wide v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/DialogsActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 111
    iput-wide p1, p0, Lorg/telegram/ui/DialogsActivity;->selectedDialog:J

    return-wide p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/TabsView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/DialogsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->updateTabCounters:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/DialogsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/DialogsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updateTabs()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->markDialogAsUnread()V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->markAsReadDialog(Z)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->addShortcut()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->refreshAdapterAndTabs()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->neeLoadMoreChats()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/DialogsActivity;III)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity;->showAllTabLongClick(III)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/DialogsActivity;III)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity;->showTabLongClick(III)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/DialogsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->prevPosition:I

    return v0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/DialogsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->prevPosition:I

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/DialogsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->prevTop:I

    return v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/DialogsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/telegram/ui/DialogsActivity;->prevTop:I

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z

    return v0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/DialogsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->hideTabsAnimated(Z)V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/DialogsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->updateSortValue(I)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/DialogsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;->updateDefault(I)V

    return-void
.end method

.method static synthetic access$4900(Lorg/telegram/ui/DialogsActivity;Landroid/content/SharedPreferences;J)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;
    .param p1, "x1"    # Landroid/content/SharedPreferences;
    .param p2, "x2"    # J

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity;->resetUnread(Landroid/content/SharedPreferences;J)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RadialProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->tabsHidden:Z

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/DialogsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V

    return-void
.end method

.method private addShortcut()V
    .locals 13

    .prologue
    const/16 v12, 0x20

    .line 1520
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v10, p0, Lorg/telegram/ui/DialogsActivity;->selectedDialog:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1522
    .local v0, "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    const-wide/16 v4, 0x0

    .line 1523
    .local v4, "did":J
    :try_start_0
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 1525
    .local v2, "dialog_id":J
    long-to-int v8, v2

    .line 1526
    .local v8, "lower_id":I
    shr-long v10, v2, v12

    long-to-int v7, v10

    .line 1527
    .local v7, "high_id":I
    if-eqz v8, :cond_2

    .line 1528
    int-to-long v4, v8

    .line 1536
    :cond_0
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_1

    .line 1537
    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->installShortcut(J)V

    .line 1542
    .end local v2    # "dialog_id":J
    .end local v7    # "high_id":I
    .end local v8    # "lower_id":I
    :cond_1
    :goto_1
    return-void

    .line 1530
    .restart local v2    # "dialog_id":J
    .restart local v7    # "high_id":I
    .restart local v8    # "lower_id":I
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    .line 1531
    .local v6, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v6, :cond_0

    .line 1532
    iget v9, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v10, v9

    shl-long v4, v10, v12

    goto :goto_0

    .line 1539
    .end local v2    # "dialog_id":J
    .end local v6    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v7    # "high_id":I
    .end local v8    # "lower_id":I
    :catch_0
    move-exception v1

    .line 1540
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private askForPermissons()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1637
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1638
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1653
    :goto_0
    return-void

    .line 1641
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1642
    .local v2, "permissons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1643
    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1644
    const-string/jumbo v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    const-string/jumbo v3, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    :cond_1
    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1648
    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1652
    .local v1, "items":[Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkEmptyView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2378
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 2379
    .local v0, "dialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2380
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 2381
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2382
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 2383
    iget v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    const-string/jumbo v2, "NoChats"

    const v3, 0x7f0703d0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2384
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatsNameColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2386
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2389
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsRowColor:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 2391
    :cond_2
    return-void

    .line 2383
    .restart local v1    # "tv":Landroid/widget/TextView;
    :cond_3
    iget v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-ne v2, v6, :cond_4

    const-string/jumbo v2, "NoFavoritesHelp"

    const v3, 0x7f0703d3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/DialogsActivity;->getTitle(IZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private didSelectResult(JZZ)V
    .locals 9
    .param p1, "dialog_id"    # J
    .param p3, "useAlert"    # Z
    .param p4, "param"    # Z

    .prologue
    .line 2024
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 2025
    long-to-int v5, p1

    if-gez v5, :cond_2

    .line 2026
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    long-to-int v6, p1

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2027
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lorg/telegram/ui/DialogsActivity;->cantSendToChannels:Z

    if-nez v5, :cond_0

    long-to-int v5, p1

    neg-int v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isCanWriteToChannel(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2028
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2029
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v5, "AppName"

    const v6, 0x7f070078

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2030
    const-string/jumbo v5, "ChannelCantSendMessage"

    const v6, 0x7f070115

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2031
    const-string/jumbo v5, "OK"

    const v6, 0x7f070452

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2032
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2096
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    :goto_0
    return-void

    .line 2037
    :cond_2
    if-eqz p3, :cond_a

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 2038
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2041
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2042
    .restart local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v5, "AppName"

    const v6, 0x7f070078

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2043
    long-to-int v3, p1

    .line 2044
    .local v3, "lower_part":I
    const/16 v5, 0x20

    shr-long v6, p1, v5

    long-to-int v2, v6

    .line 2045
    .local v2, "high_id":I
    if-eqz v3, :cond_9

    .line 2046
    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 2047
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2048
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_1

    .line 2051
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2080
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    :goto_1
    const-string/jumbo v5, "OK"

    const v6, 0x7f070452

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/DialogsActivity$16;

    invoke-direct {v6, p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$16;-><init>(Lorg/telegram/ui/DialogsActivity;J)V

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2086
    const-string/jumbo v5, "Cancel"

    const v6, 0x7f0700f0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2087
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 2053
    :cond_6
    if-lez v3, :cond_7

    .line 2054
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 2055
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_1

    .line 2058
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 2059
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_7
    if-gez v3, :cond_5

    .line 2060
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-int v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2061
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_1

    .line 2064
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 2065
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 2067
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_1

    .line 2072
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 2073
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 2074
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_1

    .line 2077
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatStringSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_1

    .line 2089
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v2    # "high_id":I
    .end local v3    # "lower_part":I
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    if-eqz v5, :cond_b

    .line 2090
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    invoke-interface {v5, p0, p1, p2, p4}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;->didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V

    .line 2091
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    goto/16 :goto_0

    .line 2093
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_0
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1851
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 1854
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHeaderTitle()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2259
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "theme"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2260
    .local v0, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "chatsHeaderTitle"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2261
    .local v3, "value":I
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "AppNameBeta"

    const v5, 0x7f070738

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2262
    .local v1, "title":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 2263
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2264
    const-string/jumbo v4, "ShortAppName"

    const v5, 0x7f07073a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2276
    :cond_0
    :goto_1
    return-object v1

    .line 2261
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    const-string/jumbo v4, "AppName"

    const v5, 0x7f070078

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2265
    .restart local v1    # "title":Ljava/lang/String;
    .restart local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 2266
    if-eqz v2, :cond_0

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2267
    :cond_3
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2269
    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 2270
    if-eqz v2, :cond_0

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2273
    :cond_5
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 2274
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method private getTitle(IZ)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I
    .param p2, "all"    # Z

    .prologue
    .line 2280
    packed-switch p1, :pswitch_data_0

    .line 2295
    if-eqz p2, :cond_0

    const-string/jumbo v0, "All"

    const v1, 0x7f07005d

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2282
    :pswitch_0
    const-string/jumbo v0, "Users"

    const v1, 0x7f070667

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2285
    :pswitch_1
    const-string/jumbo v0, "Groups"

    const v1, 0x7f0702b4

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2287
    :pswitch_2
    const-string/jumbo v0, "Channels"

    const v1, 0x7f07015c

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2289
    :pswitch_3
    const-string/jumbo v0, "Bots"

    const v1, 0x7f0700d7

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2291
    :pswitch_4
    const-string/jumbo v0, "SuperGroups"

    const v1, 0x7f07060c

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2293
    :pswitch_5
    const-string/jumbo v0, "Favorites"

    const v1, 0x7f070245

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2295
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2280
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method private hideFloatingButton(Z)V
    .locals 7
    .param p1, "hide"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1917
    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    if-ne v1, p1, :cond_0

    .line 1925
    :goto_0
    return-void

    .line 1920
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    .line 1921
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const-string/jumbo v5, "translationY"

    new-array v6, v2, [F

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingHidden:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x43160000    # 150.0f

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    :goto_2
    aput v1, v6, v3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1922
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1923
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1924
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 1921
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_1
    const/high16 v1, 0x42c80000    # 100.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_3
    move v1, v3

    .line 1923
    goto :goto_3
.end method

.method private hideTabsAnimated(Z)V
    .locals 8
    .param p1, "hide"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 2439
    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity;->tabsHidden:Z

    if-ne v2, p1, :cond_0

    .line 2453
    :goto_0
    return-void

    .line 2442
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity;->tabsHidden:Z

    .line 2443
    if-eqz p1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v7, v7, v7, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 2445
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    const-string/jumbo v3, "translationY"

    new-array v4, v1, [F

    if-eqz p1, :cond_3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    int-to-float v5, v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v6, :cond_2

    const/4 v1, -0x1

    :cond_2
    mul-int/2addr v1, v5

    int-to-float v1, v1

    :goto_1
    aput v1, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2446
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v1, Lorg/telegram/ui/DialogsActivity$18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$18;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2452
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 2445
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private markAsReadDialog(Z)V
    .locals 8
    .param p1, "all"    # Z

    .prologue
    .line 1478
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1479
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v6, p0, Lorg/telegram/ui/DialogsActivity;->selectedDialog:J

    neg-long v6, v6

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1480
    .local v1, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v6, p0, Lorg/telegram/ui/DialogsActivity;->selectedDialog:J

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1481
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1482
    .local v2, "title":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    iget v4, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/DialogsActivity;->getTitle(IZ)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string/jumbo v4, "MarkAllAsRead"

    const v6, 0x7f070367

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "AreYouSure"

    const v6, 0x7f070089

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1484
    const-string/jumbo v4, "OK"

    const v5, 0x7f070452

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$14;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/DialogsActivity$14;-><init>(Lorg/telegram/ui/DialogsActivity;Z)V

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1515
    const-string/jumbo v4, "Cancel"

    const v5, 0x7f0700f0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1516
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1517
    return-void

    .line 1481
    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "AppName"

    const v5, 0x7f070078

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1483
    :cond_3
    const-string/jumbo v4, "MarkAsRead"

    const v6, 0x7f070368

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private markDialogAsUnread()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1459
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p0, Lorg/telegram/ui/DialogsActivity;->selectedDialog:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .line 1460
    .local v0, "dialg":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-nez v3, :cond_0

    .line 1461
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "plusconfig"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1462
    .local v2, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1463
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unread_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1464
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1465
    invoke-direct {p0, v6}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    .line 1467
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private neeLoadMoreChats()V
    .locals 8

    .prologue
    .line 2425
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 2426
    .local v0, "firstVisibleItem":I
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 2427
    .local v1, "lastVisibleItem":I
    sub-int v4, v1, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 2428
    .local v3, "visibleItemCount":I
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 2430
    .local v2, "totalItemCount":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v4, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-nez v4, :cond_0

    if-lez v1, :cond_0

    if-ne v2, v3, :cond_0

    .line 2432
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusChatsToLoad:I

    const/16 v5, 0x1388

    if-ge v4, v5, :cond_0

    .line 2433
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/4 v5, -0x1

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->plusChatsToLoad:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 2436
    :cond_0
    return-void
.end method

.method private paintHeader(Z)V
    .locals 10
    .param p1, "tabs"    # Z

    .prologue
    const/4 v9, 0x0

    .line 2300
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "theme"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2301
    .local v4, "themePrefs":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v7, "chatsHeaderTitleColor"

    const/4 v8, -0x1

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 2303
    if-nez p1, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 2304
    :cond_0
    if-eqz p1, :cond_1

    .line 2305
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsBGColor:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    if-ne v6, v8, :cond_4

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    :goto_0
    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/TabsView;->setBackgroundColor(I)V

    .line 2307
    :cond_1
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderGradient:I

    .line 2308
    .local v5, "val":I
    if-lez v5, :cond_3

    .line 2310
    packed-switch v5, :pswitch_data_0

    .line 2321
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2323
    .local v2, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_1
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderGradientColor:I

    .line 2324
    .local v3, "gradColor":I
    const/4 v6, 0x2

    new-array v0, v6, [I

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    aput v6, v0, v9

    const/4 v6, 0x1

    aput v3, v0, v6

    .line 2325
    .local v0, "colors":[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 2326
    .local v1, "gd":Landroid/graphics/drawable/GradientDrawable;
    if-nez p1, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2327
    :cond_2
    if-eqz p1, :cond_3

    .line 2328
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsBGColor:I

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/TabsView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2331
    .end local v0    # "colors":[I
    .end local v1    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v3    # "gradColor":I
    :cond_3
    return-void

    .line 2305
    .end local v5    # "val":I
    :cond_4
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->chatsTabsBGColor:I

    goto :goto_0

    .line 2312
    .restart local v5    # "val":I
    :pswitch_0
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2313
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_1

    .line 2315
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2316
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_1

    .line 2318
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2319
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_1

    .line 2310
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshAdapterAndTabs()V
    .locals 2

    .prologue
    .line 2365
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v0, :cond_0

    .line 2366
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsType(I)V

    .line 2367
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 2369
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->refreshTabs()V

    .line 2370
    return-void
.end method

.method private refreshTabAndListViews(Z)V
    .locals 6
    .param p1, "forceHide"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2405
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    if-eqz v2, :cond_1

    .line 2406
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    .line 2407
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TabsView;->setVisibility(I)V

    .line 2408
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3, v3, v3, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 2421
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->scrollToPosition(I)V

    .line 2422
    return-void

    .line 2410
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/TabsView;->setVisibility(I)V

    .line 2411
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 2412
    .local v0, "h":I
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TabsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2413
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_3

    .line 2414
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2415
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/TabsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2417
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v5, :cond_5

    .end local v0    # "h":I
    :goto_2
    invoke-virtual {v4, v3, v2, v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 2418
    invoke-direct {p0, v3}, Lorg/telegram/ui/DialogsActivity;->hideTabsAnimated(Z)V

    goto :goto_0

    .restart local v0    # "h":I
    :cond_4
    move v2, v0

    .line 2417
    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method private refreshTabs()V
    .locals 3

    .prologue
    .line 2373
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2374
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/DialogsActivity;->paintHeader(Z)V

    .line 2375
    :cond_0
    return-void

    .line 2373
    :cond_1
    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/DialogsActivity;->getTitle(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private resetUnread(Landroid/content/SharedPreferences;J)V
    .locals 4
    .param p1, "plusPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "uid"    # J

    .prologue
    .line 1471
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1472
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unread_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1473
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1474
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    .line 1475
    return-void
.end method

.method private showAllTabLongClick(III)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "sort"    # I

    .prologue
    .line 1349
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1350
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/DialogsActivity;->getTitle(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1352
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v2, "SortTabs"

    const v3, 0x7f0705f6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1353
    if-nez p3, :cond_0

    const-string/jumbo v2, "SortByUnreadCount"

    const v3, 0x7f0705f3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->plusDefaultTab:I

    if-ne v2, p1, :cond_1

    const-string/jumbo v2, "ResetDefaultTab"

    const v3, 0x7f07052a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1355
    const-string/jumbo v2, "MarkAllAsRead"

    const v3, 0x7f070367

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1356
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$12;

    invoke-direct {v3, p0, p2, p1}, Lorg/telegram/ui/DialogsActivity$12;-><init>(Lorg/telegram/ui/DialogsActivity;II)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1370
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1371
    return-void

    .line 1353
    :cond_0
    const-string/jumbo v2, "SortByLastMessage"

    const v3, 0x7f0705f1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1354
    :cond_1
    const-string/jumbo v2, "SetAsDefaultTab"

    const v3, 0x7f0705b3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private showTabLongClick(III)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "sort"    # I

    .prologue
    .line 1374
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1375
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lorg/telegram/ui/DialogsActivity;->getTitle(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const-string/jumbo v2, "SortTabs"

    const v3, 0x7f0705f6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    if-nez p3, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    const-string/jumbo v2, "SortByStatus"

    const v3, 0x7f0705f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1379
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->plusDefaultTab:I

    if-ne v2, p1, :cond_2

    const-string/jumbo v2, "ResetDefaultTab"

    const v3, 0x7f07052a

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    const-string/jumbo v2, "MarkAllAsRead"

    const v3, 0x7f070367

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1382
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lorg/telegram/ui/DialogsActivity$13;

    invoke-direct {v3, p0, p2, p1}, Lorg/telegram/ui/DialogsActivity$13;-><init>(Lorg/telegram/ui/DialogsActivity;II)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1396
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1397
    return-void

    .line 1378
    :cond_0
    const-string/jumbo v2, "SortByUnreadCount"

    const v3, 0x7f0705f3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "SortByLastMessage"

    const v3, 0x7f0705f1

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1379
    :cond_2
    const-string/jumbo v2, "SetAsDefaultTab"

    const v3, 0x7f0705b3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private unreadCount()V
    .locals 3

    .prologue
    .line 1979
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabsCounters:Z

    if-nez v0, :cond_0

    .line 1980
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->refreshTabsCounters:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1982
    :cond_0
    return-void
.end method

.method private updateDefault(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 1452
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->plusDefaultTab:I

    if-ne v2, p1, :cond_0

    const/4 p1, -0x1

    .end local p1    # "position":I
    :cond_0
    sput p1, Lorg/telegram/ui/ActionBar/Theme;->plusDefaultTab:I

    .line 1453
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "plusconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1454
    .local v1, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1455
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "defaultTab"

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->plusDefaultTab:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1456
    return-void
.end method

.method private updatePasscodeButton()V
    .locals 2

    .prologue
    .line 1889
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    .line 1914
    :goto_0
    return-void

    .line 1892
    :cond_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    if-nez v0, :cond_2

    .line 1893
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 1894
    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v0, :cond_1

    .line 1896
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_0

    .line 1904
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_0

    .line 1912
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSortValue(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1400
    const-string/jumbo v3, ""

    .line 1401
    .local v3, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1402
    .local v1, "i":I
    packed-switch p1, :pswitch_data_0

    .line 1441
    :goto_0
    :pswitch_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1442
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "plusconfig"

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1443
    .local v2, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1444
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1446
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 1447
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 1449
    :cond_1
    return-void

    .line 1404
    :pswitch_1
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortAll:I

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortAll:I

    .line 1405
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusSortAll:I

    .line 1406
    const-string/jumbo v3, "sortAll"

    .line 1407
    goto :goto_0

    :cond_2
    move v4, v6

    .line 1404
    goto :goto_1

    .line 1409
    :pswitch_2
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortUsers:I

    if-nez v4, :cond_3

    move v4, v5

    :goto_2
    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortUsers:I

    .line 1410
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusSortUsers:I

    .line 1411
    const-string/jumbo v3, "sortUsers"

    .line 1412
    goto :goto_0

    :cond_3
    move v4, v6

    .line 1409
    goto :goto_2

    .line 1415
    :pswitch_3
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortGroups:I

    if-nez v4, :cond_4

    move v4, v5

    :goto_3
    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortGroups:I

    .line 1416
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusSortGroups:I

    .line 1417
    const-string/jumbo v3, "sortGroups"

    .line 1418
    goto :goto_0

    :cond_4
    move v4, v6

    .line 1415
    goto :goto_3

    .line 1420
    :pswitch_4
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortChannels:I

    if-nez v4, :cond_5

    move v4, v5

    :goto_4
    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortChannels:I

    .line 1421
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusSortChannels:I

    .line 1422
    const-string/jumbo v3, "sortChannels"

    .line 1423
    goto :goto_0

    :cond_5
    move v4, v6

    .line 1420
    goto :goto_4

    .line 1425
    :pswitch_5
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortBots:I

    if-nez v4, :cond_6

    move v4, v5

    :goto_5
    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortBots:I

    .line 1426
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusSortBots:I

    .line 1427
    const-string/jumbo v3, "sortBots"

    .line 1428
    goto :goto_0

    :cond_6
    move v4, v6

    .line 1425
    goto :goto_5

    .line 1430
    :pswitch_6
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortSuperGroups:I

    if-nez v4, :cond_7

    move v4, v5

    :goto_6
    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortSuperGroups:I

    .line 1431
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusSortSuperGroups:I

    .line 1432
    const-string/jumbo v3, "sortSGroups"

    .line 1433
    goto/16 :goto_0

    :cond_7
    move v4, v6

    .line 1430
    goto :goto_6

    .line 1435
    :pswitch_7
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortFavs:I

    if-nez v4, :cond_8

    move v4, v5

    :goto_7
    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusSortFavs:I

    .line 1436
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusSortFavs:I

    .line 1437
    const-string/jumbo v3, "sortFavs"

    goto/16 :goto_0

    :cond_8
    move v4, v6

    .line 1435
    goto :goto_7

    .line 1402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method private updateTabs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2394
    invoke-direct {p0, v2}, Lorg/telegram/ui/DialogsActivity;->refreshTabAndListViews(Z)V

    .line 2395
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2396
    iput v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    sput v2, Lorg/telegram/ui/ActionBar/Theme;->plusDialogType:I

    .line 2397
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v0, :cond_0

    .line 2398
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setDialogsType(I)V

    .line 2400
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->refreshAdapterAndTabs()V

    .line 2402
    :cond_1
    return-void
.end method

.method private updateTheme()V
    .locals 9

    .prologue
    .line 2334
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/telegram/ui/DialogsActivity;->paintHeader(Z)V

    .line 2338
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_0

    .line 2339
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200e1

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2340
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->getHeaderTitle()Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    invoke-direct {v6, v7, v0, v8}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 2341
    .local v6, "td":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2342
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2350
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200c0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2351
    .local v5, "search":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2352
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020131

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2353
    .local v4, "lockO":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2354
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020132

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2355
    .local v3, "lockC":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2356
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200d7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2357
    .local v1, "clear":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderIconsColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2361
    .end local v1    # "clear":Landroid/graphics/drawable/Drawable;
    .end local v3    # "lockC":Landroid/graphics/drawable/Drawable;
    .end local v4    # "lockO":Landroid/graphics/drawable/Drawable;
    .end local v5    # "search":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->refreshTabs()V

    .line 2362
    return-void

    .line 2346
    :catch_0
    move-exception v2

    .line 2347
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2358
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 2359
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private updateVisibleRows(I)V
    .locals 12
    .param p1, "mask"    # I

    .prologue
    .line 1928
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v8, :cond_1

    .line 1975
    :cond_0
    :goto_0
    return-void

    .line 1932
    :cond_1
    sget-boolean v8, Lorg/telegram/messenger/AndroidUtilities;->playingAGame:Z

    if-nez v8, :cond_0

    .line 1936
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    .line 1937
    .local v5, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v5, :cond_b

    .line 1938
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1939
    .local v3, "child":Landroid/view/View;
    instance-of v8, v3, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v8, :cond_7

    .line 1940
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eq v8, v9, :cond_2

    move-object v2, v3

    .line 1941
    check-cast v2, Lorg/telegram/ui/Cells/DialogCell;

    .line 1942
    .local v2, "cell":Lorg/telegram/ui/Cells/DialogCell;
    and-int/lit16 v8, p1, 0x800

    if-eqz v8, :cond_4

    .line 1943
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/DialogCell;->checkCurrentDialogIndex()V

    .line 1944
    iget v8, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v8, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1945
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 1937
    .end local v2    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    .end local v3    # "child":Landroid/view/View;
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1945
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    .restart local v3    # "child":Landroid/view/View;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 1947
    :cond_4
    and-int/lit16 v8, p1, 0x200

    if-eqz v8, :cond_6

    .line 1948
    iget v8, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v8, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1949
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v2, v8}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 1952
    :cond_6
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/DialogCell;->update(I)V

    goto :goto_3

    .line 1955
    .end local v2    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_7
    instance-of v8, v3, Lorg/telegram/ui/Cells/UserCell;

    if-eqz v8, :cond_8

    .line 1956
    check-cast v3, Lorg/telegram/ui/Cells/UserCell;

    .end local v3    # "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/UserCell;->update(I)V

    goto :goto_3

    .line 1957
    .restart local v3    # "child":Landroid/view/View;
    :cond_8
    instance-of v8, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v8, :cond_9

    .line 1958
    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .end local v3    # "child":Landroid/view/View;
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Cells/ProfileSearchCell;->update(I)V

    goto :goto_3

    .line 1959
    .restart local v3    # "child":Landroid/view/View;
    :cond_9
    instance-of v8, v3, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v8, :cond_2

    move-object v7, v3

    .line 1960
    check-cast v7, Lorg/telegram/ui/Components/RecyclerListView;

    .line 1961
    .local v7, "innerListView":Lorg/telegram/ui/Components/RecyclerListView;
    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v6

    .line 1962
    .local v6, "count2":I
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_5
    if-ge v1, v6, :cond_2

    .line 1963
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1964
    .local v4, "child2":Landroid/view/View;
    instance-of v8, v4, Lorg/telegram/ui/Cells/HintDialogCell;

    if-eqz v8, :cond_a

    .line 1965
    check-cast v4, Lorg/telegram/ui/Cells/HintDialogCell;

    .end local v4    # "child2":Landroid/view/View;
    invoke-virtual {v4, p1}, Lorg/telegram/ui/Cells/HintDialogCell;->checkUnreadCounter(I)V

    .line 1962
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1971
    .end local v1    # "b":I
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "count2":I
    .end local v7    # "innerListView":Lorg/telegram/ui/Components/RecyclerListView;
    :cond_b
    iget-boolean v8, p0, Lorg/telegram/ui/DialogsActivity;->updateTabCounters:Z

    if-eqz v8, :cond_0

    .line 1972
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->unreadCount()V

    .line 1973
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/telegram/ui/DialogsActivity;->updateTabCounters:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    .prologue
    .line 2538
    const/4 v0, 0x0

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    .line 2518
    const/4 v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    .line 257
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    .line 259
    new-instance v4, Lorg/telegram/ui/DialogsActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/DialogsActivity$1;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 267
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "theme"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 268
    .local v23, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "chatsHeaderTitleColor"

    const/4 v5, -0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 269
    .local v22, "tColor":I
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    .line 270
    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 274
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v20

    .line 275
    .local v20, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 277
    const/4 v4, 0x1

    const v5, 0x7f020131

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->passcodeItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 283
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V

    .line 285
    :cond_1
    const/4 v4, 0x0

    const v5, 0x7f0200c0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$2;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v19

    .line 370
    .local v19, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Landroid/widget/EditText;

    move-result-object v4

    const-string/jumbo v5, "Search"

    const v6, 0x7f07056c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 382
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-eqz v4, :cond_11

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f0200b6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "SelectChat"

    const v6, 0x7f070586

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 404
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 405
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    if-nez v4, :cond_14

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 406
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$3;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v4, :cond_3

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const-string/jumbo v5, "chats_menuBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->setBackgroundColor(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const-string/jumbo v5, "chats_menuBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->setGlowColor(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 429
    :cond_3
    new-instance v15, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 430
    .local v15, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/DialogsActivity;->fragmentView:Landroid/view/View;

    .line 432
    new-instance v4, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 434
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setInstantClick(Z)V

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 439
    new-instance v4, Lorg/telegram/ui/DialogsActivity$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/DialogsActivity$4;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance v4, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;-><init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->onTouchListener:Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;

    .line 453
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->onTouchListener:Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$5;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$6;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 998
    new-instance v4, Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 999
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v5, "NoResult"

    const v6, 0x7f0703e6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    new-instance v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    .line 1005
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->onTouchListener:Lorg/telegram/ui/DialogsActivity$DialogsOnTouch;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1017
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    .line 1018
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    const-string/jumbo v5, "NoChats"

    const v6, 0x7f0703d0

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    const-string/jumbo v5, "emptyListPlaceholder"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1024
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    .line 1025
    const-string/jumbo v4, "NoChatsHelp"

    const v5, 0x7f0703d1

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 1026
    .local v18, "help":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1027
    const/16 v4, 0xa

    const/16 v5, 0x20

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    .line 1029
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const-string/jumbo v5, "emptyListPlaceholder"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1037
    new-instance v4, Lorg/telegram/ui/Components/RadialProgressView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x11

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    .line 1043
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-eqz v4, :cond_16

    const/16 v4, 0x8

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1046
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const-string/jumbo v5, "chats_actionBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "chats_actionPressedBackground"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1047
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_5

    .line 1048
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 1049
    .local v21, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x1000000

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1050
    new-instance v13, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-direct {v13, v0, v14, v4, v5}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 1051
    .local v13, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v13, v4, v5}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 1052
    move-object v14, v13

    .line 1054
    .end local v13    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v21    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v6, "chats_actionIcon"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const v5, 0x7f0200a5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1057
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6

    .line 1058
    new-instance v11, Landroid/animation/StateListAnimator;

    invoke-direct {v11}, Landroid/animation/StateListAnimator;-><init>()V

    .line 1059
    .local v11, "animator":Landroid/animation/StateListAnimator;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "translationZ"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1060
    const/4 v4, 0x0

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    const-string/jumbo v6, "translationZ"

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$7;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1070
    .end local v11    # "animator":Landroid/animation/StateListAnimator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_17

    const/16 v4, 0x38

    :goto_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_18

    const/high16 v5, 0x42600000    # 56.0f

    :goto_5
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_19

    const/4 v6, 0x3

    :goto_6
    or-int/lit8 v6, v6, 0x50

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_1a

    const/high16 v7, 0x41600000    # 14.0f

    :goto_7
    const/4 v8, 0x0

    sget-boolean v9, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v9, :cond_1b

    const/4 v9, 0x0

    :goto_8
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v10, :cond_1c

    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v10, :cond_1c

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    add-int/lit8 v10, v10, 0xe

    int-to-float v10, v10

    :goto_9
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v15, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$8;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusDefaultTab:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    .line 1081
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusDefaultTab:I

    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusSelectedTab:I

    .line 1083
    :cond_7
    new-instance v4, Lorg/telegram/ui/Components/TabsView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/TabsView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    .line 1084
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$9;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/TabsView;->setListener(Lorg/telegram/ui/Components/TabsView$Listener;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    const/4 v6, -0x1

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v4, :cond_1d

    const/16 v4, 0x50

    :goto_a
    invoke-static {v6, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/ui/DialogsActivity;->refreshTabAndListViews(Z)V

    .line 1118
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v4, :cond_8

    .line 1119
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->plusDialogType:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    .line 1124
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$10;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 1224
    new-instance v4, Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 1225
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    invoke-virtual {v4, v6, v7}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 1228
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1230
    :cond_a
    const/16 v24, 0x0

    .line 1231
    .local v24, "type":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-eqz v4, :cond_1e

    .line 1232
    const/16 v24, 0x2

    .line 1236
    :cond_b
    :goto_b
    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-direct {v4, v0, v1, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 1237
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    new-instance v5, Lorg/telegram/ui/DialogsActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$11;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setDelegate(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;)V

    .line 1305
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v4, :cond_1f

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1306
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1314
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Ljava/lang/String;)V

    .line 1318
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-eqz v4, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_f

    .line 1319
    :cond_e
    new-instance v25, Lorg/telegram/ui/Components/FragmentContextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/FragmentContextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v4, -0x1

    const/high16 v5, 0x421c0000    # 39.0f

    const/16 v6, 0x33

    const/4 v7, 0x0

    const/high16 v8, -0x3df00000    # -36.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v15, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1323
    :cond_f
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_10

    .line 1324
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsRowColor:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1325
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    if-lez v4, :cond_10

    .line 1327
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradient:I

    packed-switch v4, :pswitch_data_0

    .line 1338
    sget-object v17, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1340
    .local v17, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_d
    const/4 v4, 0x2

    new-array v12, v4, [I

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsRowColor:I

    aput v5, v12, v4

    const/4 v4, 0x1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->chatsRowGradientColor:I

    aput v5, v12, v4

    .line 1341
    .local v12, "colors":[I
    new-instance v16, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1342
    .local v16, "gd":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->fragmentView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1345
    .end local v12    # "colors":[I
    .end local v16    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v17    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->fragmentView:Landroid/view/View;

    return-object v4

    .line 392
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v15    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v18    # "help":Ljava/lang/String;
    .end local v24    # "type":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-eqz v4, :cond_12

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f0200b6

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 402
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotChangeHeaderTitle:Z

    if-eqz v4, :cond_13

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity;->getHeaderTitle()Ljava/lang/String;

    move-result-object v4

    :goto_f
    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 395
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>()V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    .line 402
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lorg/telegram/ui/DialogsActivity;->getTitle(IZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    .line 405
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 447
    .restart local v15    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_15
    const/4 v4, 0x2

    goto/16 :goto_2

    .line 1043
    .restart local v18    # "help":Ljava/lang/String;
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1070
    .restart local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    const/16 v4, 0x3c

    goto/16 :goto_4

    :cond_18
    const/high16 v5, 0x42700000    # 60.0f

    goto/16 :goto_5

    :cond_19
    const/4 v6, 0x5

    goto/16 :goto_6

    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_1b
    const/high16 v9, 0x41600000    # 14.0f

    goto/16 :goto_8

    :cond_1c
    const/high16 v10, 0x41600000    # 14.0f

    goto/16 :goto_9

    .line 1115
    :cond_1d
    const/16 v4, 0x30

    goto/16 :goto_a

    .line 1233
    .restart local v24    # "type":I
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v4, :cond_b

    .line 1234
    const/16 v24, 0x1

    goto/16 :goto_b

    .line 1310
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_c

    .line 1329
    :pswitch_0
    sget-object v17, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1330
    .restart local v17    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_d

    .line 1332
    .end local v17    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v17, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1333
    .restart local v17    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_d

    .line 1335
    .end local v17    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v17, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1336
    .restart local v17    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto/16 :goto_d

    .line 1327
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v10, 0xe

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1706
    sget v7, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, v7, :cond_7

    .line 1707
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v7, :cond_0

    .line 1708
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsAdapter;->isDataSetChanged()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1709
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 1713
    :goto_0
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v7, :cond_0

    .line 1714
    iput-boolean v8, p0, Lorg/telegram/ui/DialogsActivity;->updateTabCounters:Z

    .line 1717
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v7, :cond_1

    .line 1718
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 1720
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v7, :cond_2

    .line 1722
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v7, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1723
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1724
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1725
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    :cond_2
    :goto_1
    sget v7, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    if-ne p1, v7, :cond_21

    .line 1838
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v7, :cond_3

    .line 1839
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch()V

    .line 1848
    :cond_3
    :goto_2
    return-void

    .line 1711
    :cond_4
    const/16 v7, 0x800

    invoke-direct {p0, v7}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_0

    .line 1727
    :cond_5
    :try_start_1
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    .line 1728
    iget-boolean v7, p0, Lorg/telegram/ui/DialogsActivity;->searching:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lorg/telegram/ui/DialogsActivity;->searchWas:Z

    if-eqz v7, :cond_6

    .line 1729
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1730
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1738
    :catch_0
    move-exception v1

    .line 1739
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1732
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_2
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setVisibility(I)V

    .line 1733
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1735
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->checkEmptyView()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1742
    :cond_7
    sget v7, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v7, :cond_8

    .line 1743
    invoke-direct {p0, v9}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_1

    .line 1744
    :cond_8
    sget v7, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v7, :cond_a

    .line 1746
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v7, :cond_9

    aget-object v7, p2, v9

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v10, 0x100

    if-ne v7, v10, :cond_9

    iput-boolean v8, p0, Lorg/telegram/ui/DialogsActivity;->updateTabCounters:Z

    .line 1748
    :cond_9
    aget-object v7, p2, v9

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto :goto_1

    .line 1749
    :cond_a
    sget v7, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v7, :cond_b

    .line 1750
    sput-boolean v9, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    goto :goto_1

    .line 1751
    :cond_b
    sget v7, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    if-ne p1, v7, :cond_c

    .line 1752
    invoke-direct {p0, v9}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_1

    .line 1753
    :cond_c
    sget v7, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v7, :cond_d

    .line 1754
    invoke-direct {p0, v9}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_1

    .line 1755
    :cond_d
    sget v7, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    if-ne p1, v7, :cond_11

    .line 1756
    iget v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    if-nez v7, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1757
    aget-object v7, p2, v8

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1758
    .local v0, "close":Z
    aget-object v7, p2, v9

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1759
    .local v2, "dialog_id":J
    if-eqz v0, :cond_10

    .line 1760
    iget-wide v10, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    cmp-long v7, v2, v10

    if-nez v7, :cond_e

    .line 1761
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    .line 1766
    :cond_e
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v7, :cond_f

    .line 1767
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-wide v10, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    invoke-virtual {v7, v10, v11}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setOpenedDialogId(J)V

    .line 1769
    :cond_f
    const/16 v7, 0x200

    invoke-direct {p0, v7}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_1

    .line 1764
    :cond_10
    iput-wide v2, p0, Lorg/telegram/ui/DialogsActivity;->openedDialogId:J

    goto :goto_3

    .line 1771
    .end local v0    # "close":Z
    .end local v2    # "dialog_id":J
    :cond_11
    sget v7, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, v7, :cond_12

    .line 1772
    invoke-direct {p0, v9}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_1

    .line 1773
    :cond_12
    sget v7, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    if-eq p1, v7, :cond_13

    sget v7, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    if-eq p1, v7, :cond_13

    sget v7, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    if-ne p1, v7, :cond_14

    .line 1774
    :cond_13
    const/16 v7, 0x1000

    invoke-direct {p0, v7}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_1

    .line 1775
    :cond_14
    sget v7, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, v7, :cond_15

    .line 1776
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updatePasscodeButton()V

    goto/16 :goto_1

    .line 1777
    :cond_15
    sget v7, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    if-ne p1, v7, :cond_1e

    .line 1778
    aget-object v7, p2, v9

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1780
    .local v4, "i":I
    if-eq v4, v10, :cond_16

    const/16 v7, 0xc

    if-eq v4, v7, :cond_16

    const/16 v7, 0xa

    if-eq v4, v7, :cond_16

    const/16 v7, 0xf

    if-ne v4, v7, :cond_1d

    .line 1781
    :cond_16
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    if-eqz v7, :cond_17

    .line 1782
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TabsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1783
    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v7, :cond_1a

    const/16 v7, 0x50

    :goto_4
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1784
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/TabsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1786
    .end local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_17
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    if-eqz v7, :cond_18

    .line 1787
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1788
    .local v5, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v7, :cond_1b

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->plusTabsToBottom:Z

    if-eqz v7, :cond_1b

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->plusTabsHeight:I

    add-int/lit8 v7, v7, 0xe

    int-to-float v7, v7

    :goto_5
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1789
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1791
    .end local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_18
    if-ne v4, v10, :cond_1c

    .line 1792
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    if-eqz v7, :cond_19

    .line 1793
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TabsView;->forceUpdateTabCounters()V

    .line 1814
    :cond_19
    :goto_6
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updateTabs()V

    goto/16 :goto_1

    .line 1783
    .restart local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1a
    const/16 v7, 0x30

    goto :goto_4

    .line 1788
    .end local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1b
    const/high16 v7, 0x41600000    # 14.0f

    goto :goto_5

    .line 1796
    .end local v5    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1c
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    if-eqz v7, :cond_19

    .line 1797
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TabsView;->reloadTabs()V

    goto :goto_6

    .line 1800
    :cond_1d
    const/16 v7, 0xb

    if-ne v4, v7, :cond_19

    .line 1801
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->refreshTabs()V

    goto :goto_6

    .line 1816
    .end local v4    # "i":I
    :cond_1e
    sget v7, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    if-ne p1, v7, :cond_2

    .line 1817
    aget-object v7, p2, v9

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1818
    .restart local v4    # "i":I
    if-ne v4, v8, :cond_20

    .line 1819
    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_2

    .line 1820
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->updateTheme()V

    .line 1821
    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->chatsHideHeaderShadow:Z

    if-nez v7, :cond_1f

    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 1822
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    if-eqz v7, :cond_2

    .line 1823
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->newTabsView:Lorg/telegram/ui/Components/TabsView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/TabsView;->updateTabsColors()V

    goto/16 :goto_1

    :cond_1f
    move v7, v9

    .line 1821
    goto :goto_7

    .line 1827
    :cond_20
    const/4 v7, 0x2

    if-eq v4, v7, :cond_2

    .line 1829
    if-nez v4, :cond_2

    goto/16 :goto_1

    .line 1841
    .end local v4    # "i":I
    :cond_21
    sget v7, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    if-ne p1, v7, :cond_22

    .line 1842
    invoke-direct {p0, v9}, Lorg/telegram/ui/DialogsActivity;->updateVisibleRows(I)V

    goto/16 :goto_2

    .line 1843
    :cond_22
    sget v7, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    if-ne p1, v7, :cond_3

    .line 1844
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v7, :cond_3

    .line 1845
    iget-object v7, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 2457
    if-nez p2, :cond_1

    .line 2488
    :cond_0
    :goto_0
    return-object v2

    .line 2461
    :cond_1
    const/4 v3, 0x0

    .line 2462
    .local v3, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v5, p0, Lorg/telegram/ui/DialogsActivity;->user_id:I

    if-eqz v5, :cond_3

    .line 2463
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/DialogsActivity;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 2464
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_2

    .line 2465
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2474
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v5, v6, :cond_0

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v5, v6, :cond_0

    .line 2475
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 2476
    .local v1, "coords":[I
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 2477
    new-instance v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 2478
    .local v2, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    const/4 v5, 0x0

    aget v5, v1, v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 2479
    const/4 v5, 0x1

    aget v5, v1, v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 2480
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 2481
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 2483
    iget-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 2484
    const/4 v5, -0x1

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    .line 2485
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v5

    iput v5, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    goto :goto_0

    .line 2467
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_3
    iget v5, p0, Lorg/telegram/ui/DialogsActivity;->chat_id:I

    if-eqz v5, :cond_2

    .line 2468
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/DialogsActivity;->chat_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2469
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_2

    .line 2470
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_1
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 2528
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 2100
    new-instance v9, Lorg/telegram/ui/DialogsActivity$17;

    invoke-direct {v9, p0}, Lorg/telegram/ui/DialogsActivity$17;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    .line 2124
    .local v9, "cellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x6f

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->emptyTextView1:Landroid/widget/TextView;

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

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->emptyTextView2:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_actionIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_actionBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

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

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_photoDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatar_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x12

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

    const/16 v8, 0x13

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

    const/16 v8, 0x14

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

    const/16 v8, 0x15

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

    const/16 v8, 0x16

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

    const/16 v8, 0x17

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

    const/16 v8, 0x18

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

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_unreadCounter"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_unreadCounterMuted"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_unreadCounterText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_name"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_secretName"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_secretIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_groupDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_broadcastDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_botDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_nameIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_pinnedIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_message"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "chats_nameMessage"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "chats_draft"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "chats_attachMessage"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x25

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_actionMessage"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x26

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_date"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x27

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_pinnedOverlay"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x28

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_tabletSelectedOverlay"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x29

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_sentCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_sentClock"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_sentError"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_sentErrorIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_verifiedCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_verifiedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x2f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_muteIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x30

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_menuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x31

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_menuName"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x32

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_menuPhone"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x33

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_menuPhoneCats"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x34

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_menuCloudBackgroundCats"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x35

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "cloudDrawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "chats_menuCloud"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x36

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chat_serviceBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x37

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerProfileCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_menuTopShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x38

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerActionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "chats_menuItemIcon"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x39

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DrawerActionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "chats_menuItemText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x3a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/DividerCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x3b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/LoadingCell;

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

    const/16 v8, 0x3c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_offlinePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteGrayText3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x3d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlinePaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlueText3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x3e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x3f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x40

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HashtagSearchCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x41

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x42

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 2207
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HintDialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_unreadCounter"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x43

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 2208
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HintDialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_unreadCounterMuted"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x44

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 2209
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HintDialogCell;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "chats_unreadCounterText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x45

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .line 2210
    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HintDialogCell;

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

    const/16 v11, 0x46

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "frameLayout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x47

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "playButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerPlayPause"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x48

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "titleTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerTitle"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x49

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "frameLayout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerPerformer"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x4a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "closeButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "inappPlayerClose"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x4b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "frameLayout"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "returnToCallBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x4c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity;->fragmentContextView:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/FragmentContextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "titleTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "returnToCallText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x4d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x4e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextBlack"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x4f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextLink"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x50

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogLinkSelection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x51

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x52

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextBlue2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x53

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextBlue3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x54

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextBlue4"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x55

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextRed"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x56

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x57

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextGray2"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x58

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextGray3"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x59

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextGray4"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogTextHint"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogInputFieldActivated"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogCheckboxSquareBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x5f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogCheckboxSquareCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x60

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogCheckboxSquareUnchecked"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x61

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogCheckboxSquareDisabled"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x62

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogRadioBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x63

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogRadioBackgroundChecked"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x64

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogProgressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x65

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogButton"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x66

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogButtonSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x67

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogScrollGlow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x68

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogRoundCheckBox"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x69

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogRoundCheckBoxCheck"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x6a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogBadgeBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x6b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogBadgeText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x6c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogLineProgress"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x6d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogLineProgressBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x6e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "dialogGrayLine"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 2493
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMainDialogList()Z
    .locals 1

    .prologue
    .line 2020
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoChecked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2508
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1665
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1666
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DialogsActivity$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$15;-><init>(Lorg/telegram/ui/DialogsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1682
    :cond_0
    return-void
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1657
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 1658
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1659
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->askForPermissons()V

    .line 1661
    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 179
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "onlySelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "cantSendToChannels"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity;->cantSendToChannels:Z

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "dialogsType"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/DialogsActivity;->dialogsType:I

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "selectAlertString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertString:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "selectAlertStringGroup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->selectAlertStringGroup:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "addToGroupAlertString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->addToGroupAlertString:Ljava/lang/String;

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 189
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 190
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 191
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 192
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 193
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 194
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 195
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 196
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 197
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 198
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 199
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 200
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 201
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 202
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 203
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 205
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 206
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 210
    :cond_1
    sget-boolean v0, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    if-nez v0, :cond_2

    .line 211
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->plusChatsToLoad:I

    invoke-virtual {v0, v2, v1, v4}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 212
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 213
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->loadPinnedDialogs(JLjava/util/ArrayList;)V

    .line 214
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkFeaturedStickers()V

    .line 215
    sput-boolean v4, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    .line 217
    :cond_2
    return v4
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 225
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 226
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 227
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->encryptedChatUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 228
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 229
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 230
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->openedChatChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 231
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 232
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByAck:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 233
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageReceivedByServer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 234
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 235
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 236
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needReloadRecentDialogsSearch:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 237
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didLoadedReplyMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 238
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 240
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->refreshTabs:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 241
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateDialogsTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    .line 244
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x1

    .line 1686
    if-ne p1, v2, :cond_3

    .line 1687
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 1688
    array-length v1, p3

    if-le v1, v0, :cond_0

    aget v1, p3, v0

    if-eqz v1, :cond_1

    .line 1687
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1691
    :cond_1
    aget-object v3, p2, v0

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1693
    :pswitch_0
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    goto :goto_1

    .line 1691
    :sswitch_0
    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_2

    .line 1696
    :pswitch_1
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    goto :goto_1

    .line 1701
    .end local v0    # "a":I
    :cond_3
    return-void

    .line 1691
    :sswitch_data_0
    .sparse-switch
        0x516a29a7 -> :sswitch_1
        0x75dd2d9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f070452

    const v4, 0x7f070078

    .line 1600
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1601
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    if-eqz v2, :cond_0

    .line 1602
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsAdapter:Lorg/telegram/ui/Adapters/DialogsAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 1603
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusHideTabs:Z

    if-nez v2, :cond_0

    .line 1604
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->unreadCount()V

    .line 1607
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v2, :cond_1

    .line 1608
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 1610
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity;->checkPermission:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity;->onlySelect:Z

    if-nez v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 1611
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1612
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1613
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/DialogsActivity;->checkPermission:Z

    .line 1614
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1615
    :cond_2
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1616
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1617
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1618
    const-string/jumbo v2, "PermissionContacts"

    const v3, 0x7f0704c0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1619
    const-string/jumbo v2, "OK"

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1620
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1633
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_3
    :goto_0
    return-void

    .line 1621
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_4
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1622
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1623
    .restart local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v2, "AppName"

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1624
    const-string/jumbo v2, "PermissionStorage"

    const v3, 0x7f0704c8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1625
    const-string/jumbo v2, "OK"

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1626
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/DialogsActivity;->permissionDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/DialogsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1628
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity;->askForPermissons()V

    goto :goto_0
.end method

.method resetViews()V
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->destroyPhotoViewer()V

    .line 248
    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SecretPhotoViewer;->destroyPhotoViewer()V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/DialogsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 252
    :cond_0
    return-void
.end method

.method public scaleToFill()Z
    .locals 1

    .prologue
    .line 2543
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 2524
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V
    .locals 0
    .param p1, "dialogsActivityDelegate"    # Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    .prologue
    .line 2012
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity;->delegate:Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    .line 2013
    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 2514
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 2016
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity;->searchString:Ljava/lang/String;

    .line 2017
    return-void
.end method

.method public setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 1883
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 1884
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const-string/jumbo v1, "chats_menuBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setBackgroundColor(I)V

    .line 1885
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity;->sideMenu:Lorg/telegram/messenger/support/widget/RecyclerView;

    const-string/jumbo v1, "chats_menuBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setGlowColor(I)V

    .line 1886
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 2534
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 0

    .prologue
    .line 2504
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 2499
    return-void
.end method
