.class public Lorg/telegram/ui/SettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SettingsActivity$ListAdapter;,
        Lorg/telegram/ui/SettingsActivity$LinkMovementMethodMy;
    }
.end annotation


# static fields
.field private static final edit_name:I = 0x1

.field private static final logout:I = 0x2


# instance fields
.field private aboutLinkCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

.field private aboutRow:I

.field private askQuestionRow:I

.field private autoplayGifsRow:I

.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private backgroundRow:I

.field private clearLogsRow:I

.field private contactsReimportRow:I

.field private contactsSectionRow:I

.field private contactsSortRow:I

.field private customTabsRow:I

.field private dataRow:I

.field private directShareRow:I

.field private emojiRow:I

.field private emptyRow:I

.field private enableAnimationsRow:I

.field private extraHeight:I

.field private extraHeightView:Landroid/view/View;

.field private foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private languageRow:I

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private linkSearchRequestId:I

.field private listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private messagesSectionRow:I

.field private messagesSectionRow2:I

.field private nameTextView:Landroid/widget/TextView;

.field private notificationRow:I

.field private numberRow:I

.field private numberSectionRow:I

.field private onlineTextView:Landroid/widget/TextView;

.field private overscrollRow:I

.field private pass:I

.field private privacyPolicyRow:I

.field private privacyRow:I

.field private raiseToSpeakRow:I

.field private rowCount:I

.field private saveToGalleryRow:I

.field private sendByEnterRow:I

.field private sendLogsRow:I

.field private settingsSectionRow:I

.field private settingsSectionRow2:I

.field private shadowView:Landroid/view/View;

.field private stickersRow:I

.field private supportSectionRow:I

.field private supportSectionRow2:I

.field private switchBackendButtonRow:I

.field private telegramFaqRow:I

.field private textSizeRow:I

.field private themeRow:I

.field private userAbout:Ljava/lang/String;

.field private usernameRow:I

.field private versionRow:I

.field private writeButton:Landroid/widget/ImageView;

.field private writeButtonAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 124
    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    .line 1322
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->performAskAQuestion()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->sendLogs()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->customTabsRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->directShareRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->privacyRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->dataRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->languageRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->themeRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->usernameRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->textSizeRow:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->numberRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->stickersRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->emojiRow:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/SettingsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/SettingsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->aboutRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->versionRow:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Components/AvatarUpdater;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    return v0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/SettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/SettingsActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->needLayout()V

    return-void
.end method

