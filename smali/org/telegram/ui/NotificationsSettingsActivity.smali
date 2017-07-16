.class public Lorg/telegram/ui/NotificationsSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "NotificationsSettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

.field private androidAutoAlertRow:I

.field private badgeNumberRow:I

.field private callsRingtoneRow:I

.field private callsSectionRow:I

.field private callsSectionRow2:I

.field private callsVibrateRow:I

.field private contactJoinedRow:I

.field private eventsSectionRow:I

.field private eventsSectionRow2:I

.field private groupAlertRow:I

.field private groupLedRow:I

.field private groupPopupNotificationRow:I

.field private groupPreviewRow:I

.field private groupPriorityRow:I

.field private groupSectionRow:I

.field private groupSectionRow2:I

.field private groupSoundRow:I

.field private groupVibrateRow:I

.field private inappPreviewRow:I

.field private inappPriorityRow:I

.field private inappSectionRow:I

.field private inappSectionRow2:I

.field private inappSoundRow:I

.field private inappVibrateRow:I

.field private inchatSoundRow:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private messageAlertRow:I

.field private messageLedRow:I

.field private messagePopupNotificationRow:I

.field private messagePreviewRow:I

.field private messagePriorityRow:I

.field private messageSectionRow:I

.field private messageSoundRow:I

.field private messageVibrateRow:I

.field private notificationsServiceConnectionRow:I

.field private notificationsServiceRow:I

.field private otherSectionRow:I

.field private otherSectionRow2:I

.field private pinnedMessageRow:I

.field private repeatRow:I

.field private resetNotificationsRow:I

.field private resetSectionRow:I

.field private resetSectionRow2:I

.field private reseting:Z

