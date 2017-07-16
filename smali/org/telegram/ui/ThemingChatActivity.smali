.class public Lorg/telegram/ui/ThemingChatActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ThemingChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ThemingChatActivity$ListAdapter;
    }
.end annotation


# static fields
.field public static final CENTER:I


# instance fields
.field private attachBGColorRow:I

.field private attachBGGradientColorRow:I

.field private attachBGGradientRow:I

.field private attachTextColorRow:I

.field private avatarAlignTopRow:I

.field private avatarMarginLeftRow:I

.field private avatarRadiusRow:I

.field private avatarSizeRow:I

.field private bubblesRow:I

.field private checksColorRow:I

.field private checksRow:I

.field private commandColorCheckRow:I

.field private commandColorRow:I

.field private contactNameColorRow:I

.field private dateBubbleColorRow:I

.field private dateColorRow:I

.field private dateSizeRow:I

.field private editTextBGColorRow:I

.field private editTextBGGradientColorRow:I

.field private editTextBGGradientRow:I

.field private editTextColorRow:I

.field private editTextIconsColorRow:I

.field private editTextSizeRow:I

.field private emojiViewBGColorRow:I

.field private emojiViewBGGradientColorRow:I

.field private emojiViewBGGradientRow:I

.field private emojiViewTabColorRow:I

.field private emojiViewTabIconColorRow:I

.field private forwardLeftNameColorRow:I

.field private forwardRightNameColorRow:I

.field private gradientBGColorRow:I

.field private gradientBGRow:I

.field private headerAvatarRadiusRow:I

.field private headerColorRow:I

.field private headerGradientColorRow:I

.field private headerGradientRow:I

.field private headerIconsColorRow:I

.field private headerSection2Row:I

.field private hideStatusIndicatorCheckRow:I

.field private lBubbleColorRow:I

.field private lLinkColorRow:I

.field private lTextColorRow:I

.field private lTimeColorRow:I

.field private listAdapter:Lorg/telegram/ui/ThemingChatActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private memberColorCheckRow:I

.field private memberColorRow:I

.field private muteColorRow:I

.field private nameColorRow:I

.field private nameSizeRow:I

.field private onlineColorRow:I

.field private ownAvatarAlignTopRow:I

.field private quickBarColorRow:I

.field private quickBarNamesColorRow:I

.field private rBubbleColorRow:I

.field private rLinkColorRow:I

.field private rTextColorRow:I

.field private rTimeColorRow:I

.field private rowCount:I

.field private rowsSection2Row:I

.field private rowsSectionRow:I

.field private selectedMessageBGColorRow:I

.field private sendColorRow:I

.field private showContactAvatar:I

.field private showOwnAvatar:I

.field private showOwnAvatarGroup:I

.field private showPrefix:Z

.field private showUsernameCheckRow:I

.field private solidBGColorCheckRow:I

.field private solidBGColorRow:I

.field private statusColorRow:I

.field private statusSizeRow:I

.field private textSizeRow:I

.field private timeSizeRow:I