.method static synthetic access$4102(Lorg/telegram/ui/SettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lorg/telegram/ui/SettingsActivity;->linkSearchRequestId:I

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$WebPage;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->foundWebPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/SettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->userAbout:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->userAbout:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->pass:I

    return v0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/SettingsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    iput p1, p0, Lorg/telegram/ui/SettingsActivity;->pass:I

    return p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/SettingsActivity;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/SettingsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/SettingsActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/SettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/SettingsActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->overscrollRow:I

    return v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->settingsSectionRow2:I

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->supportSectionRow2:I

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->messagesSectionRow2:I

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->numberSectionRow:I

    return v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/SettingsActivity;)Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->aboutLinkCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/SettingsActivity;Lorg/telegram/ui/Cells/TextDetailSettingsCell;)Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;
    .param p1, "x1"    # Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity;->aboutLinkCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->emptyRow:I

    return v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->settingsSectionRow:I

    return v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->supportSectionRow:I

    return v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->messagesSectionRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->notificationRow:I

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->contactsSectionRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->backgroundRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/SettingsActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I

    return v0
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1249
    :goto_0
    return-void

    .line 1239
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/SettingsActivity$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SettingsActivity$13;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private needLayout()V
    .locals 15

    .prologue
    .line 1160
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v7

    if-eqz v7, :cond_4

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    add-int v4, v7, v8

    .line 1161
    .local v4, "newTop":I
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v7, :cond_0

    .line 1162
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1163
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v7, v4, :cond_0

    .line 1164
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1165
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1170
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v7, :cond_3

    .line 1171
    iget v7, p0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    int-to-float v7, v7

    const/high16 v8, 0x42b00000    # 88.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 1172
    .local v2, "diff":F
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1173
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->shadowView:Landroid/view/View;

    iget v8, p0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1176
    iget-object v8, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v7

    if-eqz v7, :cond_5

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    add-int/2addr v7, v9

    iget v9, p0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    add-int/2addr v7, v9

    const/high16 v9, 0x41ec0000    # 29.5f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1178
    const v7, 0x3e4ccccd    # 0.2f

    cmpl-float v7, v2, v7

    if-lez v7, :cond_6

    const/4 v6, 0x1

    .line 1179
    .local v6, "setVisible":Z
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7

    const/4 v1, 0x1

    .line 1180
    .local v1, "currentVisible":Z
    :goto_3
    if-eq v6, v1, :cond_2

    .line 1181
    if-eqz v6, :cond_8

    .line 1182
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1183
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1187
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_1

    .line 1188
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1189
    .local v5, "old":Landroid/animation/AnimatorSet;
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1190
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1192
    .end local v5    # "old":Landroid/animation/AnimatorSet;
    :cond_1
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    .line 1193
    if-eqz v6, :cond_9

    .line 1194
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1195
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 1196
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 1197
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v13

    .line 1198
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1195
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1208
    :goto_5
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x96

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1209
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Lorg/telegram/ui/SettingsActivity$12;

    invoke-direct {v8, p0, v6}, Lorg/telegram/ui/SettingsActivity$12;-><init>(Lorg/telegram/ui/SettingsActivity;Z)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1218
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1221
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_a

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarSize:I

    :goto_6
    int-to-float v7, v7

    const/high16 v9, 0x41900000    # 18.0f

    mul-float/2addr v9, v2

    add-float/2addr v9, v7

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_b

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarSize:I

    int-to-float v7, v7

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v7, v10

    :goto_7
    div-float v7, v9, v7

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/BackupImageView;->setScaleX(F)V

    .line 1222
    iget-object v8, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_c

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarSize:I

    :goto_8
    int-to-float v7, v7

    const/high16 v9, 0x41900000    # 18.0f

    mul-float/2addr v9, v2

    add-float/2addr v9, v7

    sget-boolean v7, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v7, :cond_d

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarSize:I

    int-to-float v7, v7

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v7, v10

    :goto_9
    div-float v7, v9, v7

    invoke-virtual {v8, v7}, Lorg/telegram/ui/Components/BackupImageView;->setScaleY(F)V

    .line 1223
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v7

    if-eqz v7, :cond_e

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_a
    int-to-float v7, v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x41a80000    # 21.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x41d80000    # 27.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float v0, v7, v8

    .line 1224
    .local v0, "avatarY":F
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, 0x423c0000    # 47.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationX(F)V

    .line 1225
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setTranslationY(F)V

    .line 1226
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v8, -0x3e580000    # -21.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1227
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x40e00000    # 7.0f

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v9, v10

    mul-float/2addr v9, v2

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1228
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v8, -0x3e580000    # -21.0f

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 1229
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x41300000    # 11.0f

    sget v10, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1230
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3df5c28f    # 0.12f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1231
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3df5c28f    # 0.12f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleY(F)V

    .line 1233
    .end local v0    # "avatarY":F
    .end local v1    # "currentVisible":Z
    .end local v2    # "diff":F
    .end local v6    # "setVisible":Z
    :cond_3
    return-void

    .line 1160
    .end local v4    # "newTop":I
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1176
    .restart local v2    # "diff":F
    .restart local v4    # "newTop":I
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1178
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1179
    .restart local v6    # "setVisible":Z
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1185
    .restart local v1    # "currentVisible":Z
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1201
    :cond_9
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1202
    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->writeButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleX"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const v14, 0x3e4ccccd    # 0.2f

    aput v14, v12, v13

    .line 1203
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v11, "scaleY"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const v14, 0x3e4ccccd    # 0.2f

    aput v14, v12, v13

    .line 1204
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const-string/jumbo v11, "alpha"

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    .line 1205
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1202
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_5

    .line 1221
    :cond_a
    const/16 v7, 0x2a

    goto/16 :goto_6

    :cond_b
    const/high16 v7, 0x42280000    # 42.0f

    goto/16 :goto_7

    .line 1222
    :cond_c
    const/16 v7, 0x2a

    goto/16 :goto_8

    :cond_d
    const/high16 v7, 0x42280000    # 42.0f

    goto/16 :goto_9

    .line 1223
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_a
.end method

