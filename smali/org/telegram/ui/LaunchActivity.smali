.class public Lorg/telegram/ui/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LaunchActivity$VcardData;
    }
.end annotation


# static fields
.field private static final callsRow:I = 0xa

.field private static final channelRow:I = 0xc

.field private static final chatsStatsRow:I = 0xe

.field private static final communityRow:I = 0xd

.field private static final faqRow:I = 0x10

.field private static final inviteFriendsRow:I = 0x11

.field private static layerFragmentsStack:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static mainFragmentsStack:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static final plusSettingsRow:I = 0xb

.field private static rightFragmentsStack:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private static final settingsRow:I = 0x9

.field private static final themesRow:I = 0x7

.field private static final themingRow:I = 0x8

.field private static final versionRow:I = 0xf


# instance fields
.field private actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private backgroundTablet:Landroid/view/View;

.field private contactsRow:I

.field private contactsToSend:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private currentConnectionState:I

.field private documentsMimeType:Ljava/lang/String;

.field private documentsOriginalPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private documentsPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private documentsUrisArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

.field protected drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private finished:Z

.field private id:I

.field private layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private lockRunnable:Ljava/lang/Runnable;

.field private mToast:Landroid/widget/Toast;

.field private msg:Ljava/lang/String;

.field private msg1:Ljava/lang/String;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private pass:Z

.field private passcodeSaveIntent:Landroid/content/Intent;

.field private passcodeSaveIntentIsNew:Z

.field private passcodeSaveIntentIsRestore:Z

.field private passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field private photoPathsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private sendingText:Ljava/lang/String;

.field private shadowTablet:Landroid/widget/FrameLayout;

.field private shadowTabletSide:Landroid/widget/FrameLayout;

.field private sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

.field private stat:I

.field private tabletFullSize:Z

.field private time:J

.field private videoPath:Ljava/lang/String;