.field private rowCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 60
    iput-boolean v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z

    .line 105
    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    .line 586
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageAlertRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSoundRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappVibrateRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappPreviewRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inchatSoundRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappPriorityRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->contactJoinedRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->pinnedMessageRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->androidAutoAlertRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->badgeNumberRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceConnectionRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePreviewRow:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupLedRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePopupNotificationRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPopupNotificationRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageVibrateRow:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupVibrateRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsVibrateRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->repeatRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageSectionRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow2:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow2:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow2:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow2:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow2:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow2:I

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow:I

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/NotificationsSettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetNotificationsRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/NotificationsSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->reseting:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/NotificationsSettingsActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 514
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 515
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 516
    invoke-virtual {p0}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 517
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 518
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 519
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 181
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 182
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 183
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "NotificationsAndSounds"

    const v4, 0x7f07043a

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/NotificationsSettingsActivity$1;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 193
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->fragmentView:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 195
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const-string/jumbo v2, "windowBackgroundGray"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 197
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 198
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 199
    .local v1, "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 200
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 201
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 202
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$2;

    invoke-direct {v3, p0, p1, v6, v5}, Lorg/telegram/ui/NotificationsSettingsActivity$2;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 208
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 209
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 211
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/NotificationsSettingsActivity$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/NotificationsSettingsActivity$3;-><init>(Lorg/telegram/ui/NotificationsSettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 480
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 581
    sget v0, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, v0, :cond_0

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 584
    :cond_0
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 841
    const/16 v0, 0x16

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lorg/telegram/ui/Cells/TextColorCell;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v9, v8

    const/16 v10, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextColorCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText2"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    return-object v9
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 523
    const/4 v5, -0x1

    if-ne p2, v5, :cond_2

    .line 524
    const-string/jumbo v5, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 525
    .local v3, "ringtone":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 526
    .local v1, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 527
    invoke-virtual {p0}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    .line 528
    .local v4, "rng":Landroid/media/Ringtone;
    if-eqz v4, :cond_0

    .line 529
    iget v5, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I

    if-ne p1, v5, :cond_4

    .line 530
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 531
    const-string/jumbo v5, "DefaultRingtone"

    const v6, 0x7f0701d8

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 542
    :goto_0
    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 546
    .end local v4    # "rng":Landroid/media/Ringtone;
    :cond_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 547
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 549
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v5, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I

    if-ne p1, v5, :cond_7

    .line 550
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 551
    const-string/jumbo v5, "GlobalSound"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    const-string/jumbo v5, "GlobalSoundPath"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 574
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 575
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->adapter:Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;

    invoke-virtual {v5, p1}, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->notifyItemChanged(I)V

    .line 577
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    .end local v3    # "ringtone":Landroid/net/Uri;
    :cond_2
    return-void

    .line 533
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "ringtone":Landroid/net/Uri;
    .restart local v4    # "rng":Landroid/media/Ringtone;
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 536
    :cond_4
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 537
    const-string/jumbo v5, "SoundDefault"

    const v6, 0x7f0705f8

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 539
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/NotificationsSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 554
    .end local v4    # "rng":Landroid/media/Ringtone;
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_6
    const-string/jumbo v5, "GlobalSound"

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 555
    const-string/jumbo v5, "GlobalSoundPath"

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 557
    :cond_7
    iget v5, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I

    if-ne p1, v5, :cond_9

    .line 558
    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    .line 559
    const-string/jumbo v5, "GroupSound"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 560
    const-string/jumbo v5, "GroupSoundPath"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 562
    :cond_8
    const-string/jumbo v5, "GroupSound"

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 563
    const-string/jumbo v5, "GroupSoundPath"

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 565
    :cond_9
    iget v5, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I

    if-ne p1, v5, :cond_1

    .line 566
    if-eqz v1, :cond_a

    if-eqz v3, :cond_a

    .line 567
    const-string/jumbo v5, "CallsRingtone"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 568
    const-string/jumbo v5, "CallsRingtonePath"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 570
    :cond_a
    const-string/jumbo v5, "CallsRingtone"

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 571
    const-string/jumbo v5, "CallsRingtonePath"

    const-string/jumbo v6, "NoSound"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v2, -0x1

    .line 109
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageSectionRow:I

    .line 110
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageAlertRow:I

    .line 111
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePreviewRow:I

    .line 112
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageLedRow:I

    .line 113
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageVibrateRow:I

    .line 114
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePopupNotificationRow:I

    .line 115
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messageSoundRow:I

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 117
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I

    .line 121
    :goto_0
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow2:I

    .line 122
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSectionRow:I

    .line 123
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupAlertRow:I

    .line 124
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPreviewRow:I

    .line 125
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupLedRow:I

    .line 126
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupVibrateRow:I

    .line 127
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPopupNotificationRow:I

    .line 128
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupSoundRow:I

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 130
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I

    .line 134
    :goto_1
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow2:I

    .line 135
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSectionRow:I

    .line 136
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappSoundRow:I

    .line 137
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappVibrateRow:I

    .line 138
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappPreviewRow:I

    .line 139
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inchatSoundRow:I

    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 141
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappPriorityRow:I

    .line 145
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->callsEnabled:Z

    if-eqz v0, :cond_3

    .line 146
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow2:I

    .line 147
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow:I

    .line 148
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsVibrateRow:I

    .line 149
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I

    .line 153
    :goto_3
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow2:I

    .line 154
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->eventsSectionRow:I

    .line 155
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->contactJoinedRow:I

    .line 156
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->pinnedMessageRow:I

    .line 157
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow2:I

    .line 158
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->otherSectionRow:I

    .line 159
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceRow:I

    .line 160
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->notificationsServiceConnectionRow:I

    .line 161
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->badgeNumberRow:I

    .line 162
    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->androidAutoAlertRow:I

    .line 163
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->repeatRow:I

    .line 164
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow2:I

    .line 165
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetSectionRow:I

    .line 166
    iget v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->resetNotificationsRow:I

    .line 168
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 170
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0

    .line 119
    :cond_0
    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->messagePriorityRow:I

    goto/16 :goto_0

    .line 132
    :cond_1
    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->groupPriorityRow:I

    goto/16 :goto_1

    .line 143
    :cond_2
    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->inappPriorityRow:I

    goto/16 :goto_2

    .line 151
    :cond_3
    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsRingtoneRow:I

    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsVibrateRow:I

    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow:I

    iput v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity;->callsSectionRow2:I

    goto/16 :goto_3
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 176
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 510
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/NotificationsSettingsActivity;->updateTheme()V

    .line 511
    :cond_0
    return-void
.end method

.method public updateServerNotificationsSettings(Z)V
    .locals 0
    .param p1, "group"    # Z

    .prologue
    .line 505
    return-void
.end method