.method private performAskAQuestion()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 948
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "mainconfig"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 949
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v10, "support_id"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 950
    .local v8, "uid":I
    const/4 v7, 0x0

    .line 951
    .local v7, "supportUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v8, :cond_1

    .line 952
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 953
    if-nez v7, :cond_1

    .line 954
    const-string/jumbo v10, "support_user"

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 955
    .local v9, "userString":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 957
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v9, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 958
    .local v2, "datacentersBytes":[B
    if-eqz v2, :cond_1

    .line 959
    new-instance v1, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v1, v2}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 960
    .local v1, "data":Lorg/telegram/tgnet/SerializedData;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 961
    if-eqz v7, :cond_0

    iget v10, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    const v11, 0x514c8

    if-ne v10, v11, :cond_0

    .line 962
    const/4 v7, 0x0

    .line 964
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/tgnet/SerializedData;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    .end local v1    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v2    # "datacentersBytes":[B
    .end local v9    # "userString":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v7, :cond_2

    .line 974
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v5, v10, v13}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 975
    .local v5, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v10, "Loading"

    const v11, 0x7f070356

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 976
    invoke-virtual {v5, v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 977
    invoke-virtual {v5, v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 978
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 979
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;-><init>()V

    .line 980
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/SettingsActivity$10;

    invoke-direct {v11, p0, v4, v5}, Lorg/telegram/ui/SettingsActivity$10;-><init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/SharedPreferences;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v10, v6, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1030
    .end local v5    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .end local v6    # "req":Lorg/telegram/tgnet/TLRPC$TL_help_getSupport;
    :goto_1
    return-void

    .line 966
    .restart local v9    # "userString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 967
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 968
    const/4 v7, 0x0

    goto :goto_0

    .line 1025
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "userString":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v7, v13}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1026
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1027
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v10, "user_id"

    iget v11, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1028
    new-instance v10, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v10}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1
.end method