.field private visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity;->rightFragmentsStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 141
    const/4 v0, 0x6

    iput v0, p0, Lorg/telegram/ui/LaunchActivity;->contactsRow:I

    .line 766
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/LaunchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LaunchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LaunchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;ZZZ)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Ljava/lang/Integer;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # I

    .prologue
    .line 104
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1602(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Lorg/telegram/ui/ActionBar/AlertDialog;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/LaunchActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/telegram/ui/LaunchActivity;->time:J

    return-wide v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/LaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/LaunchActivity;->stat:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->msg1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lorg/telegram/ui/LaunchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lorg/telegram/ui/LaunchActivity;->id:I

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/LaunchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LaunchActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LaunchActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/LaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget v0, p0, Lorg/telegram/ui/LaunchActivity;->contactsRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LaunchActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LaunchActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    return-object p1
.end method

.method private checkLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 646
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez v2, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    sget-boolean v2, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-nez v2, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_9

    .line 651
    :cond_2
    iput-boolean v4, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    .line 652
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v6, :cond_5

    .line 653
    const/4 v0, 0x1

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 654
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 655
    .local v1, "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_3

    move-object v2, v1

    .line 656
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatActivity;->setIgnoreAttachOnPause(Z)V

    .line 658
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 659
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 660
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v0, v0, -0x1

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 663
    .end local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 664
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 665
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 668
    .end local v0    # "a":I
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 669
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 668
    goto :goto_2

    :cond_7
    move v2, v3

    .line 669
    goto :goto_3

    :cond_8
    move v4, v3

    .line 670
    goto :goto_4

    .line 672
    :cond_9
    iput-boolean v5, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    .line 673
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 674
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 675
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 676
    .restart local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_a

    move-object v2, v1

    .line 677
    check-cast v2, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ChatActivity;->setIgnoreAttachOnPause(Z)V

    .line 679
    :cond_a
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 680
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 681
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    add-int/lit8 v0, v0, -0x1

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 684
    .end local v1    # "chatFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_c

    .line 685
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 688
    .end local v0    # "a":I
    :cond_c
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 689
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 690
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    :goto_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    move v3, v4

    goto :goto_6
.end method

.method private getName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 1
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 2460
    if-nez p1, :cond_0

    .line 2461
    const-string/jumbo v0, ""

    .line 2468
    :goto_0
    return-object v0

    .line 2463
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2464
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    goto :goto_0

    .line 2465
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2466
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    goto :goto_0

    .line 2468
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getTitle(J)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # J

    .prologue
    .line 2439
    long-to-int v1, p1

    .line 2440
    .local v1, "lower_id":I
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 2441
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 2442
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v2, :cond_2

    .line 2443
    invoke-direct {p0, v2}, Lorg/telegram/ui/LaunchActivity;->getName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 2456
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_0
    return-object v3

    .line 2446
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2447
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_1

    .line 2448
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    .line 2450
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-int v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 2451
    if-eqz v0, :cond_2

    .line 2452
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    .line 2456
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_2
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;ZZZ)Z
    .locals 78
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "isNew"    # Z
    .param p3, "restore"    # Z
    .param p4, "fromPassword"    # Z

    .prologue
    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v39

    .line 773
    .local v39, "flags":I
    if-nez p4, :cond_1

    const/4 v4, 0x1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-eqz v4, :cond_1

    .line 774
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    .line 775
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntent:Landroid/content/Intent;

    .line 776
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsNew:Z

    .line 777
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeSaveIntentIsRestore:Z

    .line 778
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1399
    const/16 v55, 0x0

    :goto_0
    return v55

    .line 780
    :cond_1
    const/16 v55, 0x0

    .line 782
    .local v55, "pushOpened":Z
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    .line 783
    .local v59, "push_user_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    .line 784
    .local v56, "push_chat_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    .line 785
    .local v57, "push_enc_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    .line 786
    .local v58, "push_msg_id":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    .line 787
    .local v47, "open_settings":Ljava/lang/Integer;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    .line 788
    .local v46, "open_new_dialog":Ljava/lang/Integer;
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v14, "dialogId"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v14, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v34

    .line 789
    .local v34, "dialogId":J
    :goto_1
    const/16 v63, 0x0

    .line 790
    .local v63, "showDialogsList":Z
    const/16 v64, 0x0

    .line 792
    .local v64, "showPlayer":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 793
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    .line 794
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 795
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 796
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 797
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    .line 798
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 799
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    .line 801
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-eqz v4, :cond_d

    const/high16 v4, 0x100000

    and-int v4, v4, v39

    if-nez v4, :cond_d

    .line 802
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    if-nez p3, :cond_d

    .line 803
    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 804
    const/16 v38, 0x0

    .line 805
    .local v38, "error":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v69

    .line 806
    .local v69, "type":Ljava/lang/String;
    if-eqz v69, :cond_19

    const-string/jumbo v4, "text/x-vcard"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 808
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v14, "android.intent.extra.STREAM"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/net/Uri;

    .line 809
    .local v70, "uri":Landroid/net/Uri;
    if-eqz v70, :cond_18

    .line 810
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 811
    .local v28, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, v28

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v65

    .line 812
    .local v65, "stream":Ljava/io/InputStream;
    new-instance v77, Ljava/util/ArrayList;

    invoke-direct/range {v77 .. v77}, Ljava/util/ArrayList;-><init>()V

    .line 813
    .local v77, "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    const/16 v29, 0x0

    .line 815
    .local v29, "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    new-instance v24, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v14, "UTF-8"

    move-object/from16 v0, v65

    invoke-direct {v4, v0, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 817
    .local v24, "bufferedReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v42

    .local v42, "line":Ljava/lang/String;
    if-eqz v42, :cond_15

    .line 818
    invoke-static/range {v42 .. v42}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 819
    const-string/jumbo v4, ":"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 820
    .local v21, "args":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v14, 0x2

    if-ne v4, v14, :cond_2

    .line 823
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string/jumbo v14, "BEGIN"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    aget-object v4, v21, v4

    const-string/jumbo v14, "VCARD"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 824
    new-instance v29, Lorg/telegram/ui/LaunchActivity$VcardData;

    .end local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    const/4 v4, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lorg/telegram/ui/LaunchActivity$VcardData;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/LaunchActivity$1;)V

    .restart local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    move-object/from16 v0, v77

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_3
    :goto_3
    if-eqz v29, :cond_2

    .line 831
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string/jumbo v14, "FN"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string/jumbo v14, "ORG"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 832
    :cond_4
    const/16 v45, 0x0

    .line 833
    .local v45, "nameEncoding":Ljava/lang/String;
    const/16 v44, 0x0

    .line 834
    .local v44, "nameCharset":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string/jumbo v14, ";"

    invoke-virtual {v4, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v50

    .line 835
    .local v50, "params":[Ljava/lang/String;
    move-object/from16 v0, v50

    array-length v14, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v14, :cond_a

    aget-object v49, v50, v4

    .line 836
    .local v49, "param":Ljava/lang/String;
    const-string/jumbo v15, "="

    move-object/from16 v0, v49

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 837
    .local v22, "args2":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v15, v0

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 835
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 788
    .end local v21    # "args":[Ljava/lang/String;
    .end local v22    # "args2":[Ljava/lang/String;
    .end local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v28    # "cr":Landroid/content/ContentResolver;
    .end local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v34    # "dialogId":J
    .end local v38    # "error":Z
    .end local v42    # "line":Ljava/lang/String;
    .end local v44    # "nameCharset":Ljava/lang/String;
    .end local v45    # "nameEncoding":Ljava/lang/String;
    .end local v49    # "param":Ljava/lang/String;
    .end local v50    # "params":[Ljava/lang/String;
    .end local v63    # "showDialogsList":Z
    .end local v64    # "showPlayer":Z
    .end local v65    # "stream":Ljava/io/InputStream;
    .end local v69    # "type":Ljava/lang/String;
    .end local v70    # "uri":Landroid/net/Uri;
    .end local v77    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_6
    const-wide/16 v34, 0x0

    goto/16 :goto_1

    .line 825
    .restart local v21    # "args":[Ljava/lang/String;
    .restart local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v28    # "cr":Landroid/content/ContentResolver;
    .restart local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .restart local v34    # "dialogId":J
    .restart local v38    # "error":Z
    .restart local v42    # "line":Ljava/lang/String;
    .restart local v63    # "showDialogsList":Z
    .restart local v64    # "showPlayer":Z
    .restart local v65    # "stream":Ljava/io/InputStream;
    .restart local v69    # "type":Ljava/lang/String;
    .restart local v70    # "uri":Landroid/net/Uri;
    .restart local v77    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_7
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string/jumbo v14, "END"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    aget-object v4, v21, v4

    const-string/jumbo v14, "VCARD"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 826
    const/16 v29, 0x0

    goto :goto_3

    .line 840
    .restart local v22    # "args2":[Ljava/lang/String;
    .restart local v44    # "nameCharset":Ljava/lang/String;
    .restart local v45    # "nameEncoding":Ljava/lang/String;
    .restart local v49    # "param":Ljava/lang/String;
    .restart local v50    # "params":[Ljava/lang/String;
    :cond_8
    const/4 v15, 0x0

    aget-object v15, v22, v15

    const-string/jumbo v16, "CHARSET"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 841
    const/4 v15, 0x1

    aget-object v44, v22, v15

    goto :goto_5

    .line 842
    :cond_9
    const/4 v15, 0x0

    aget-object v15, v22, v15

    const-string/jumbo v16, "ENCODING"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 843
    const/4 v15, 0x1

    aget-object v45, v22, v15

    goto :goto_5

    .line 846
    .end local v22    # "args2":[Ljava/lang/String;
    .end local v49    # "param":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    .line 847
    if-eqz v45, :cond_2

    const-string/jumbo v4, "QUOTED-PRINTABLE"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 848
    :goto_6
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    const-string/jumbo v14, "="

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v45, :cond_b

    .line 849
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, v29

    iget-object v15, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    .line 850
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v42

    .line 851
    if-nez v42, :cond_13

    .line 856
    :cond_b
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->decodeQuotedPrintable([B)[B

    move-result-object v25

    .line 857
    .local v25, "bytes":[B
    if-eqz v25, :cond_2

    move-object/from16 v0, v25

    array-length v4, v0

    if-eqz v4, :cond_2

    .line 858
    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v44

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 859
    .local v32, "decodedName":Ljava/lang/String;
    if-eqz v32, :cond_2

    .line 860
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 898
    .end local v21    # "args":[Ljava/lang/String;
    .end local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v25    # "bytes":[B
    .end local v28    # "cr":Landroid/content/ContentResolver;
    .end local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v32    # "decodedName":Ljava/lang/String;
    .end local v42    # "line":Ljava/lang/String;
    .end local v44    # "nameCharset":Ljava/lang/String;
    .end local v45    # "nameEncoding":Ljava/lang/String;
    .end local v50    # "params":[Ljava/lang/String;
    .end local v65    # "stream":Ljava/io/InputStream;
    .end local v70    # "uri":Landroid/net/Uri;
    .end local v77    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :catch_0
    move-exception v36

    .line 899
    .local v36, "e":Ljava/lang/Exception;
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 900
    const/16 v38, 0x1

    .line 968
    .end local v36    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_7
    if-eqz v38, :cond_d

    .line 969
    const-string/jumbo v4, "Unsupported content"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1230
    .end local v38    # "error":Z
    .end local v69    # "type":Ljava/lang/String;
    :cond_d
    :goto_8
    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_67

    .line 1231
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1232
    .local v21, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "user_id"

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1233
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_e

    .line 1234
    const-string/jumbo v4, "message_id"

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1235
    :cond_e
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v14, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1236
    :cond_f
    new-instance v40, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1237
    .local v40, "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v4, v0, v14, v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1238
    const/16 v55, 0x1

    .line 1361
    .end local v21    # "args":Landroid/os/Bundle;
    .end local v40    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_10
    :goto_9
    if-nez v55, :cond_12

    if-nez p2, :cond_12

    .line 1362
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1363
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_84

    .line 1364
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1365
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v14, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v14}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1366
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1389
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1390
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1391
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1392
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1396
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 854
    .local v21, "args":[Ljava/lang/String;
    .restart local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v28    # "cr":Landroid/content/ContentResolver;
    .restart local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .restart local v38    # "error":Z
    .restart local v42    # "line":Ljava/lang/String;
    .restart local v44    # "nameCharset":Ljava/lang/String;
    .restart local v45    # "nameEncoding":Ljava/lang/String;
    .restart local v50    # "params":[Ljava/lang/String;
    .restart local v65    # "stream":Ljava/io/InputStream;
    .restart local v69    # "type":Ljava/lang/String;
    .restart local v70    # "uri":Landroid/net/Uri;
    .restart local v77    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_13
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    goto/16 :goto_6

    .line 864
    .end local v44    # "nameCharset":Ljava/lang/String;
    .end local v45    # "nameEncoding":Ljava/lang/String;
    .end local v50    # "params":[Ljava/lang/String;
    :cond_14
    const/4 v4, 0x0

    aget-object v4, v21, v4

    const-string/jumbo v14, "TEL"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 865
    const/4 v4, 0x1

    aget-object v4, v21, v4

    const/4 v14, 0x1

    invoke-static {v4, v14}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v53

    .line 866
    .local v53, "phone":Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 867
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 872
    .end local v21    # "args":[Ljava/lang/String;
    .end local v53    # "phone":Ljava/lang/String;
    :cond_15
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 873
    invoke-virtual/range {v65 .. v65}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 877
    :goto_b
    const/16 v20, 0x0

    .local v20, "a":I
    :goto_c
    :try_start_3
    invoke-virtual/range {v77 .. v77}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_c

    .line 878
    move-object/from16 v0, v77

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Lorg/telegram/ui/LaunchActivity$VcardData;

    .line 879
    .local v76, "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    move-object/from16 v0, v76

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    if-eqz v4, :cond_17

    move-object/from16 v0, v76

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-nez v4, :cond_16

    .line 881
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    .line 884
    :cond_16
    const/16 v23, 0x0

    .local v23, "b":I
    :goto_d
    move-object/from16 v0, v76

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_17

    .line 885
    move-object/from16 v0, v76

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->phones:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 886
    .restart local v53    # "phone":Ljava/lang/String;
    new-instance v73, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct/range {v73 .. v73}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 887
    .local v73, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, v53

    move-object/from16 v1, v73

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 888
    move-object/from16 v0, v76

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity$VcardData;->name:Ljava/lang/String;

    move-object/from16 v0, v73

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 889
    const-string/jumbo v4, ""

    move-object/from16 v0, v73

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 890
    const/4 v4, 0x0

    move-object/from16 v0, v73

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    move-object/from16 v0, v73

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    add-int/lit8 v23, v23, 0x1

    goto :goto_d

    .line 874
    .end local v20    # "a":I
    .end local v23    # "b":I
    .end local v53    # "phone":Ljava/lang/String;
    .end local v73    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v76    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    :catch_1
    move-exception v36

    .line 875
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    .line 877
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v20    # "a":I
    .restart local v76    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    :cond_17
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    .line 896
    .end local v20    # "a":I
    .end local v24    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v28    # "cr":Landroid/content/ContentResolver;
    .end local v29    # "currentData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v42    # "line":Ljava/lang/String;
    .end local v65    # "stream":Ljava/io/InputStream;
    .end local v76    # "vcardData":Lorg/telegram/ui/LaunchActivity$VcardData;
    .end local v77    # "vcardDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/LaunchActivity$VcardData;>;"
    :cond_18
    const/16 v38, 0x1

    goto/16 :goto_7

    .line 903
    .end local v70    # "uri":Landroid/net/Uri;
    :cond_19
    const-string/jumbo v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 904
    .local v67, "text":Ljava/lang/String;
    if-nez v67, :cond_1a

    .line 905
    const-string/jumbo v4, "android.intent.extra.TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v68

    .line 906
    .local v68, "textSequence":Ljava/lang/CharSequence;
    if-eqz v68, :cond_1a

    .line 907
    invoke-interface/range {v68 .. v68}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v67

    .line 910
    .end local v68    # "textSequence":Ljava/lang/CharSequence;
    :cond_1a
    const-string/jumbo v4, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 912
    .local v66, "subject":Ljava/lang/String;
    if-eqz v67, :cond_23

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_23

    .line 913
    const-string/jumbo v4, "http://"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string/jumbo v4, "https://"

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    if-eqz v66, :cond_1c

    invoke-virtual/range {v66 .. v66}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    .line 916
    :cond_1c
    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 921
    :cond_1d
    :goto_e
    const-string/jumbo v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v51

    .line 922
    .local v51, "parcelable":Landroid/os/Parcelable;
    if-eqz v51, :cond_2a

    .line 924
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_1e

    .line 925
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v51

    :cond_1e
    move-object/from16 v70, v51

    .line 927
    check-cast v70, Landroid/net/Uri;

    .line 928
    .restart local v70    # "uri":Landroid/net/Uri;
    if-eqz v70, :cond_1f

    .line 929
    invoke-static/range {v70 .. v70}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 930
    const/16 v38, 0x1

    .line 933
    :cond_1f
    if-nez v38, :cond_c

    .line 934
    if-eqz v70, :cond_24

    if-eqz v69, :cond_20

    const-string/jumbo v4, "image/"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    :cond_20
    invoke-virtual/range {v70 .. v70}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, ".jpg"

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 935
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_22

    .line 936
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 938
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 917
    .end local v51    # "parcelable":Landroid/os/Parcelable;
    .end local v70    # "uri":Landroid/net/Uri;
    :cond_23
    if-eqz v66, :cond_1d

    invoke-virtual/range {v66 .. v66}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    .line 918
    move-object/from16 v0, v66

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    goto :goto_e

    .line 940
    .restart local v51    # "parcelable":Landroid/os/Parcelable;
    .restart local v70    # "uri":Landroid/net/Uri;
    :cond_24
    invoke-static/range {v70 .. v70}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v52

    .line 941
    .local v52, "path":Ljava/lang/String;
    if-eqz v52, :cond_28

    .line 942
    const-string/jumbo v4, "file:"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 943
    const-string/jumbo v4, "file://"

    const-string/jumbo v14, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v52

    .line 945
    :cond_25
    if-eqz v69, :cond_26

    const-string/jumbo v4, "video/"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 946
    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    goto/16 :goto_7

    .line 948
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_27

    .line 949
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 950
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 952
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    invoke-virtual/range {v70 .. v70}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 956
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-nez v4, :cond_29

    .line 957
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    .line 959
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    move-object/from16 v0, v69

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    goto/16 :goto_7

    .line 964
    .end local v52    # "path":Ljava/lang/String;
    .end local v70    # "uri":Landroid/net/Uri;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 965
    const/16 v38, 0x1

    goto/16 :goto_7

    .line 971
    .end local v38    # "error":Z
    .end local v51    # "parcelable":Landroid/os/Parcelable;
    .end local v66    # "subject":Ljava/lang/String;
    .end local v67    # "text":Ljava/lang/String;
    .end local v69    # "type":Ljava/lang/String;
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 972
    const/16 v38, 0x0

    .line 974
    .restart local v38    # "error":Z
    :try_start_4
    const-string/jumbo v4, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v71

    .line 975
    .local v71, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v69

    .line 976
    .restart local v69    # "type":Ljava/lang/String;
    if-eqz v71, :cond_2f

    .line 977
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_f
    invoke-virtual/range {v71 .. v71}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_2e

    .line 978
    move-object/from16 v0, v71

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Parcelable;

    .line 979
    .restart local v51    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_2c

    .line 980
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v51

    .line 982
    :cond_2c
    move-object/from16 v0, v51

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v70, v0

    .line 983
    .restart local v70    # "uri":Landroid/net/Uri;
    if-eqz v70, :cond_2d

    .line 984
    invoke-static/range {v70 .. v70}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 985
    move-object/from16 v0, v71

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 986
    add-int/lit8 v20, v20, -0x1

    .line 977
    :cond_2d
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 990
    .end local v51    # "parcelable":Landroid/os/Parcelable;
    .end local v70    # "uri":Landroid/net/Uri;
    :cond_2e
    invoke-virtual/range {v71 .. v71}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 991
    const/16 v71, 0x0

    .line 994
    .end local v20    # "a":I
    :cond_2f
    if-eqz v71, :cond_38

    .line 995
    if-eqz v69, :cond_32

    const-string/jumbo v4, "image/"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 996
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_10
    invoke-virtual/range {v71 .. v71}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_39

    .line 997
    move-object/from16 v0, v71

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Parcelable;

    .line 998
    .restart local v51    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_30

    .line 999
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v51

    .line 1001
    :cond_30
    move-object/from16 v0, v51

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v70, v0

    .line 1002
    .restart local v70    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_31

    .line 1003
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 1005
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    add-int/lit8 v20, v20, 0x1

    goto :goto_10

    .line 1008
    .end local v20    # "a":I
    .end local v51    # "parcelable":Landroid/os/Parcelable;
    .end local v70    # "uri":Landroid/net/Uri;
    :cond_32
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_11
    invoke-virtual/range {v71 .. v71}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_39

    .line 1009
    move-object/from16 v0, v71

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Parcelable;

    .line 1010
    .restart local v51    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/net/Uri;

    if-nez v4, :cond_33

    .line 1011
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v51

    .line 1013
    :cond_33
    move-object/from16 v0, v51

    check-cast v0, Landroid/net/Uri;

    move-object v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v52

    .line 1014
    .restart local v52    # "path":Ljava/lang/String;
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    .line 1015
    .local v48, "originalPath":Ljava/lang/String;
    if-nez v48, :cond_34

    .line 1016
    move-object/from16 v48, v52

    .line 1018
    :cond_34
    if-eqz v52, :cond_37

    .line 1019
    const-string/jumbo v4, "file:"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1020
    const-string/jumbo v4, "file://"

    const-string/jumbo v14, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v52

    .line 1022
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_36

    .line 1023
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 1024
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 1026
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1008
    :cond_37
    add-int/lit8 v20, v20, 0x1

    goto :goto_11

    .line 1032
    .end local v20    # "a":I
    .end local v48    # "originalPath":Ljava/lang/String;
    .end local v51    # "parcelable":Landroid/os/Parcelable;
    .end local v52    # "path":Ljava/lang/String;
    :cond_38
    const/16 v38, 0x1

    .line 1038
    .end local v69    # "type":Ljava/lang/String;
    .end local v71    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_39
    :goto_12
    if-eqz v38, :cond_d

    .line 1039
    const-string/jumbo v4, "Unsupported content"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 1034
    :catch_2
    move-exception v36

    .line 1035
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1036
    const/16 v38, 0x1

    goto :goto_12

    .line 1041
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v38    # "error":Z
    :cond_3a
    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1042
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v31

    .line 1043
    .local v31, "data":Landroid/net/Uri;
    if-eqz v31, :cond_d

    .line 1044
    const/4 v5, 0x0

    .line 1045
    .local v5, "username":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1046
    .local v6, "group":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1047
    .local v7, "sticker":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1048
    .local v8, "botUser":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1049
    .local v9, "botChat":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1050
    .local v10, "message":Ljava/lang/String;
    const/16 v53, 0x0

    .line 1051
    .restart local v53    # "phone":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1052
    .local v13, "game":Ljava/lang/String;
    const/16 v54, 0x0

    .line 1053
    .local v54, "phoneHash":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1054
    .local v12, "messageId":Ljava/lang/Integer;
    const/4 v11, 0x0

    .line 1055
    .local v11, "hasUrl":Z
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v61

    .line 1056
    .local v61, "scheme":Ljava/lang/String;
    if-eqz v61, :cond_3d

    .line 1057
    const-string/jumbo v4, "http"

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const-string/jumbo v4, "https"

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1058
    :cond_3b
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v41

    .line 1059
    .local v41, "host":Ljava/lang/String;
    const-string/jumbo v4, "telegram.me"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string/jumbo v4, "t.me"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string/jumbo v4, "telegram.dog"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1060
    :cond_3c
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v52

    .line 1061
    .restart local v52    # "path":Ljava/lang/String;
    if-eqz v52, :cond_3d

    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v14, 0x1

    if-le v4, v14, :cond_3d

    .line 1062
    const/4 v4, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v52

    .line 1063
    const-string/jumbo v4, "joinchat/"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1064
    const-string/jumbo v4, "joinchat/"

    const-string/jumbo v14, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1173
    .end local v41    # "host":Ljava/lang/String;
    .end local v52    # "path":Ljava/lang/String;
    :cond_3d
    :goto_13
    if-eqz v10, :cond_3e

    const-string/jumbo v4, "@"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1176
    :cond_3e
    if-nez v53, :cond_3f

    if-eqz v54, :cond_5c

    .line 1177
    :cond_3f
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1178
    .local v21, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "phone"

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    new-instance v4, Lorg/telegram/ui/LaunchActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/LaunchActivity$7;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/os/Bundle;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    .line 1065
    .end local v21    # "args":Landroid/os/Bundle;
    .restart local v41    # "host":Ljava/lang/String;
    .restart local v52    # "path":Ljava/lang/String;
    :cond_40
    const-string/jumbo v4, "addstickers/"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1066
    const-string/jumbo v4, "addstickers/"

    const-string/jumbo v14, ""

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_13

    .line 1067
    :cond_41
    const-string/jumbo v4, "msg/"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    const-string/jumbo v4, "share/"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1068
    :cond_42
    const-string/jumbo v4, "url"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1069
    if-nez v10, :cond_43

    .line 1070
    const-string/jumbo v10, ""

    .line 1072
    :cond_43
    const-string/jumbo v4, "text"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 1073
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_44

    .line 1074
    const/4 v11, 0x1

    .line 1075
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1077
    :cond_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, "text"

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1079
    :cond_45
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v14, 0x4000

    if-le v4, v14, :cond_46

    .line 1080
    const/4 v4, 0x0

    const/16 v14, 0x4000

    invoke-virtual {v10, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1082
    :cond_46
    :goto_14
    const-string/jumbo v4, "\n"

    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1083
    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_14

    .line 1085
    :cond_47
    const-string/jumbo v4, "confirmphone"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1086
    const-string/jumbo v4, "phone"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1087
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_13

    .line 1088
    :cond_48
    invoke-virtual/range {v52 .. v52}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v14, 0x1

    if-lt v4, v14, :cond_3d

    .line 1089
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v62

    .line 1090
    .local v62, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v62 .. v62}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_49

    .line 1091
    const/4 v4, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "username":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1092
    .restart local v5    # "username":Ljava/lang/String;
    invoke-interface/range {v62 .. v62}, Ljava/util/List;->size()I

    move-result v4

    const/4 v14, 0x1

    if-le v4, v14, :cond_49

    .line 1093
    const/4 v4, 0x1

    move-object/from16 v0, v62

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1094
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_49

    .line 1095
    const/4 v12, 0x0

    .line 1099
    :cond_49
    const-string/jumbo v4, "start"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1100
    const-string/jumbo v4, "startgroup"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1101
    const-string/jumbo v4, "game"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_13

    .line 1105
    .end local v41    # "host":Ljava/lang/String;
    .end local v52    # "path":Ljava/lang/String;
    .end local v62    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4a
    const-string/jumbo v4, "tg"

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1106
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v72

    .line 1107
    .local v72, "url":Ljava/lang/String;
    const-string/jumbo v4, "tg:resolve"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string/jumbo v4, "tg://resolve"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1108
    :cond_4b
    const-string/jumbo v4, "tg:resolve"

    const-string/jumbo v14, "tg://telegram.org"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "tg://resolve"

    const-string/jumbo v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v72

    .line 1109
    invoke-static/range {v72 .. v72}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1110
    const-string/jumbo v4, "domain"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1111
    const-string/jumbo v4, "start"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1112
    const-string/jumbo v4, "startgroup"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1113
    const-string/jumbo v4, "game"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1114
    const-string/jumbo v4, "post"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 1115
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3d

    .line 1116
    const/4 v12, 0x0

    goto/16 :goto_13

    .line 1118
    :cond_4c
    const-string/jumbo v4, "tg:join"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string/jumbo v4, "tg://join"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1119
    :cond_4d
    const-string/jumbo v4, "tg:join"

    const-string/jumbo v14, "tg://telegram.org"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "tg://join"

    const-string/jumbo v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v72

    .line 1120
    invoke-static/range {v72 .. v72}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1121
    const-string/jumbo v4, "invite"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_13

    .line 1122
    :cond_4e
    const-string/jumbo v4, "tg:addstickers"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    const-string/jumbo v4, "tg://addstickers"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1123
    :cond_4f
    const-string/jumbo v4, "tg:addstickers"

    const-string/jumbo v14, "tg://telegram.org"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "tg://addstickers"

    const-string/jumbo v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v72

    .line 1124
    invoke-static/range {v72 .. v72}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1125
    const-string/jumbo v4, "set"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_13

    .line 1126
    :cond_50
    const-string/jumbo v4, "tg:msg"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string/jumbo v4, "tg://msg"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string/jumbo v4, "tg://share"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string/jumbo v4, "tg:share"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1127
    :cond_51
    const-string/jumbo v4, "tg:msg"

    const-string/jumbo v14, "tg://telegram.org"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "tg://msg"

    const-string/jumbo v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "tg://share"

    const-string/jumbo v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "tg:share"

    const-string/jumbo v15, "tg://telegram.org"

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v72

    .line 1128
    invoke-static/range {v72 .. v72}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 1129
    const-string/jumbo v4, "url"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1130
    if-nez v10, :cond_52

    .line 1131
    const-string/jumbo v10, ""

    .line 1133
    :cond_52
    const-string/jumbo v4, "text"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 1134
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_53

    .line 1135
    const/4 v11, 0x1

    .line 1136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1138
    :cond_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v14, "text"

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1140
    :cond_54
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v14, 0x4000

    if-le v4, v14, :cond_55

    .line 1141
    const/4 v4, 0x0

    const/16 v14, 0x4000

    invoke-virtual {v10, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1143
    :cond_55
    :goto_15
    const-string/jumbo v4, "\n"

    invoke-virtual {v10, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1144
    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_15

    .line 1146
    :cond_56
    const-string/jumbo v4, "tg:confirmphone"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    const-string/jumbo v4, "tg://confirmphone"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1147
    :cond_57
    const-string/jumbo v4, "phone"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1148
    const-string/jumbo v4, "hash"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    goto/16 :goto_13

    .line 1149
    :cond_58
    const-string/jumbo v4, "tg:openmessage"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_59

    const-string/jumbo v4, "tg://openmessage"

    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1150
    :cond_59
    const-string/jumbo v4, "user_id"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    .line 1151
    .local v74, "userID":Ljava/lang/String;
    const-string/jumbo v4, "chat_id"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1152
    .local v26, "chatID":Ljava/lang/String;
    const-string/jumbo v4, "message_id"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1153
    .local v43, "msgID":Ljava/lang/String;
    if-eqz v74, :cond_5b

    .line 1155
    :try_start_5
    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v59

    .line 1164
    :cond_5a
    :goto_16
    if-eqz v43, :cond_3d

    .line 1166
    :try_start_6
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v58

    goto/16 :goto_13

    .line 1158
    :cond_5b
    if-eqz v26, :cond_5a

    .line 1160
    :try_start_7
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v56

    goto :goto_16

    .line 1186
    .end local v26    # "chatID":Ljava/lang/String;
    .end local v43    # "msgID":Ljava/lang/String;
    .end local v72    # "url":Ljava/lang/String;
    .end local v74    # "userID":Ljava/lang/String;
    :cond_5c
    if-nez v5, :cond_5d

    if-nez v6, :cond_5d

    if-nez v7, :cond_5d

    if-nez v10, :cond_5d

    if-eqz v13, :cond_5e

    .line 1187
    :cond_5d
    const/4 v14, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v14}, Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 1190
    :cond_5e
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 1191
    .local v30, "cursor":Landroid/database/Cursor;
    if-eqz v30, :cond_d

    .line 1192
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1193
    const-string/jumbo v4, "DATA4"

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v75

    .line 1194
    .local v75, "userId":I
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1195
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    .line 1197
    .end local v75    # "userId":I
    :cond_5f
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_8

    .line 1199
    .end local v30    # "cursor":Landroid/database/Cursor;
    :catch_3
    move-exception v36

    .line 1200
    .restart local v36    # "e":Ljava/lang/Exception;
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1204
    .end local v5    # "username":Ljava/lang/String;
    .end local v6    # "group":Ljava/lang/String;
    .end local v7    # "sticker":Ljava/lang/String;
    .end local v8    # "botUser":Ljava/lang/String;
    .end local v9    # "botChat":Ljava/lang/String;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "hasUrl":Z
    .end local v12    # "messageId":Ljava/lang/Integer;
    .end local v13    # "game":Ljava/lang/String;
    .end local v31    # "data":Landroid/net/Uri;
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v53    # "phone":Ljava/lang/String;
    .end local v54    # "phoneHash":Ljava/lang/String;
    .end local v61    # "scheme":Ljava/lang/String;
    :cond_60
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "org.telegram.plus.OPEN_ACCOUNT"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1205
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    goto/16 :goto_8

    .line 1206
    :cond_61
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "new_dialog"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1207
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    goto/16 :goto_8

    .line 1208
    :cond_62
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "com.tmessages.openchat"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1209
    const-string/jumbo v4, "chatId"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 1210
    .local v27, "chatId":I
    const-string/jumbo v4, "userId"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v75

    .line 1211
    .restart local v75    # "userId":I
    const-string/jumbo v4, "encId"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    .line 1212
    .local v37, "encId":I
    if-eqz v27, :cond_63

    .line 1213
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1214
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    goto/16 :goto_8

    .line 1215
    :cond_63
    if-eqz v75, :cond_64

    .line 1216
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1217
    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    goto/16 :goto_8

    .line 1218
    :cond_64
    if-eqz v37, :cond_65

    .line 1219
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1220
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    goto/16 :goto_8

    .line 1222
    :cond_65
    const/16 v63, 0x1

    goto/16 :goto_8

    .line 1224
    .end local v27    # "chatId":I
    .end local v37    # "encId":I
    .end local v75    # "userId":I
    :cond_66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "com.tmessages.openplayer"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1225
    const/16 v64, 0x1

    goto/16 :goto_8

    .line 1241
    :cond_67
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6a

    .line 1242
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1243
    .restart local v21    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "chat_id"

    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1244
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_68

    .line 1245
    const-string/jumbo v4, "message_id"

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1246
    :cond_68
    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v14, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1247
    :cond_69
    new-instance v40, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1248
    .restart local v40    # "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v4, v0, v14, v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1249
    const/16 v55, 0x1

    goto/16 :goto_9

    .line 1252
    .end local v21    # "args":Landroid/os/Bundle;
    .end local v40    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_6a
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_6b

    .line 1253
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1254
    .restart local v21    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "enc_id"

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1255
    new-instance v40, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1256
    .restart local v40    # "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v4, v0, v14, v15, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1257
    const/16 v55, 0x1

    goto/16 :goto_9

    .line 1259
    .end local v21    # "args":Landroid/os/Bundle;
    .end local v40    # "fragment":Lorg/telegram/ui/ChatActivity;
    :cond_6b
    if-eqz v63, :cond_6f

    .line 1260
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_6d

    .line 1261
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 1271
    :cond_6c
    :goto_17
    const/16 v55, 0x0

    .line 1272
    const/16 p2, 0x0

    goto/16 :goto_9

    .line 1263
    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6c

    .line 1264
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_6e

    .line 1265
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v14, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1266
    add-int/lit8 v20, v20, -0x1

    .line 1264
    add-int/lit8 v20, v20, 0x1

    goto :goto_18

    .line 1268
    :cond_6e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_17

    .line 1273
    .end local v20    # "a":I
    :cond_6f
    if-eqz v64, :cond_75

    .line 1274
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1275
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_70

    .line 1276
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1277
    .local v40, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, v40

    instance-of v4, v0, Lorg/telegram/ui/AudioPlayerActivity;

    if-eqz v4, :cond_71

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1282
    .end local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_70
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1283
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1295
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v14, Lorg/telegram/ui/AudioPlayerActivity;

    invoke-direct {v14}, Lorg/telegram/ui/AudioPlayerActivity;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1296
    const/16 v55, 0x1

    goto/16 :goto_9

    .line 1275
    .restart local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_71
    add-int/lit8 v20, v20, 0x1

    goto :goto_19

    .line 1286
    .end local v20    # "a":I
    .end local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_72
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_73

    .line 1287
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1288
    .restart local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, v40

    instance-of v4, v0, Lorg/telegram/ui/AudioPlayerActivity;

    if-eqz v4, :cond_74

    .line 1289
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1293
    .end local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_73
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_1a

    .line 1286
    .restart local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_74
    add-int/lit8 v20, v20, 0x1

    goto :goto_1b

    .line 1297
    .end local v20    # "a":I
    .end local v40    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_75
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-nez v4, :cond_76

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_76

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-nez v4, :cond_76

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v4, :cond_76

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-nez v4, :cond_76

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-eqz v4, :cond_80

    .line 1298
    :cond_76
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-nez v4, :cond_77

    .line 1299
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v14, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1301
    :cond_77
    const-wide/16 v14, 0x0

    cmp-long v4, v34, v14

    if-nez v4, :cond_7f

    .line 1302
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1303
    .restart local v21    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "onlySelect"

    const/4 v14, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-eqz v4, :cond_79

    .line 1305
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v14, "SendContactTo"

    const v15, 0x7f070597

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string/jumbo v4, "selectAlertStringGroup"

    const-string/jumbo v14, "SendContactToGroup"

    const v15, 0x7f07058e

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    :goto_1c
    new-instance v40, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1312
    .local v40, "fragment":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1314
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_7a

    const/16 v60, 0x1

    .line 1319
    .local v60, "removeLast":Z
    :goto_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v60

    invoke-virtual {v4, v0, v1, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1320
    const/16 v55, 0x1

    .line 1321
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1322
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 1327
    :cond_78
    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1328
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1329
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1330
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto/16 :goto_9

    .line 1308
    .end local v40    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v60    # "removeLast":Z
    :cond_79
    const-string/jumbo v4, "selectAlertString"

    const-string/jumbo v14, "SendMessagesTo"

    const v15, 0x7f070597

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string/jumbo v4, "selectAlertStringGroup"

    const-string/jumbo v14, "SendMessagesToGroup"

    const v15, 0x7f070598

    invoke-static {v14, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1315
    .restart local v40    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_7a
    const/16 v60, 0x0

    goto :goto_1d

    .line 1317
    :cond_7b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v14, 0x1

    if-le v4, v14, :cond_7c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/DialogsActivity;

    if-eqz v4, :cond_7c

    const/16 v60, 0x1

    .restart local v60    # "removeLast":Z
    :goto_1f
    goto/16 :goto_1d

    .end local v60    # "removeLast":Z
    :cond_7c
    const/16 v60, 0x0

    goto :goto_1f

    .line 1323
    .restart local v60    # "removeLast":Z
    :cond_7d
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 1324
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto/16 :goto_1e

    .line 1332
    :cond_7e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_9

    .line 1335
    .end local v21    # "args":Landroid/os/Bundle;
    .end local v40    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v60    # "removeLast":Z
    :cond_7f
    const/4 v4, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v4, v1, v2, v14}, Lorg/telegram/ui/LaunchActivity;->didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V

    goto/16 :goto_9

    .line 1337
    :cond_80
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_82

    .line 1338
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v14, Lorg/telegram/ui/SettingsActivity;

    invoke-direct {v14}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1339
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1340
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1341
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1342
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1346
    :goto_20
    const/16 v55, 0x1

    goto/16 :goto_9

    .line 1344
    :cond_81
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_20

    .line 1347
    :cond_82
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_10

    .line 1348
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1349
    .restart local v21    # "args":Landroid/os/Bundle;
    const-string/jumbo v4, "destroyAfterSelect"

    const/4 v14, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v14, Lorg/telegram/ui/ContactsActivity;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1351
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 1352
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1353
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 1354
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1358
    :goto_21
    const/16 v55, 0x1

    goto/16 :goto_9

    .line 1356
    :cond_83
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_21

    .line 1369
    .end local v21    # "args":Landroid/os/Bundle;
    :cond_84
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1370
    new-instance v33, Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1371
    .local v33, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1373
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1377
    .end local v33    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_85
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1378
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-nez v4, :cond_86

    .line 1379
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    new-instance v14, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v14}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1380
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1382
    :cond_86
    new-instance v33, Lorg/telegram/ui/DialogsActivity;

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1383
    .restart local v33    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1385
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_a

    .line 1167
    .end local v33    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    .restart local v5    # "username":Ljava/lang/String;
    .restart local v6    # "group":Ljava/lang/String;
    .restart local v7    # "sticker":Ljava/lang/String;
    .restart local v8    # "botUser":Ljava/lang/String;
    .restart local v9    # "botChat":Ljava/lang/String;
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v11    # "hasUrl":Z
    .restart local v12    # "messageId":Ljava/lang/Integer;
    .restart local v13    # "game":Ljava/lang/String;
    .restart local v26    # "chatID":Ljava/lang/String;
    .restart local v31    # "data":Landroid/net/Uri;
    .restart local v43    # "msgID":Ljava/lang/String;
    .restart local v53    # "phone":Ljava/lang/String;
    .restart local v54    # "phoneHash":Ljava/lang/String;
    .restart local v61    # "scheme":Ljava/lang/String;
    .restart local v72    # "url":Ljava/lang/String;
    .restart local v74    # "userID":Ljava/lang/String;
    :catch_4
    move-exception v4

    goto/16 :goto_13

    .line 1161
    :catch_5
    move-exception v4

    goto/16 :goto_16

    .line 1156
    :catch_6
    move-exception v4

    goto/16 :goto_16
.end method

.method private onFinish()V
    .locals 2

    .prologue
    .line 1868
    iget-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->finished:Z

    if-eqz v0, :cond_0

    .line 1887
    :goto_0
    return-void

    .line 1871
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/LaunchActivity;->finished:Z

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1873
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1874
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 1876
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1877
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1878
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1879
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1880
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1881
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1882
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1883
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1885
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->showStatusNotifications:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private onPasscodePause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x3e8

    .line 2473
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2474
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2475
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2477
    :cond_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2478
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    sput v0, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 2479
    new-instance v0, Lorg/telegram/ui/LaunchActivity$20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LaunchActivity$20;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2493
    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v0, :cond_2

    .line 2494
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2501
    :cond_1
    :goto_0
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2502
    return-void

    .line 2495
    :cond_2
    sget v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-eqz v0, :cond_1

    .line 2496
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    sget v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-long v2, v1

    mul-long/2addr v2, v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 2499
    :cond_3
    sput v6, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    goto :goto_0
.end method

.method private onPasscodeResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2505
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2506
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2507
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LaunchActivity;->lockRunnable:Ljava/lang/Runnable;

    .line 2509
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2510
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity()V

    .line 2512
    :cond_1
    sget v0, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v0, :cond_2

    .line 2513
    sput v1, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 2514
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2516
    :cond_2
    return-void
.end method

.method private runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;I)V
    .locals 20
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "sticker"    # Ljava/lang/String;
    .param p4, "botUser"    # Ljava/lang/String;
    .param p5, "botChat"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "hasUrl"    # Z
    .param p8, "messageId"    # Ljava/lang/Integer;
    .param p9, "game"    # Ljava/lang/String;
    .param p10, "state"    # I

    .prologue
    .line 1403
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1404
    .local v5, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f070356

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1405
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1406
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 1407
    const/16 v18, 0x0

    .line 1409
    .local v18, "requestId":I
    if-eqz p1, :cond_2

    .line 1410
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 1411
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 1412
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v3, Lorg/telegram/ui/LaunchActivity$8;

    move-object/from16 v4, p0

    move-object/from16 v6, p9

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move-object/from16 v9, p8

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/LaunchActivity$8;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v18

    .line 1728
    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    .line 1729
    move/from16 v17, v18

    .line 1730
    .local v17, "reqId":I
    const/4 v3, -0x2

    const-string/jumbo v4, "Cancel"

    const v6, 0x7f0700f0

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/telegram/ui/LaunchActivity$12;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/LaunchActivity$12;-><init>(Lorg/telegram/ui/LaunchActivity;I)V

    invoke-virtual {v5, v3, v4, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1741
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1743
    .end local v17    # "reqId":I
    :cond_1
    :goto_1
    return-void

    .line 1561
    :cond_2
    if-eqz p2, :cond_4

    .line 1562
    if-nez p10, :cond_3

    .line 1563
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;-><init>()V

    .line 1564
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;->hash:Ljava/lang/String;

    .line 1565
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v19

    new-instance v3, Lorg/telegram/ui/LaunchActivity$9;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v3 .. v14}, Lorg/telegram/ui/LaunchActivity$9;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;)V

    const/4 v4, 0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v18

    .line 1629
    goto :goto_0

    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_checkChatInvite;
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p10

    if-ne v0, v3, :cond_0

    .line 1630
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;-><init>()V

    .line 1631
    .local v16, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;->hash:Ljava/lang/String;

    .line 1632
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LaunchActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/LaunchActivity$10;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    const/4 v6, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 1685
    .end local v16    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;
    :cond_4
    if-eqz p3, :cond_5

    .line 1686
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1687
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 1688
    .local v9, "stickerset":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;
    move-object/from16 v0, p3

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;->short_name:Ljava/lang/String;

    .line 1689
    sget-object v3, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v4, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1690
    .local v8, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    new-instance v6, Lorg/telegram/ui/Components/StickersAlert;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1

    .line 1693
    .end local v8    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v9    # "stickerset":Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;
    :cond_5
    if-eqz p6, :cond_0

    .line 1694
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1695
    .local v15, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "onlySelect"

    const/4 v4, 0x1

    invoke-virtual {v15, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1696
    new-instance v8, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v8, v15}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1697
    .local v8, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v3, Lorg/telegram/ui/LaunchActivity$11;

    move-object/from16 v0, p0

    move/from16 v1, p7

    move-object/from16 v2, p6

    invoke-direct {v3, v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$11;-><init>(Lorg/telegram/ui/LaunchActivity;ZLjava/lang/String;)V

    invoke-virtual {v8, v3}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1725
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v3, v4}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_0
.end method

.method private showPasscodeActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-nez v0, :cond_0

    .line 764
    :goto_0
    return-void

    .line 739
    :cond_0
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 740
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 745
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onShow()V

    .line 746
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$6;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V

    goto :goto_0

    .line 742
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 743
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 27
    .param p1, "uid"    # I

    .prologue
    .line 2304
    const/16 v23, 0x0

    :try_start_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->stat:I

    .line 2305
    if-nez p1, :cond_8

    .line 2306
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2307
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_1

    .line 2436
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 2310
    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    :cond_1
    const-string/jumbo v20, ""

    .line 2311
    .local v20, "title":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 2312
    .local v11, "entry":Ljava/util/Map$Entry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2313
    .local v14, "key":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/ui/LaunchActivity;->getTitle(J)Ljava/lang/String;

    move-result-object v20

    .line 2314
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2315
    .local v9, "cs":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->stat:I

    .line 2316
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 2317
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "entry":Ljava/util/Map$Entry;
    check-cast v11, Ljava/util/Map$Entry;

    .line 2318
    .restart local v11    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2319
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/ui/LaunchActivity;->getTitle(J)Ljava/lang/String;

    move-result-object v20

    .line 2320
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2364
    .end local v11    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    .end local v14    # "key":J
    .end local v20    # "title":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 2371
    :cond_3
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    .line 2375
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    .line 2376
    sget-boolean v23, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationToBottom:Z

    if-eqz v23, :cond_e

    const/16 v7, 0x50

    .line 2377
    .local v7, "TB":I
    :goto_2
    sget v23, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPosition:I

    if-nez v23, :cond_f

    const/4 v6, 0x3

    .line 2378
    .local v6, "LCR":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    or-int v24, v7, v6

    const/16 v25, 0x0

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPadding:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    invoke-virtual/range {v23 .. v26}, Landroid/widget/Toast;->setGravity(III)V

    .line 2379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 2380
    .local v12, "group":Landroid/view/ViewGroup;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2381
    const/high16 v23, 0x3f800000    # 1.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2382
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 2383
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 2384
    .local v21, "tv":Landroid/widget/TextView;
    const/16 v23, 0x1

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationSize:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2385
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2386
    const/high16 v23, 0x3f800000    # 1.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    const/16 v24, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2390
    .end local v21    # "tv":Landroid/widget/TextView;
    :cond_4
    new-instance v17, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2391
    .local v17, "shape":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v23, 0x40800000    # 4.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2392
    const/high16 v23, -0x78000000

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2393
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2396
    .end local v6    # "LCR":I
    .end local v7    # "TB":I
    .end local v12    # "group":Landroid/view/ViewGroup;
    .end local v17    # "shape":Landroid/graphics/drawable/GradientDrawable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 2402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/LaunchActivity;->time:J

    .line 2403
    new-instance v23, Lorg/telegram/ui/LaunchActivity$19;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$19;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    const-wide/16 v24, 0xbb8

    invoke-static/range {v23 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2432
    .end local v9    # "cs":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 2433
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "tmessages"

    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2322
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "cs":Ljava/lang/String;
    .restart local v11    # "entry":Ljava/util/Map$Entry;
    .restart local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    .restart local v14    # "key":J
    .restart local v20    # "title":Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg1:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg1:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 2325
    :cond_7
    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/telegram/ui/LaunchActivity;->msg1:Ljava/lang/String;

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 2327
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 2331
    .end local v9    # "cs":Ljava/lang/String;
    .end local v11    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/CharSequence;>;>;"
    .end local v14    # "key":J
    .end local v20    # "title":Ljava/lang/String;
    :cond_8
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->stat:I

    .line 2332
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v22

    .line 2333
    .local v22, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v22, :cond_0

    .line 2337
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockedUsers:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 2338
    sget-boolean v23, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlyIfContactFav:Z

    if-eqz v23, :cond_9

    .line 2339
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v23

    if-nez v23, :cond_9

    invoke-static {}, Lorg/telegram/ui/Components/Favorite;->getInstance()Lorg/telegram/ui/Components/Favorite;

    move-result-object v23

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/Components/Favorite;->isFavorite(Ljava/lang/Long;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 2342
    :cond_9
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "\\s"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2343
    .local v16, "name":[Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    const/16 v23, 0x0

    aget-object v8, v16, v23

    .line 2344
    .local v8, "c":Ljava/lang/CharSequence;
    :goto_4
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v23

    const/16 v24, 0x1a

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x1a

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v8, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2345
    :cond_a
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v23

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 2352
    .local v18, "t":J
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStatusOffline;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    sget-boolean v23, Lorg/telegram/ui/ActionBar/Theme;->plusShowOfflineToast:Z

    if-eqz v23, :cond_d

    .line 2353
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "Offline"

    const v25, 0x7f070455

    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2359
    .restart local v9    # "cs":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/LaunchActivity;->id:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_b

    .line 2360
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->msg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2362
    :cond_b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->id:I

    goto/16 :goto_1

    .line 2343
    .end local v8    # "c":Ljava/lang/CharSequence;
    .end local v9    # "cs":Ljava/lang/String;
    .end local v18    # "t":J
    :cond_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 2354
    .restart local v8    # "c":Ljava/lang/CharSequence;
    .restart local v18    # "t":J
    :cond_d
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userStatusOnline;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    const-wide/16 v24, -0x12c

    cmp-long v23, v18, v24

    if-gtz v23, :cond_0

    sget-boolean v23, Lorg/telegram/ui/ActionBar/Theme;->plusShowOnlineToast:Z

    if-eqz v23, :cond_0

    .line 2355
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "Online"

    const v25, 0x7f070456

    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "cs":Ljava/lang/String;
    goto/16 :goto_5

    .line 2376
    .end local v8    # "c":Ljava/lang/CharSequence;
    .end local v16    # "name":[Ljava/lang/CharSequence;
    .end local v18    # "t":J
    .end local v22    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_e
    const/16 v7, 0x30

    goto/16 :goto_2

    .line 2377
    .restart local v7    # "TB":I
    :cond_f
    sget v23, Lorg/telegram/ui/ActionBar/Theme;->plusToastNotificationPosition:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    const/16 v6, 0x11

    goto/16 :goto_3

    :cond_10
    const/4 v6, 0x5

    goto/16 :goto_3
.end method

.method private updateCurrentConnectionState()V
    .locals 3

    .prologue
    .line 2519
    const/4 v0, 0x0

    .line 2520
    .local v0, "text":Ljava/lang/String;
    iget v1, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2521
    const-string/jumbo v1, "WaitingForNetwork"

    const v2, 0x7f07069a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2527
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setTitleOverlayText(Ljava/lang/String;)V

    .line 2528
    return-void

    .line 2522
    :cond_1
    iget v1, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2523
    const-string/jumbo v1, "Connecting"

    const v2, 0x7f070195

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2524
    :cond_2
    iget v1, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2525
    const-string/jumbo v1, "Updating"

    const v2, 0x7f070652

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyLogin(Landroid/content/SharedPreferences;)V
    .locals 13
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 695
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 696
    .local v6, "id":Ljava/lang/String;
    const/4 v1, 0x0

    .line 698
    .local v1, "code":I
    :try_start_0
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 699
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    iget v9, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit8 v1, v9, 0xa
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string/jumbo v9, "code"

    const/4 v10, -0x1

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 704
    .local v8, "version":I
    const-string/jumbo v9, "did"

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "did":Ljava/lang/String;
    const-string/jumbo v9, "mode"

    const/4 v10, -0x1

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 707
    .local v2, "currentMode":I
    const-string/jumbo v9, "auid"

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "auid":Ljava/lang/String;
    const/4 v9, -0x1

    if-eq v2, v9, :cond_1

    const/4 v9, 0x1

    if-lt v2, v9, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 710
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 711
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "auid"

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 712
    const-string/jumbo v9, "iuid"

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 713
    const-string/jumbo v9, "mode"

    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 714
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 715
    const-string/jumbo v9, "did"

    invoke-interface {v5, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 717
    :cond_2
    if-eq v8, v1, :cond_3

    .line 718
    const-string/jumbo v9, "code"

    invoke-interface {v5, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 720
    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 722
    sget-object v9, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    sget-object v10, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG_SECRET:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {p0, v9, v10, v11, v12}, Lnet/hockeyapp/android/LoginManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    .line 723
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-static {p0, v9}, Lnet/hockeyapp/android/LoginManager;->verifyLogin(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 727
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    const/4 v9, 0x2

    if-ne v2, v9, :cond_5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v0, :cond_5

    .line 728
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 729
    .restart local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "pass"

    const/4 v10, 0x1

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 730
    const-string/jumbo v9, "code"

    invoke-interface {v5, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 731
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 732
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/LaunchActivity;->pass:Z

    .line 734
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    return-void

    .line 700
    .end local v0    # "auid":Ljava/lang/String;
    .end local v2    # "currentMode":I
    .end local v3    # "did":Ljava/lang/String;
    .end local v8    # "version":I
    :catch_0
    move-exception v4

    .line 701
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2175
    sget v8, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v8, :cond_6

    .line 2176
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    if-eqz v8, :cond_0

    .line 2177
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    .line 2179
    :cond_0
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2180
    .local v3, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_0

    .line 2182
    .end local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2183
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2184
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2185
    .restart local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_1

    .line 2187
    .end local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2188
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2189
    .restart local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    goto :goto_2

    .line 2191
    .end local v3    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2193
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lorg/telegram/ui/IntroActivity;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2194
    .local v4, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 2195
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2196
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2299
    .end local v4    # "intent2":Landroid/content/Intent;
    :cond_5
    :goto_3
    return-void

    .line 2197
    :cond_6
    sget v8, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    if-ne p1, v8, :cond_7

    .line 2198
    aget-object v8, p2, v9

    if-eq v8, p0, :cond_5

    .line 2199
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2200
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_3

    .line 2202
    :cond_7
    sget v8, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    if-ne p1, v8, :cond_8

    .line 2203
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v6

    .line 2204
    .local v6, "state":I
    iget v8, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    if-eq v8, v6, :cond_5

    .line 2205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "switch to state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2206
    iput v6, p0, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    .line 2207
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->updateCurrentConnectionState()V

    goto :goto_3

    .line 2209
    .end local v6    # "state":I
    :cond_8
    sget v8, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    if-ne p1, v8, :cond_9

    .line 2210
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 2211
    :cond_9
    sget v8, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    if-ne p1, v8, :cond_e

    .line 2212
    aget-object v5, p2, v9

    check-cast v5, Ljava/lang/Integer;

    .line 2213
    .local v5, "reason":Ljava/lang/Integer;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2214
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v8, "AppName"

    const v9, 0x7f070078

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2215
    const-string/jumbo v8, "OK"

    const v9, 0x7f070452

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2216
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v12, :cond_a

    .line 2217
    const-string/jumbo v8, "MoreInfo"

    const v9, 0x7f0703ac

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/LaunchActivity$17;

    invoke-direct {v9, p0}, Lorg/telegram/ui/LaunchActivity$17;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2226
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_c

    .line 2227
    const-string/jumbo v8, "NobodyLikesSpam1"

    const v9, 0x7f0703f1

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2233
    :cond_b
    :goto_4
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 2234
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v9, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2228
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_d

    .line 2229
    const-string/jumbo v8, "NobodyLikesSpam2"

    const v9, 0x7f0703f2

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4

    .line 2230
    :cond_d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v12, :cond_b

    .line 2231
    aget-object v8, p2, v10

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_4

    .line 2236
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v5    # "reason":Ljava/lang/Integer;
    :cond_e
    sget v8, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    if-ne p1, v8, :cond_f

    .line 2237
    aget-object v7, p2, v9

    check-cast v7, Ljava/util/HashMap;

    .line 2238
    .local v7, "waitingForLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2239
    .restart local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v8, "AppName"

    const v9, 0x7f070078

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2240
    const-string/jumbo v8, "OK"

    const v9, 0x7f070452

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2241
    const-string/jumbo v8, "ShareYouLocationUnableManually"

    const v9, 0x7f0705c6

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/LaunchActivity$18;

    invoke-direct {v9, p0, v7}, Lorg/telegram/ui/LaunchActivity$18;-><init>(Lorg/telegram/ui/LaunchActivity;Ljava/util/HashMap;)V

    invoke-virtual {v0, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2264
    const-string/jumbo v8, "ShareYouLocationUnable"

    const v9, 0x7f0705c5

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2265
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 2266
    sget-object v8, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    sget-object v9, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2268
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v7    # "waitingForLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    :cond_f
    sget v8, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-ne p1, v8, :cond_10

    .line 2269
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v8, :cond_5

    .line 2270
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2271
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 2272
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .line 2275
    .end local v1    # "child":Landroid/view/View;
    :cond_10
    sget v8, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, v8, :cond_12

    .line 2276
    sget-object v8, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_11

    sget-boolean v8, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v8, :cond_11

    .line 2278
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x2000

    const/16 v10, 0x2000

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2279
    :catch_0
    move-exception v2

    .line 2280
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2284
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_11
    :try_start_1
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 2285
    :catch_1
    move-exception v2

    .line 2286
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2291
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_12
    sget v8, Lorg/telegram/messenger/NotificationCenter;->showStatusNotifications:I

    if-ne p1, v8, :cond_5

    .line 2292
    aget-object v8, p2, v10

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2293
    iput-object v11, p0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    goto/16 :goto_3

    .line 2295
    :cond_13
    aget-object v8, p2, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lorg/telegram/ui/LaunchActivity;->showToast(I)V

    goto/16 :goto_3
.end method

.method public didSelectDialog(Lorg/telegram/ui/DialogsActivity;JZ)V
    .locals 20
    .param p1, "dialogsFragment"    # Lorg/telegram/ui/DialogsActivity;
    .param p2, "dialog_id"    # J
    .param p4, "param"    # Z

    .prologue
    .line 1778
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2

    .line 1779
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v19, v0

    .line 1780
    .local v19, "lower_part":I
    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v0, v2

    move/from16 v18, v0

    .line 1782
    .local v18, "high_id":I
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 1783
    .local v16, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "scrollToTopOnResume"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1784
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1785
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1787
    :cond_0
    if-eqz v19, :cond_5

    .line 1788
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 1789
    const-string/jumbo v2, "chat_id"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1800
    :cond_1
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1865
    .end local v16    # "args":Landroid/os/Bundle;
    .end local v18    # "high_id":I
    .end local v19    # "lower_part":I
    :cond_2
    :goto_1
    return-void

    .line 1791
    .restart local v16    # "args":Landroid/os/Bundle;
    .restart local v18    # "high_id":I
    .restart local v19    # "lower_part":I
    :cond_3
    if-lez v19, :cond_4

    .line 1792
    const-string/jumbo v2, "user_id"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1793
    :cond_4
    if-gez v19, :cond_1

    .line 1794
    const-string/jumbo v2, "chat_id"

    move/from16 v0, v19

    neg-int v3, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1798
    :cond_5
    const-string/jumbo v2, "enc_id"

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1803
    :cond_6
    new-instance v17, Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1805
    .local v17, "fragment":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 1806
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_d

    .line 1807
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1808
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v2, :cond_8

    .line 1809
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1820
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2, v4}, Lorg/telegram/ui/ChatActivity;->openVideoEditor(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1821
    if-eqz p1, :cond_c

    .line 1822
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity;->finishFragment(Z)V

    .line 1858
    :cond_7
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    .line 1859
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    .line 1860
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1861
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    .line 1862
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    .line 1863
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1811
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 1812
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1813
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 1814
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto :goto_2

    .line 1817
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_5

    .line 1820
    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    .line 1824
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto :goto_4

    .line 1828
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_e

    const/4 v2, 0x1

    move v3, v2

    :goto_6
    if-nez p1, :cond_f

    const/4 v2, 0x1

    :goto_7
    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v3, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1829
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->videoPath:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v11, p2

    invoke-static/range {v3 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1828
    :cond_e
    const/4 v2, 0x0

    move v3, v2

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    goto :goto_7

    .line 1832
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz p1, :cond_16

    const/4 v2, 0x1

    move v3, v2

    :goto_8
    if-nez p1, :cond_17

    const/4 v2, 0x1

    :goto_9
    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v3, v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 1834
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_12

    .line 1835
    const/4 v7, 0x0

    .line 1836
    .local v7, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1837
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1838
    .restart local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    .line 1841
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LaunchActivity;->photoPathsArray:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 1844
    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 1845
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->sendingText:Ljava/lang/String;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingText(Ljava/lang/String;J)V

    .line 1848
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    .line 1849
    :cond_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LaunchActivity;->documentsPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/LaunchActivity;->documentsOriginalPathsArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/ui/LaunchActivity;->documentsUrisArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/LaunchActivity;->documentsMimeType:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 v12, p2

    invoke-static/range {v8 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    .line 1851
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1852
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity;->contactsToSend:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 1853
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_a

    .line 1832
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_16
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_8

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_9
.end method

.method public getActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public getLayersActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public getRightActionBarLayout()Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method public needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 7
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2798
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2799
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2800
    instance-of v2, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 2801
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    .line 2802
    .local v1, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 2803
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2804
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2805
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2806
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2807
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2808
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_0

    .line 2809
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2810
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2811
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2857
    .end local v1    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v2, v4

    .line 2799
    goto :goto_0

    .line 2816
    :cond_2
    instance-of v2, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_6

    .line 2817
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_4

    .line 2818
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2819
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2820
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2821
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2822
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2823
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_3

    .line 2824
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2825
    add-int/lit8 v0, v0, -0x1

    .line 2823
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2827
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_1

    .line 2830
    .end local v0    # "a":I
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 2831
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2832
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2833
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_5

    .line 2834
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2835
    add-int/lit8 v0, v0, -0x1

    .line 2833
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2837
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    .line 2841
    .end local v0    # "a":I
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p2, v2, :cond_8

    .line 2842
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2843
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2844
    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-eqz v2, :cond_7

    .line 2845
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2846
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2847
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2851
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 2849
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    const/high16 v3, 0x7f000000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_4

    :cond_8
    move v4, v3

    .line 2854
    goto/16 :goto_1

    .line 2856
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v2, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_a

    instance-of v2, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v2, :cond_a

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    move v4, v3

    .line 2857
    goto/16 :goto_1

    :cond_a
    move v2, v4

    .line 2856
    goto :goto_5
.end method

.method public needCloseLastFragment(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 4
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2863
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2864
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_0

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 2865
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2866
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2887
    :goto_0
    return v0

    .line 2868
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_2

    .line 2869
    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v2, :cond_1

    .line 2870
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    move v0, v1

    .line 2887
    goto :goto_0

    .line 2872
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 2873
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2874
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_0

    .line 2878
    :cond_3
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_4

    .line 2879
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2880
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_0

    .line 2883
    :cond_4
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/LoginActivity;

    if-nez v2, :cond_1

    .line 2884
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto :goto_1
.end method

.method public needPresentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 8
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z
    .param p4, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2706
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2707
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    .line 2709
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2710
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v3, :cond_2

    instance-of v3, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2711
    instance-of v3, p1, Lorg/telegram/ui/DialogsActivity;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 2712
    check-cast v1, Lorg/telegram/ui/DialogsActivity;

    .line 2713
    .local v1, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_3

    .line 2714
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2715
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2716
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2717
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2718
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2719
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_1

    .line 2720
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2721
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2722
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2792
    .end local v1    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    :cond_1
    :goto_1
    return v5

    :cond_2
    move v3, v5

    .line 2710
    goto :goto_0

    .line 2728
    :cond_3
    instance-of v3, p1, Lorg/telegram/ui/ChatActivity;

    if-eqz v3, :cond_18

    .line 2729
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p4, v3, :cond_c

    .line 2730
    :cond_5
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p4, v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_7

    :cond_6
    move v2, v4

    .line 2731
    .local v2, "result":Z
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2732
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_8

    .line 2733
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2734
    add-int/lit8 v0, v0, -0x1

    .line 2732
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "a":I
    .end local v2    # "result":Z
    :cond_7
    move v2, v5

    .line 2730
    goto :goto_2

    .line 2736
    .restart local v0    # "a":I
    .restart local v2    # "result":Z
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_b

    :goto_4
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 2738
    .end local v0    # "a":I
    :cond_9
    if-nez v2, :cond_a

    .line 2739
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, v5, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    :cond_a
    move v5, v2

    .line 2741
    goto :goto_1

    .restart local v0    # "a":I
    :cond_b
    move v4, v5

    .line 2736
    goto :goto_4

    .line 2742
    .end local v0    # "a":I
    .end local v2    # "result":Z
    :cond_c
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_f

    .line 2743
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2744
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2745
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeAllFragments()V

    .line 2746
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2747
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2748
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_5
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_d

    .line 2749
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2750
    add-int/lit8 v0, v0, -0x1

    .line 2748
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2752
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_e

    :goto_6
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    :cond_e
    move v4, v5

    goto :goto_6

    .line 2755
    .end local v0    # "a":I
    :cond_f
    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity;->tabletFullSize:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_13

    .line 2756
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_10

    move v3, v4

    :goto_7
    invoke-virtual {v6, p1, v3, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    .line 2757
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2758
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_8
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_11

    .line 2759
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2760
    add-int/lit8 v0, v0, -0x1

    .line 2758
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .end local v0    # "a":I
    :cond_10
    move v3, v5

    .line 2756
    goto :goto_7

    .line 2762
    .restart local v0    # "a":I
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_12

    :goto_9
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto/16 :goto_1

    :cond_12
    move v4, v5

    goto :goto_9

    .line 2766
    .end local v0    # "a":I
    :cond_13
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 2767
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_a
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_14

    .line 2768
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2769
    add-int/lit8 v0, v0, -0x1

    .line 2767
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2771
    :cond_14
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-nez p3, :cond_16

    move v3, v4

    :goto_b
    invoke-virtual {v6, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    .line 2773
    .end local v0    # "a":I
    :cond_15
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v6, v6, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v4, :cond_17

    :goto_c
    invoke-virtual {v3, p1, v4, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_1

    .restart local v0    # "a":I
    :cond_16
    move v3, v5

    .line 2771
    goto :goto_b

    .end local v0    # "a":I
    :cond_17
    move v4, v5

    .line 2773
    goto :goto_c

    .line 2776
    :cond_18
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eq p4, v3, :cond_1a

    .line 2777
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 2778
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v3, v5, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 2779
    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-eqz v3, :cond_19

    .line 2780
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2781
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2782
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2786
    :goto_d
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1, p2, p3, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_1

    .line 2784
    :cond_19
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    const/high16 v4, 0x7f000000

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_d

    :cond_1a
    move v5, v4

    .line 2789
    goto/16 :goto_1

    .line 2791
    :cond_1b
    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    instance-of v3, p1, Lorg/telegram/ui/LoginActivity;

    if-nez v3, :cond_1c

    instance-of v3, p1, Lorg/telegram/ui/CountrySelectActivity;

    if-nez v3, :cond_1c

    move v3, v4

    :goto_e
    invoke-virtual {v6, v3, v5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    move v5, v4

    .line 2792
    goto/16 :goto_1

    :cond_1c
    move v3, v5

    .line 2791
    goto :goto_e
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2647
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 2648
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2656
    :cond_0
    :goto_0
    return-void

    .line 2651
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    .line 2652
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2653
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    .line 2654
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeFinished(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2620
    invoke-super {p0, p1}, Landroid/app/Activity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 2622
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 2623
    .local v2, "menu":Landroid/view/Menu;
    if-eqz v2, :cond_0

    .line 2624
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z

    move-result v1

    .line 2625
    .local v1, "extended":Z
    if-nez v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2626
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z

    move-result v1

    .line 2627
    if-nez v1, :cond_0

    .line 2628
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->extendActionMode(Landroid/view/Menu;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2635
    .end local v1    # "extended":Z
    .end local v2    # "menu":Landroid/view/Menu;
    :cond_0
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2643
    :cond_1
    :goto_1
    return-void

    .line 2632
    :catch_0
    move-exception v0

    .line 2633
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2638
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    .line 2639
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2640
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    .line 2641
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onActionModeStarted(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1911
    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-eqz v2, :cond_0

    .line 1912
    sput v3, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 1913
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1915
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1916
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v0

    .line 1917
    .local v0, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v0, :cond_1

    .line 1918
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/ThemeEditorView;->onActivityResult(IILandroid/content/Intent;)V

    .line 1920
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1921
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1922
    .local v1, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1924
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1925
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1926
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1927
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1929
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1930
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1931
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 1934
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_4
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2580
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2581
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 2606
    :cond_0
    :goto_0
    return-void

    .line 2584
    :cond_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2585
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    .line 2586
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2587
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_0

    .line 2588
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2589
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_0

    .line 2590
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2591
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 2592
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_0

    .line 2594
    :cond_5
    const/4 v0, 0x0

    .line 2595
    .local v0, "cancel":Z
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2596
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2597
    .local v1, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v4

    if-nez v4, :cond_7

    move v0, v2

    .line 2599
    .end local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_6
    :goto_1
    if-nez v0, :cond_0

    .line 2600
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto :goto_0

    .restart local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_7
    move v0, v3

    .line 2597
    goto :goto_1

    .line 2604
    .end local v0    # "cancel":Z
    .end local v1    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2153
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 2154
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2155
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 2156
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v1

    .line 2157
    .local v1, "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v1, :cond_0

    .line 2158
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2160
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v0

    .line 2161
    .local v0, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v0, :cond_1

    .line 2162
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->onConfigurationChanged()V

    .line 2164
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 33
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    .line 163
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/NativeCrashManager;->handleDumpFiles(Landroid/app/Activity;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 166
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v28

    if-nez v28, :cond_3

    .line 167
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 168
    .local v15, "intent":Landroid/content/Intent;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_2

    const-string/jumbo v28, "android.intent.action.SEND"

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_0

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v29, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 169
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    .line 643
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 173
    .restart local v15    # "intent":Landroid/content/Intent;
    :cond_2
    if-eqz v15, :cond_3

    const-string/jumbo v28, "fromIntro"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-nez v28, :cond_3

    .line 174
    sget-object v28, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v29, "logininfo2"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 175
    .local v21, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v26

    .line 176
    .local v26, "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 177
    new-instance v16, Landroid/content/Intent;

    const-class v28, Lorg/telegram/ui/IntroActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v16, "intent2":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->finish()V

    goto :goto_0

    .line 186
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "intent2":Landroid/content/Intent;
    .end local v21    # "preferences":Landroid/content/SharedPreferences;
    .end local v26    # "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_3
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->requestWindowFeature(I)Z

    .line 187
    const v28, 0x7f090007

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->setTheme(I)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v28

    const v29, 0x7f020283

    invoke-virtual/range {v28 .. v29}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 189
    sget-object v28, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_4

    sget-boolean v28, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    if-nez v28, :cond_4

    .line 191
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v28

    const/16 v29, 0x2000

    const/16 v30, 0x2000

    invoke-virtual/range {v28 .. v30}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :cond_4
    :goto_1
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    sget v28, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v29, 0x18

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_5

    .line 199
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->isInMultiWindowMode()Z

    move-result v28

    sput-boolean v28, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    .line 201
    :cond_5
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 202
    sget-object v28, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_6

    sget-boolean v28, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    if-eqz v28, :cond_6

    .line 203
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v28

    sput v28, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 206
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string/jumbo v29, "status_bar_height"

    const-string/jumbo v30, "dimen"

    const-string/jumbo v31, "android"

    invoke-virtual/range {v28 .. v31}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 207
    .local v23, "resourceId":I
    if-lez v23, :cond_7

    .line 208
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    sput v28, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 211
    :cond_7
    new-instance v28, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 213
    new-instance v28, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    new-instance v29, Landroid/view/ViewGroup$LayoutParams;

    const/16 v30, -0x1

    const/16 v31, -0x1

    invoke-direct/range {v29 .. v31}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 217
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v28

    const/16 v29, 0x10

    invoke-virtual/range {v28 .. v29}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 219
    new-instance v17, Lorg/telegram/ui/LaunchActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$1;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V

    .line 281
    .local v17, "launchLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    const/16 v29, -0x1

    const/high16 v30, -0x40800000    # -1.0f

    invoke-static/range {v29 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v28, Landroid/view/View;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    .line 284
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f020049

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 285
    .local v10, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v28, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v29, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v10, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->backgroundTablet:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, -0x1

    const/16 v30, -0x1

    invoke-static/range {v29 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 291
    new-instance v28, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    sget-object v29, Lorg/telegram/ui/LaunchActivity;->rightFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 296
    new-instance v28, Landroid/widget/FrameLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const v29, 0x40295274

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTabletSide:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 300
    new-instance v28, Landroid/widget/FrameLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v29, v0

    sget-object v28, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_b

    const/16 v28, 0x8

    :goto_2
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    const/high16 v29, 0x7f000000

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/ui/LaunchActivity$2;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$2;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/ui/LaunchActivity$3;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$3;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    new-instance v28, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setRemoveActionBarExtraHeight(Z)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->shadowTablet:Landroid/widget/FrameLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundView(Landroid/view/View;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setUseAlphaAnimations(Z)V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    const v29, 0x7f02003e

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setBackgroundResource(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    sget-object v29, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v29, v0

    sget-object v28, Lorg/telegram/ui/LaunchActivity;->layerFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_c

    const/16 v28, 0x8

    :goto_3
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setVisibility(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 353
    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "launchLayout":Landroid/widget/RelativeLayout;
    :goto_4
    new-instance v28, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->chatsHeaderColor:I

    invoke-static/range {v28 .. v29}, Lorg/telegram/ui/Components/Glow;->setEdgeGlowColor(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    const-string/jumbo v29, "chats_menuBackground"

    invoke-static/range {v29 .. v29}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerLayout(Landroid/view/ViewGroup;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/ui/Components/RecyclerListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout$LayoutParams;

    .line 365
    .local v18, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v24

    .line 366
    .local v24, "screenSize":Landroid/graphics/Point;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v28

    if-eqz v28, :cond_e

    const/high16 v28, 0x43a00000    # 320.0f

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    :goto_5
    move/from16 v0, v28

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 367
    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/ui/LaunchActivity$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/LaunchActivity$4;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setParentActionBarLayout(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    sget-object v29, Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->init(Ljava/util/ArrayList;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarLayout$ActionBarLayoutDelegate;)V

    .line 494
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->loadWallpaper()V

    .line 496
    new-instance v28, Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    move-object/from16 v29, v0

    const/16 v30, -0x1

    const/high16 v31, -0x40800000    # -1.0f

    invoke-static/range {v30 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object p0, v30, v31

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 500
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/LaunchActivity;->currentConnectionState:I

    .line 502
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 503
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 504
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->closeOtherAppActivities:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 505
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->didUpdatedConnectionState:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 506
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 507
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->wasUnableToFindCurrentLocation:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 508
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 509
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 511
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v28

    sget v29, Lorg/telegram/messenger/NotificationCenter;->showStatusNotifications:I

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_10

    .line 514
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v28

    if-nez v28, :cond_f

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    new-instance v29, Lorg/telegram/ui/LoginActivity;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/ui/LoginActivity;-><init>()V

    invoke-virtual/range {v28 .. v29}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 525
    :goto_6
    if-eqz p1, :cond_9

    .line 526
    :try_start_1
    const-string/jumbo v28, "fragment"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 527
    .local v13, "fragmentName":Ljava/lang/String;
    if-eqz v13, :cond_9

    .line 528
    const-string/jumbo v28, "args"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 529
    .local v6, "args":Landroid/os/Bundle;
    const/16 v28, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v29

    sparse-switch v29, :sswitch_data_0

    :cond_8
    :goto_7
    packed-switch v28, :pswitch_data_0

    .line 605
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v13    # "fragmentName":Ljava/lang/String;
    :cond_9
    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 607
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const/16 v30, 0x0

    if-eqz p1, :cond_15

    const/16 v28, 0x1

    :goto_9
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v28

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 610
    :try_start_2
    sget-object v19, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 611
    .local v19, "os1":Ljava/lang/String;
    sget-object v20, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 612
    .local v20, "os2":Ljava/lang/String;
    if-eqz v19, :cond_16

    .line 613
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 617
    :goto_a
    if-eqz v20, :cond_17

    .line 618
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 622
    :goto_b
    const-string/jumbo v28, "flyme"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_a

    const-string/jumbo v28, "flyme"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 623
    :cond_a
    const/16 v28, 0x1

    sput-boolean v28, Lorg/telegram/messenger/AndroidUtilities;->incorrectDisplaySizeFix:Z

    .line 624
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v27

    .line 625
    .local v27, "view":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v28

    new-instance v29, Lorg/telegram/ui/LaunchActivity$5;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity$5;-><init>(Lorg/telegram/ui/LaunchActivity;Landroid/view/View;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual/range {v28 .. v29}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 639
    .end local v19    # "os1":Ljava/lang/String;
    .end local v20    # "os2":Ljava/lang/String;
    .end local v27    # "view":Landroid/view/View;
    :catch_0
    move-exception v11

    .line 640
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 192
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v18    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v23    # "resourceId":I
    .end local v24    # "screenSize":Landroid/graphics/Point;
    :catch_1
    move-exception v11

    .line 193
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 301
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v17    # "launchLayout":Landroid/widget/RelativeLayout;
    .restart local v23    # "resourceId":I
    :cond_b
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 347
    :cond_c
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 350
    .end local v10    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "launchLayout":Landroid/widget/RelativeLayout;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v29, v0

    new-instance v30, Landroid/view/ViewGroup$LayoutParams;

    const/16 v31, -0x1

    const/16 v32, -0x1

    invoke-direct/range {v30 .. v32}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 366
    .restart local v18    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v24    # "screenSize":Landroid/graphics/Point;
    :cond_e
    const/high16 v28, 0x43a00000    # 320.0f

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->min(II)I

    move-result v29

    const/high16 v30, 0x42600000    # 56.0f

    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v30

    sub-int v29, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v28

    goto/16 :goto_5

    .line 518
    :cond_f
    new-instance v9, Lorg/telegram/ui/DialogsActivity;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 519
    .local v9, "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_6

    .line 529
    .end local v9    # "dialogsActivity":Lorg/telegram/ui/DialogsActivity;
    .restart local v6    # "args":Landroid/os/Bundle;
    .restart local v13    # "fragmentName":Ljava/lang/String;
    :sswitch_0
    :try_start_3
    const-string/jumbo v29, "chat"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/16 v28, 0x0

    goto/16 :goto_7

    :sswitch_1
    const-string/jumbo v29, "settings"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/16 v28, 0x1

    goto/16 :goto_7

    :sswitch_2
    const-string/jumbo v29, "group"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/16 v28, 0x2

    goto/16 :goto_7

    :sswitch_3
    const-string/jumbo v29, "channel"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/16 v28, 0x3

    goto/16 :goto_7

    :sswitch_4
    const-string/jumbo v29, "edit"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/16 v28, 0x4

    goto/16 :goto_7

    :sswitch_5
    const-string/jumbo v29, "chat_profile"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/16 v28, 0x5

    goto/16 :goto_7

    :sswitch_6
    const-string/jumbo v29, "wallpapers"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    const/16 v28, 0x6

    goto/16 :goto_7

    .line 531
    :pswitch_0
    if-eqz v6, :cond_9

    .line 532
    new-instance v8, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v8, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 533
    .local v8, "chat":Lorg/telegram/ui/ChatActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 534
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ChatActivity;->restoreSelfArgs(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_8

    .line 585
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v8    # "chat":Lorg/telegram/ui/ChatActivity;
    .end local v13    # "fragmentName":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 586
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 539
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "args":Landroid/os/Bundle;
    .restart local v13    # "fragmentName":Ljava/lang/String;
    :pswitch_1
    :try_start_4
    new-instance v25, Lorg/telegram/ui/SettingsActivity;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    .line 540
    .local v25, "settings":Lorg/telegram/ui/SettingsActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 541
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SettingsActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 545
    .end local v25    # "settings":Lorg/telegram/ui/SettingsActivity;
    :pswitch_2
    if-eqz v6, :cond_9

    .line 546
    new-instance v14, Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {v14, v6}, Lorg/telegram/ui/GroupCreateFinalActivity;-><init>(Landroid/os/Bundle;)V

    .line 547
    .local v14, "group":Lorg/telegram/ui/GroupCreateFinalActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 548
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/telegram/ui/GroupCreateFinalActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 553
    .end local v14    # "group":Lorg/telegram/ui/GroupCreateFinalActivity;
    :pswitch_3
    if-eqz v6, :cond_9

    .line 554
    new-instance v7, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v7, v6}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 555
    .local v7, "channel":Lorg/telegram/ui/ChannelCreateActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 556
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ChannelCreateActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 561
    .end local v7    # "channel":Lorg/telegram/ui/ChannelCreateActivity;
    :pswitch_4
    if-eqz v6, :cond_9

    .line 562
    new-instance v7, Lorg/telegram/ui/ChannelEditActivity;

    invoke-direct {v7, v6}, Lorg/telegram/ui/ChannelEditActivity;-><init>(Landroid/os/Bundle;)V

    .line 563
    .local v7, "channel":Lorg/telegram/ui/ChannelEditActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 564
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ChannelEditActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 569
    .end local v7    # "channel":Lorg/telegram/ui/ChannelEditActivity;
    :pswitch_5
    if-eqz v6, :cond_9

    .line 570
    new-instance v22, Lorg/telegram/ui/ProfileActivity;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 571
    .local v22, "profile":Lorg/telegram/ui/ProfileActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 572
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity;->restoreSelfArgs(Landroid/os/Bundle;)V

    goto/16 :goto_8

    .line 577
    .end local v22    # "profile":Lorg/telegram/ui/ProfileActivity;
    :pswitch_6
    new-instance v25, Lorg/telegram/ui/WallpapersActivity;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/ui/WallpapersActivity;-><init>()V

    .line 578
    .local v25, "settings":Lorg/telegram/ui/WallpapersActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 579
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/WallpapersActivity;->restoreSelfArgs(Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_8

    .line 589
    .end local v6    # "args":Landroid/os/Bundle;
    .end local v13    # "fragmentName":Ljava/lang/String;
    .end local v25    # "settings":Lorg/telegram/ui/WallpapersActivity;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 590
    .local v12, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    instance-of v0, v12, Lorg/telegram/ui/DialogsActivity;

    move/from16 v28, v0

    if-eqz v28, :cond_11

    .line 591
    check-cast v12, Lorg/telegram/ui/DialogsActivity;

    .end local v12    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->sideMenu:Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Lorg/telegram/ui/DialogsActivity;->setSideMenu(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 593
    :cond_11
    const/4 v5, 0x1

    .line 594
    .local v5, "allowOpen":Z
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v28

    if-eqz v28, :cond_12

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_14

    const/4 v5, 0x1

    .line 596
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Lorg/telegram/ui/LoginActivity;

    move/from16 v28, v0

    if-eqz v28, :cond_12

    .line 597
    const/4 v5, 0x0

    .line 600
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    instance-of v0, v0, Lorg/telegram/ui/LoginActivity;

    move/from16 v28, v0

    if-eqz v28, :cond_13

    .line 601
    const/4 v5, 0x0

    .line 603
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    goto/16 :goto_8

    .line 595
    :cond_14
    const/4 v5, 0x0

    goto :goto_c

    .line 607
    .end local v5    # "allowOpen":Z
    :cond_15
    const/16 v28, 0x0

    goto/16 :goto_9

    .line 615
    .restart local v19    # "os1":Ljava/lang/String;
    .restart local v20    # "os2":Ljava/lang/String;
    :cond_16
    :try_start_5
    const-string/jumbo v19, ""

    goto/16 :goto_a

    .line 620
    :cond_17
    const-string/jumbo v20, ""
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_b

    .line 529
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b244d4f -> :sswitch_6
        -0x5070143e -> :sswitch_5
        0x2e9358 -> :sswitch_0
        0x2f6e0a -> :sswitch_4
        0x5e0f67f -> :sswitch_2
        0x2c0b7d03 -> :sswitch_3
        0x5582bc23 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2045
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer;->destroyPhotoViewer()V

    .line 2046
    invoke-static {}, Lorg/telegram/ui/SecretPhotoViewer;->getInstance()Lorg/telegram/ui/SecretPhotoViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/SecretPhotoViewer;->destroyPhotoViewer()V

    .line 2047
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->destroyArticleViewer()V

    .line 2048
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/StickerPreviewViewer;->destroy()V

    .line 2049
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->destroyResources()V

    .line 2050
    invoke-static {}, Lorg/telegram/ui/Components/EmbedBottomSheet;->getInstance()Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v2

    .line 2051
    .local v2, "embedBottomSheet":Lorg/telegram/ui/Components/EmbedBottomSheet;
    if-eqz v2, :cond_0

    .line 2052
    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->destroy()V

    .line 2054
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/ThemeEditorView;->getInstance()Lorg/telegram/ui/Components/ThemeEditorView;

    move-result-object v1

    .line 2055
    .local v1, "editorView":Lorg/telegram/ui/Components/ThemeEditorView;
    if-eqz v1, :cond_1

    .line 2056
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ThemeEditorView;->destroy()V

    .line 2059
    :cond_1
    :try_start_0
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v4, :cond_2

    .line 2060
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 2061
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2067
    :cond_2
    :goto_0
    :try_start_1
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v4, :cond_3

    .line 2068
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 2069
    .local v3, "view":Landroid/view/View;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_5

    .line 2070
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2078
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    if-eqz v4, :cond_4

    .line 2079
    iput-object v6, p0, Lorg/telegram/ui/LaunchActivity;->mToast:Landroid/widget/Toast;

    .line 2081
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2082
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onFinish()V

    .line 2104
    return-void

    .line 2063
    :catch_0
    move-exception v0

    .line 2064
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2072
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "view":Landroid/view/View;
    :cond_5
    :try_start_2
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2075
    .end local v3    # "view":Landroid/view/View;
    :catch_1
    move-exception v0

    .line 2076
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 2672
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    if-nez v0, :cond_2

    .line 2673
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2674
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2701
    :goto_0
    return v0

    .line 2675
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2676
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2678
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2679
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2680
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2701
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2681
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2682
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2684
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2687
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 2688
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawerOpened()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2689
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2690
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2692
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto :goto_1

    .line 2694
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_1

    .line 2697
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 2610
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2611
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2612
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2614
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onLowMemory()V

    .line 2616
    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 2168
    sput-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    .line 2169
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->checkLayout()V

    .line 2170
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1772
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1773
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/telegram/ui/LaunchActivity;->handleIntent(Landroid/content/Intent;ZZZ)Z

    .line 1774
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2006
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2007
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 2008
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$15;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2015
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onPasscodePause()V

    .line 2016
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 2017
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 2019
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onPause()V

    .line 2021
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_1

    .line 2022
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onPause()V

    .line 2024
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 2025
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->unregisterUpdates()V

    .line 2026
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2027
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->onPause()V

    .line 2029
    :cond_2
    return-void
.end method

.method public onPreIme()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2660
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2661
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    .line 2667
    :goto_0
    return v0

    .line 2663
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2664
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2667
    goto :goto_0
.end method

.method public onRebuildAllFragments(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 2
    .param p1, "layout"    # Lorg/telegram/ui/ActionBar/ActionBarLayout;

    .prologue
    const/4 v1, 0x1

    .line 2902
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2903
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-ne p1, v0, :cond_0

    .line 2904
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 2905
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 2906
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 2907
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 2910
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    .line 2911
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/16 v9, 0x13

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1938
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1939
    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    if-eq p1, v8, :cond_0

    if-eq p1, v9, :cond_0

    const/16 v3, 0x14

    if-ne p1, v3, :cond_b

    .line 1940
    :cond_0
    const/4 v2, 0x1

    .line 1941
    .local v2, "showAlert":Z
    array-length v3, p3

    if-lez v3, :cond_5

    aget v3, p3, v5

    if-nez v3, :cond_5

    .line 1942
    if-ne p1, v7, :cond_2

    .line 1943
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths()V

    .line 2002
    .end local v2    # "showAlert":Z
    :cond_1
    :goto_0
    return-void

    .line 1945
    .restart local v2    # "showAlert":Z
    :cond_2
    if-ne p1, v8, :cond_3

    .line 1946
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    goto :goto_0

    .line 1948
    :cond_3
    if-eq p1, v6, :cond_1

    .line 1950
    if-eq p1, v9, :cond_4

    const/16 v3, 0x14

    if-ne p1, v3, :cond_5

    .line 1951
    :cond_4
    const/4 v2, 0x0

    .line 1954
    :cond_5
    if-eqz v2, :cond_c

    .line 1955
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1956
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v3, "AppName"

    const v4, 0x7f070078

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1957
    if-ne p1, v6, :cond_7

    .line 1958
    const-string/jumbo v3, "PermissionNoAudio"

    const v4, 0x7f0704c2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1966
    :cond_6
    :goto_1
    const-string/jumbo v3, "PermissionOpenSettings"

    const v4, 0x7f0704c7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LaunchActivity$14;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LaunchActivity$14;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1979
    const-string/jumbo v3, "OK"

    const v4, 0x7f070452

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1980
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 1959
    :cond_7
    if-ne p1, v7, :cond_8

    .line 1960
    const-string/jumbo v3, "PermissionStorage"

    const v4, 0x7f0704c8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1961
    :cond_8
    if-ne p1, v8, :cond_9

    .line 1962
    const-string/jumbo v3, "PermissionContacts"

    const v4, 0x7f0704c0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1963
    :cond_9
    if-eq p1, v9, :cond_a

    const/16 v3, 0x14

    if-ne p1, v3, :cond_6

    .line 1964
    :cond_a
    const-string/jumbo v3, "PermissionNoCamera"

    const v4, 0x7f0704c4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 1983
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "showAlert":Z
    :cond_b
    const/4 v3, 0x2

    if-ne p1, v3, :cond_c

    .line 1984
    array-length v3, p3

    if-lez v3, :cond_c

    aget v3, p3, v5

    if-nez v3, :cond_c

    .line 1985
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1988
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_d

    .line 1989
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1990
    .local v1, "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 1992
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1993
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_e

    .line 1994
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1995
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    .line 1997
    .end local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1998
    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v3, v3, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1999
    .restart local v1    # "fragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2109
    sput-boolean v2, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    .line 2110
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/LaunchActivity$16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LaunchActivity$16;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2117
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->onPasscodeResume()V

    .line 2118
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2119
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2120
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2121
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2122
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onResume()V

    .line 2132
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "org.telegram.plus.beta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2133
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForCrashes(Landroid/app/Activity;)V

    .line 2134
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForUpdates(Landroid/app/Activity;)V

    .line 2144
    :cond_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 2145
    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity;->updateCurrentConnectionState()V

    .line 2146
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2147
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->onResume()V

    .line 2149
    :cond_2
    return-void

    .line 2125
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2126
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2127
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2128
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->dismissDialogs()V

    .line 2130
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2533
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2534
    const/4 v3, 0x0

    .line 2535
    .local v3, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2536
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2537
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2549
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 2550
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 2551
    .local v1, "args":Landroid/os/Bundle;
    instance-of v4, v3, Lorg/telegram/ui/ChatActivity;

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 2552
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2553
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "chat"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    :cond_1
    :goto_1
    invoke-virtual {v3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->saveSelfArgs(Landroid/os/Bundle;)V

    .line 2576
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_2
    :goto_2
    return-void

    .line 2538
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2539
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->rightActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 2540
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2541
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 2544
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2545
    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v5, v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    goto :goto_0

    .line 2554
    .restart local v1    # "args":Landroid/os/Bundle;
    :cond_6
    instance-of v4, v3, Lorg/telegram/ui/SettingsActivity;

    if-eqz v4, :cond_7

    .line 2555
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "settings"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2573
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :catch_0
    move-exception v2

    .line 2574
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2556
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v3    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_7
    :try_start_1
    instance-of v4, v3, Lorg/telegram/ui/GroupCreateFinalActivity;

    if-eqz v4, :cond_8

    if-eqz v1, :cond_8

    .line 2557
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2558
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "group"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2559
    :cond_8
    instance-of v4, v3, Lorg/telegram/ui/WallpapersActivity;

    if-eqz v4, :cond_9

    .line 2560
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "wallpapers"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2561
    :cond_9
    instance-of v4, v3, Lorg/telegram/ui/ProfileActivity;

    if-eqz v4, :cond_a

    move-object v0, v3

    check-cast v0, Lorg/telegram/ui/ProfileActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/telegram/ui/ProfileActivity;->isChat()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    .line 2562
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2563
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "chat_profile"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2564
    :cond_a
    instance-of v4, v3, Lorg/telegram/ui/ChannelCreateActivity;

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    const-string/jumbo v4, "step"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    .line 2565
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2566
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "channel"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2567
    :cond_b
    instance-of v4, v3, Lorg/telegram/ui/ChannelEditActivity;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 2568
    const-string/jumbo v4, "args"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2569
    const-string/jumbo v4, "fragment"

    const-string/jumbo v5, "edit"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 2033
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2034
    invoke-static {p0}, Lorg/telegram/messenger/browser/Browser;->bindCustomTabsService(Landroid/app/Activity;)V

    .line 2035
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 2039
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2040
    invoke-static {p0}, Lorg/telegram/messenger/browser/Browser;->unbindCustomTabsService(Landroid/app/Activity;)V

    .line 2041
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 1890
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1891
    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "removeLast"    # Z
    .param p3, "forceWithoutAnimation"    # Z

    .prologue
    .line 1894
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method

.method public rebuildAllFragments(Z)V
    .locals 1
    .param p1, "last"    # Z

    .prologue
    .line 2891
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 2892
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 2893
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->layersActionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    .line 2898
    :goto_0
    return-void

    .line 2895
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 2896
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    goto :goto_0
.end method

.method public showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 4
    .param p1, "builder"    # Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x0

    .line 1747
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v2, :cond_0

    .line 1748
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 1749
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1756
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1757
    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v3, Lorg/telegram/ui/LaunchActivity$13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LaunchActivity$13;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1763
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1767
    :goto_1
    return-object v1

    .line 1751
    :catch_0
    move-exception v0

    .line 1752
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1764
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1765
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