.field private typingColorRow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 1595
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ThemingChatActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/telegram/ui/ThemingChatActivity;->showPrefix:Z

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ThemingChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lorg/telegram/ui/ThemingChatActivity;->showPrefix:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ThemingChatActivity;)Lorg/telegram/ui/ThemingChatActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->listAdapter:Lorg/telegram/ui/ThemingChatActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->commandColorCheckRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->solidBGColorCheckRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->memberColorCheckRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->showUsernameCheckRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->avatarAlignTopRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->ownAvatarAlignTopRow:I

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->showContactAvatar:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->showOwnAvatar:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->showOwnAvatarGroup:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->hideStatusIndicatorCheckRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->headerColorRow:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->solidBGColorRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->gradientBGColorRow:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->gradientBGRow:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->memberColorRow:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->contactNameColorRow:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->forwardRightNameColorRow:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->forwardLeftNameColorRow:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->muteColorRow:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->rBubbleColorRow:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->lBubbleColorRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemingChatActivity;->commitInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->rTextColorRow:I

    return v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->lTextColorRow:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->selectedMessageBGColorRow:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->rLinkColorRow:I

    return v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->lLinkColorRow:I

    return v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->rTimeColorRow:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->lTimeColorRow:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->dateBubbleColorRow:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->headerIconsColorRow:I

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->nameColorRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->headerGradientColorRow:I

    return v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->sendColorRow:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextColorRow:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextBGColorRow:I

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextBGGradientColorRow:I

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->attachBGColorRow:I

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->attachBGGradientColorRow:I

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->attachTextColorRow:I

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextIconsColorRow:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->emojiViewBGColorRow:I

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->emojiViewBGGradientColorRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->headerGradientRow:I

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->emojiViewTabIconColorRow:I

    return v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->emojiViewTabColorRow:I

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->statusColorRow:I

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->onlineColorRow:I

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->typingColorRow:I

    return v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->commandColorRow:I

    return v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->dateColorRow:I

    return v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->checksColorRow:I

    return v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->headerAvatarRadiusRow:I

    return v0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->avatarRadiusRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ThemingChatActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->avatarSizeRow:I

    return v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->avatarMarginLeftRow:I

    return v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->nameSizeRow:I

    return v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->statusSizeRow:I

    return v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->textSizeRow:I

    return v0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->timeSizeRow:I

    return v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->dateSizeRow:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextSizeRow:I

    return v0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->bubblesRow:I

    return v0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->checksRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextBGGradientRow:I

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->quickBarColorRow:I

    return v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->quickBarNamesColorRow:I

    return v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemingChatActivity;->resetInt(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ThemingChatActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ThemingChatActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->headerSection2Row:I

    return v0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->rowsSection2Row:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->rowsSectionRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->attachBGGradientRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ThemingChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 58
    iget v0, p0, Lorg/telegram/ui/ThemingChatActivity;->emojiViewBGGradientRow:I

    return v0
.end method

.method private commitInt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 1536
    invoke-static {p1, p2, v4}, Lorg/telegram/ui/ActionBar/Theme;->setPlusColor(Ljava/lang/String;IZ)V

    .line 1537
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1538
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1539
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1540
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1541
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1542
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 1544
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingChatActivity;->refreshTheme()V

    .line 1545
    return-void
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1593
    :goto_0
    return-void

    .line 1581
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ThemingChatActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ThemingChatActivity$5;-><init>(Lorg/telegram/ui/ThemingChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private refreshTheme()V
    .locals 2

    .prologue
    .line 1548
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->applyPlusTheme()V

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    if-eqz v0, :cond_0

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(Z)V

    .line 1552
    :cond_0
    return-void
.end method

.method private resetInt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1524
    const/4 v2, 0x1

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/ActionBar/Theme;->setPlusColor(Ljava/lang/String;IZ)V

    .line 1525
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V

    .line 1526
    const-string/jumbo v2, "chatTextSize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1527
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1528
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1529
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "fons_size"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1530
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iput p2, v2, Lorg/telegram/messenger/MessagesController;->fontSize:I

    .line 1531
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1533
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private resetPref(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1513
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1514
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1515
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1516
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1517
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1518
    iget-object v2, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 1520
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingChatActivity;->refreshTheme()V

    .line 1521
    return-void
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 1564
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 1565
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 1566
    invoke-virtual {p0}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1567
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1568
    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1569
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 254
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->fragmentView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 257
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 259
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 262
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "ChatScreen"

    const v5, 0x7f070166

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingChatActivity$1;-><init>(Lorg/telegram/ui/ThemingChatActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 273
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingChatActivity$2;-><init>(Lorg/telegram/ui/ThemingChatActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    new-instance v3, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;-><init>(Lorg/telegram/ui/ThemingChatActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listAdapter:Lorg/telegram/ui/ThemingChatActivity$ListAdapter;

    .line 288
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->fragmentView:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 291
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    .line 293
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 294
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 296
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 299
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 300
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 302
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 303
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 304
    const/16 v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 305
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lorg/telegram/ui/ThemingChatActivity;->listAdapter:Lorg/telegram/ui/ThemingChatActivity$ListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingChatActivity$3;-><init>(Lorg/telegram/ui/ThemingChatActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1386
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ThemingChatActivity$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ThemingChatActivity$4;-><init>(Lorg/telegram/ui/ThemingChatActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1501
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1508
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    :goto_0
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ThemingChatActivity;->updateTheme()V

    .line 1509
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 1503
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1504
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 1505
    iget-object v3, p0, Lorg/telegram/ui/ThemingChatActivity;->fragmentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1573
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1574
    invoke-direct {p0}, Lorg/telegram/ui/ThemingChatActivity;->fixLayout()V

    .line 1575
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 152
    iput v3, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    .line 153
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->headerSection2Row:I

    .line 154
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->headerColorRow:I

    .line 155
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->headerGradientRow:I

    .line 156
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->headerGradientColorRow:I

    .line 157
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->headerIconsColorRow:I

    .line 158
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->headerAvatarRadiusRow:I

    .line 161
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->nameSizeRow:I

    .line 162
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->nameColorRow:I

    .line 163
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->statusSizeRow:I

    .line 164
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->statusColorRow:I

    .line 165
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->onlineColorRow:I

    .line 166
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->typingColorRow:I

    .line 168
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowsSectionRow:I

    .line 169
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowsSection2Row:I

    .line 171
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->solidBGColorCheckRow:I

    .line 172
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->solidBGColorRow:I

    .line 174
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->gradientBGRow:I

    .line 175
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->gradientBGColorRow:I

    .line 177
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->showContactAvatar:I

    .line 178
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->avatarAlignTopRow:I

    .line 179
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->showOwnAvatar:I

    .line 180
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->showOwnAvatarGroup:I

    .line 181
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->ownAvatarAlignTopRow:I

    .line 182
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->avatarRadiusRow:I

    .line 183
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->avatarSizeRow:I

    .line 184
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->avatarMarginLeftRow:I

    .line 185
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->hideStatusIndicatorCheckRow:I

    .line 187
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->textSizeRow:I

    .line 188
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rTextColorRow:I

    .line 189
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rLinkColorRow:I

    .line 190
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->lTextColorRow:I

    .line 191
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->lLinkColorRow:I

    .line 192
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->selectedMessageBGColorRow:I

    .line 194
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->commandColorCheckRow:I

    .line 195
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->commandColorRow:I

    .line 197
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->timeSizeRow:I

    .line 198
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rTimeColorRow:I

    .line 199
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->lTimeColorRow:I

    .line 200
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->checksColorRow:I

    .line 202
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->dateSizeRow:I

    .line 203
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->dateColorRow:I

    .line 205
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->bubblesRow:I

    .line 206
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->checksRow:I

    .line 207
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rBubbleColorRow:I

    .line 208
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->lBubbleColorRow:I

    .line 209
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->dateBubbleColorRow:I

    .line 211
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->memberColorCheckRow:I

    .line 212
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->memberColorRow:I

    .line 213
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->contactNameColorRow:I

    .line 214
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->forwardRightNameColorRow:I

    .line 215
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->forwardLeftNameColorRow:I

    .line 217
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->showUsernameCheckRow:I

    .line 219
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->sendColorRow:I

    .line 220
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextSizeRow:I

    .line 221
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextColorRow:I

    .line 222
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextBGColorRow:I

    .line 223
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextBGGradientRow:I

    .line 224
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextBGGradientColorRow:I

    .line 225
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->editTextIconsColorRow:I

    .line 227
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->attachBGColorRow:I

    .line 228
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->attachBGGradientRow:I

    .line 229
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->attachBGGradientColorRow:I

    .line 230
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->attachTextColorRow:I

    .line 232
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->emojiViewBGColorRow:I

    .line 233
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->emojiViewBGGradientRow:I

    .line 234
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->emojiViewBGGradientColorRow:I

    .line 235
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->emojiViewTabIconColorRow:I

    .line 236
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->emojiViewTabColorRow:I

    .line 238
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->quickBarColorRow:I

    .line 239
    iget v1, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ThemingChatActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ThemingChatActivity;->quickBarNamesColorRow:I

    .line 241
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "plusconfig"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "chatShowPrefix"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/ThemingChatActivity;->showPrefix:Z

    .line 243
    return v4
.end method

.method public onFragmentDestroy()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 250
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1556
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1557
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->listAdapter:Lorg/telegram/ui/ThemingChatActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity;->listAdapter:Lorg/telegram/ui/ThemingChatActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingChatActivity$ListAdapter;->notifyDataSetChanged()V

    .line 1560
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ThemingChatActivity;->fixLayout()V

    .line 1561
    return-void
.end method