.method private sendLogs()V
    .locals 10

    .prologue
    .line 1282
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    .local v6, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1284
    .local v5, "sdCard":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/logs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1286
    .local v3, "files":[Ljava/io/File;
    array-length v8, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, v3, v7

    .line 1287
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1290
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1291
    new-instance v7, Lorg/telegram/ui/SettingsActivity$14;

    invoke-direct {v7, p0}, Lorg/telegram/ui/SettingsActivity$14;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1320
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v5    # "sdCard":Ljava/io/File;
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_1
    return-void

    .line 1302
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "files":[Ljava/io/File;
    .restart local v5    # "sdCard":Ljava/io/File;
    .restart local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v4, "i":Landroid/content/Intent;
    const-string/jumbo v7, "message/rfc822"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    const-string/jumbo v7, "android.intent.extra.EMAIL"

    const-string/jumbo v8, ""

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    const-string/jumbo v7, "android.intent.extra.SUBJECT"

    const-string/jumbo v8, "last logs"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1306
    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1307
    invoke-virtual {p0}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "Select email application."

    invoke-static {v4, v8}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    const/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1308
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i":Landroid/content/Intent;
    .end local v5    # "sdCard":Ljava/io/File;
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v1

    .line 1309
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1310
    new-instance v7, Lorg/telegram/ui/SettingsActivity$15;

    invoke-direct {v7, p0}, Lorg/telegram/ui/SettingsActivity$15;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private updateTheme()V
    .locals 4

    .prologue
    .line 1098
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1099
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1100
    invoke-virtual {p0}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1101
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1102
    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1103
    invoke-virtual {p0}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1104
    .local v1, "other":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1105
    return-void
.end method

.method private updateUserData()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1252
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1253
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v0, 0x0

    .line 1254
    .local v0, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v1, 0x0

    .line 1255
    .local v1, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_0

    .line 1256
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1257
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1259
    :cond_0
    new-instance v4, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v4, v3, v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    iput-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 1261
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    const-string/jumbo v7, "avatar_backgroundInProfileBlue"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 1262
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarRadius:I

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 1263
    .local v2, "radius":I
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_1

    .line 1264
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setRadius(I)V

    .line 1266
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v4, :cond_2

    .line 1267
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v7, "50_50"

    iget-object v8, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v0, v7, v8}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1268
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1270
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const-string/jumbo v7, "Online"

    const v8, 0x7f070456

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v7

    if-nez v7, :cond_4

    :goto_1
    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 1274
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_2

    .line 1275
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 1278
    :cond_2
    return-void

    :cond_3
    move v4, v6

    .line 1268
    goto :goto_0

    :cond_4
    move v5, v6

    .line 1273
    goto :goto_1
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    .prologue
    .line 875
    const/4 v0, 0x1

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x1

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "avatar_backgroundActionBarBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "avatar_actionBarSelectorBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "avatar_actionBarIconBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 328
    const/16 v2, 0x58

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/SettingsActivity;->extraHeight:I

    .line 329
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 332
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$2;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 358
    .local v15, "other":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v14

    .line 359
    .local v14, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x0

    invoke-virtual {v14, v2, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v13

    .line 360
    .local v13, "item":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    const/4 v2, 0x1

    const-string/jumbo v3, "EditName"

    const v4, 0x7f070210

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 361
    const/4 v2, 0x2

    const-string/jumbo v3, "LogOut"

    const v4, 0x7f070361

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 363
    new-instance v2, Lorg/telegram/ui/SettingsActivity$ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    .line 365
    new-instance v2, Lorg/telegram/ui/SettingsActivity$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/SettingsActivity$3;-><init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    const-string/jumbo v3, "windowBackgroundGray"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v12, Landroid/widget/FrameLayout;

    .line 396
    .local v12, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 397
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 398
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/SettingsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v3, "avatar_backgroundActionBarBlue"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$4;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$5;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 710
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    const/4 v3, -0x1

    const/high16 v4, 0x42b00000    # 88.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->shadowView:Landroid/view/View;

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->shadowView:Landroid/view/View;

    const v3, 0x7f0200b1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 717
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->shadowView:Landroid/view/View;

    const/4 v3, -0x1

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_5

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarRadius:I

    int-to-float v2, v2

    :goto_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setPivotX(F)V

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setPivotY(F)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v17, v0

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarSize:I

    :goto_2
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_7

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefAvatarSize:I

    int-to-float v3, v3

    :goto_3
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x3

    :goto_4
    const/high16 v5, 0x42800000    # 64.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$6;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_9

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42ec0000    # 118.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42400000    # 48.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_a

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarStatusColor:I

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/high16 v5, 0x42ec0000    # 118.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42400000    # 48.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 758
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    .line 759
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

    move-result-object v11

    .line 760
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    .line 761
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 762
    .local v16, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, -0x1000000

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 763
    new-instance v10, Lorg/telegram/ui/Components/CombinedDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v11, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 764
    .local v10, "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    .line 765
    move-object v11, v10

    .line 767
    .end local v10    # "combinedDrawable":Lorg/telegram/ui/Components/CombinedDrawable;
    .end local v16    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    const v3, 0x7f0200a3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "profile_actionIcon"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 787
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 788
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    .line 789
    .local v9, "animator":Landroid/animation/StateListAnimator;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

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

    .line 790
    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

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

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$7;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 800
    .end local v9    # "animator":Landroid/animation/StateListAnimator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_b

    const/16 v2, 0x38

    :goto_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_c

    const/high16 v3, 0x42600000    # 56.0f

    :goto_8
    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$8;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SettingsActivity;->needLayout()V

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/SettingsActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/SettingsActivity$9;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 712
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string/jumbo v2, "avatar_backgroundActionBarBlue"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    .line 720
    :cond_5
    const/high16 v2, 0x41a80000    # 21.0f

    goto/16 :goto_1

    .line 723
    :cond_6
    const/16 v2, 0x2a

    goto/16 :goto_2

    :cond_7
    const/high16 v3, 0x42280000    # 42.0f

    goto/16 :goto_3

    :cond_8
    const/16 v4, 0x33

    goto/16 :goto_4

    .line 736
    :cond_9
    const-string/jumbo v2, "profile_title"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_5

    .line 749
    :cond_a
    const-string/jumbo v2, "avatar_subtitleInProfileBlue"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_6

    .line 800
    .restart local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    const/16 v2, 0x3c

    goto :goto_7

    :cond_c
    const/high16 v3, 0x42700000    # 60.0f

    goto :goto_8
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1053
    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v4, :cond_2

    .line 1054
    aget-object v4, p2, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1055
    .local v1, "mask":I
    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_0

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    .line 1056
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->updateUserData()V

    .line 1084
    .end local v1    # "mask":I
    :cond_1
    :goto_0
    return-void

    .line 1058
    :cond_2
    sget v4, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    if-ne p1, v4, :cond_3

    .line 1059
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    if-eqz v4, :cond_1

    .line 1060
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    iget v5, p0, Lorg/telegram/ui/SettingsActivity;->stickersRow:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/SettingsActivity$ListAdapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 1063
    :cond_3
    sget v4, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    if-ne p1, v4, :cond_1

    .line 1064
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1065
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->aboutLinkCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    if-eqz v4, :cond_1

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    aget-object v4, p2, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_1

    .line 1067
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUserAbout(I)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "about":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 1070
    move-object v3, v0

    .line 1079
    .local v3, "value":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->aboutLinkCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    const-string/jumbo v5, "Bio"

    const v6, 0x7f0700c1

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1081
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->aboutLinkCell:Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->invalidate()V

    goto :goto_0

    .line 1072
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->userAbout:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->userAbout:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 1073
    iget-object v3, p0, Lorg/telegram/ui/SettingsActivity;->userAbout:Ljava/lang/String;

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_1

    .line 1075
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "UsernameEmpty"

    const v5, 0x7f07065e

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 885
    if-nez p2, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-object v1

    .line 888
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 889
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_0

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_0

    .line 890
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 891
    .local v2, "photoBig":Lorg/telegram/tgnet/TLRPC$FileLocation;
    iget v5, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v5, v6, :cond_0

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v8, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v5, v6, :cond_0

    .line 892
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 893
    .local v0, "coords":[I
    iget-object v5, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 894
    new-instance v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v1}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 895
    .local v1, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    aget v5, v0, v4

    iput v5, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 896
    const/4 v5, 0x1

    aget v5, v0, v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_2

    :goto_1
    sub-int v4, v5, v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 897
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 898
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 899
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    .line 900
    iget-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 901
    const/4 v4, -0x1

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    .line 902
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    .line 903
    iget-object v4, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v4

    iput v4, v1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    goto/16 :goto_0

    .line 896
    :cond_2
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 1605
    const/16 v0, 0x20

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/EmptyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Lorg/telegram/ui/Cells/TextInfoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->fragmentView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->extraHeightView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundActionBarBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarIconBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_actionBarSelectorBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->nameTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_title"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->onlineTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_subtitleInProfileBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText5"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

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

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_text"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/SettingsActivity;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundInProfileBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_actionIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_actionBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->writeButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "profile_actionPressedBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    return-object v9
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 912
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAbout(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 1108
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 1109
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    const-string/jumbo v3, "https://telegram.me/%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "link":Ljava/lang/String;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/ui/SettingsActivity;->userAbout:Ljava/lang/String;

    .line 1115
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;-><init>()V

    .line 1116
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPagePreview;->message:Ljava/lang/String;

    .line 1118
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/SettingsActivity$11;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/SettingsActivity$11;-><init>(Lorg/telegram/ui/SettingsActivity;I)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/SettingsActivity;->linkSearchRequestId:I

    .line 1149
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/SettingsActivity;->linkSearchRequestId:I

    iget v5, p0, Lorg/telegram/ui/SettingsActivity;->classGuid:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0
.end method

.method public isPhotoChecked(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 926
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/AvatarUpdater;->onActivityResult(IILandroid/content/Intent;)V

    .line 1035
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1154
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1155
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->fixLayout()V

    .line 1156
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 194
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iput-object p0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    new-instance v1, Lorg/telegram/ui/SettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SettingsActivity$1;-><init>(Lorg/telegram/ui/SettingsActivity;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    .line 246
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 247
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 248
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    .line 253
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->overscrollRow:I

    .line 254
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->emptyRow:I

    .line 255
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusHideMobile:Z

    if-nez v0, :cond_0

    .line 256
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->numberSectionRow:I

    .line 257
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->numberRow:I

    .line 259
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->usernameRow:I

    .line 260
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_3

    .line 261
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->aboutRow:I

    .line 265
    :goto_0
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->settingsSectionRow:I

    .line 266
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->settingsSectionRow2:I

    .line 267
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->notificationRow:I

    .line 268
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->privacyRow:I

    .line 269
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->dataRow:I

    .line 270
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->backgroundRow:I

    .line 271
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->themeRow:I

    .line 272
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->languageRow:I

    .line 273
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I

    .line 274
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->messagesSectionRow:I

    .line 275
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->messagesSectionRow2:I

    .line 276
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->customTabsRow:I

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 278
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->directShareRow:I

    .line 280
    :cond_1
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->stickersRow:I

    .line 282
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->textSizeRow:I

    .line 283
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I

    .line 284
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I

    .line 285
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I

    .line 286
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I

    .line 287
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->supportSectionRow:I

    .line 288
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->supportSectionRow2:I

    .line 289
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I

    .line 290
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I

    .line 291
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I

    .line 292
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_2

    .line 293
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I

    .line 294
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I

    .line 295
    iget v0, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/SettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I

    .line 302
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkFeaturedStickers()V

    .line 303
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/SettingsActivity;->classGuid:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullUser(Lorg/telegram/tgnet/TLRPC$User;IZ)V

    .line 304
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/SettingsActivity;->getUserAbout(I)V

    .line 305
    return v3

    .line 263
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/SettingsActivity;->aboutRow:I

    goto/16 :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->cancelLoadFullUser(I)V

    .line 315
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 316
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredStickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 317
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->userInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarUpdater;->clear()V

    .line 319
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1088
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->listAdapter:Lorg/telegram/ui/SettingsActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/SettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1092
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->updateUserData()V

    .line 1093
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->updateTheme()V

    .line 1094
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/SettingsActivity;->fixLayout()V

    .line 1095
    return-void
.end method

.method public restoreSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1046
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const-string/jumbo v1, "path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    .line 1049
    :cond_0
    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1039
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v0, v0, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1040
    const-string/jumbo v0, "path"

    iget-object v1, p0, Lorg/telegram/ui/SettingsActivity;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    iget-object v1, v1, Lorg/telegram/ui/Components/AvatarUpdater;->currentPicturePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_0
    return-void
.end method

.method public scaleToFill()Z
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 940
    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 931
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 871
    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    .line 922
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 917
    return-void
.end method
