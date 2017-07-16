.class public Lorg/telegram/ui/Components/StickersAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "StickersAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/StickersAlert$GridAdapter;,
        Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;,
        Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

.field private delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

.field private emptyView:Landroid/widget/FrameLayout;

.field private gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private ignoreLayout:Z

.field private inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field private installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

.field private itemSize:I

.field private layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

.field private previewSendButton:Landroid/widget/TextView;

.field private previewSendButtonShadow:Landroid/view/View;

.field private reqId:I

.field private scrollOffsetY:I

.field private selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private shadow:[Landroid/view/View;

.field private shadowAnimation:[Landroid/animation/AnimatorSet;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private showEmoji:Z

.field private stickerEmojiTextView:Landroid/widget/TextView;

.field private stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private stickerPreviewLayout:Landroid/widget/FrameLayout;

.field private stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field private stickerSetCovereds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$StickerSetCovered;",
            ">;"
        }
    .end annotation
.end field

.field private stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Photo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photo"    # Lorg/telegram/tgnet/TLRPC$Photo;

    .prologue
    const/4 v3, 0x2

    .line 101
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 79
    new-array v2, v3, [Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    .line 80
    new-array v2, v3, [Landroid/view/View;

    iput-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    move-object v2, p1

    .line 102
    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;

    .line 103
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;-><init>()V

    .line 104
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;-><init>()V

    .line 105
    .local v0, "inputStickeredMediaPhoto":Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 106
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 107
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickeredMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 108
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;->media:Lorg/telegram/tgnet/TLRPC$InputStickeredMedia;

    .line 109
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/StickersAlert$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/StickersAlert$1;-><init>(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    .line 144
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p3, "set"    # Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .param p4, "loadedSet"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .param p5, "stickersAlertDelegate"    # Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    .prologue
    const/4 v1, 0x2

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 79
    new-array v0, v1, [Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    .line 80
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    .line 149
    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    .line 150
    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 151
    iput-object p4, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 152
    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->loadStickerSet()V

    .line 154
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickersAlert;->init(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->showEmoji:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/StickersAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->showEmoji:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/StickersAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert;->itemSize:I

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Components/StickersAlert;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lorg/telegram/ui/Components/StickersAlert;->itemSize:I

    return p1
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lorg/telegram/ui/Components/StickersAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lorg/telegram/ui/Components/StickersAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/StickersAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/StickersAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickersAlert;->ignoreLayout:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->loadStickerSet()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lorg/telegram/ui/Components/StickersAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/StickersAlert;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/StickersAlert;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->selectedSticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/StickersAlert;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/StickersAlert;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/StickersAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->hidePreview()V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/StickersAlert;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/Components/StickersAlert$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/StickersAlert;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/StickersAlert;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/StickersAlert;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p1
.end method

.method private hidePreview()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 648
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 649
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 650
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 651
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$20;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 657
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 658
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v13, 0x41900000    # 18.0f

    const/4 v0, -0x1

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v4, "dialogBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 204
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/StickersAlert$3;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    .line 281
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 282
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    sget v2, Lorg/telegram/ui/Components/StickersAlert;->backgroundPaddingLeft:I

    sget v4, Lorg/telegram/ui/Components/StickersAlert;->backgroundPaddingLeft:I

    invoke-virtual {v1, v2, v11, v4, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 284
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    .line 285
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setLines(I)V

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "dialogTextBlack"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v12, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 289
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 290
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v11, v4, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 292
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 293
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    const/16 v4, 0x30

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$4;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v11

    .line 302
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v1, v1, v11

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 303
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v1, v1, v11

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 304
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v1, v1, v11

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v1, v1, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 306
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v10, v1, v11

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x33

    const/high16 v4, 0x42400000    # 48.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/StickersAlert$5;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 323
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 324
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/StickersAlert;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {v2, v4, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 325
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$6;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/GridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 335
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 336
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$7;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v11, v4, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 346
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setEnabled(Z)V

    .line 348
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v2, "dialogScrollGlow"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 349
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$8;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$9;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 361
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$10;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 407
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickersOnItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 408
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v10, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v6, 0x42400000    # 48.0f

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/StickersAlert$11;-><init>(Lorg/telegram/ui/Components/StickersAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    .line 419
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v10, p0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/high16 v6, 0x42400000    # 48.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 421
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$12;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 428
    new-instance v8, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v8, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    .line 429
    .local v8, "progressView":Lorg/telegram/ui/Components/RadialProgressView;
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->emptyView:Landroid/widget/FrameLayout;

    const/4 v2, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v12

    .line 432
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v1, v1, v12

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 433
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v10, v1, v12

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x53

    const/high16 v6, 0x42400000    # 48.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    new-instance v1, Lorg/telegram/ui/Components/PickerBottomLayout;

    invoke-direct {v1, p1, v11}, Lorg/telegram/ui/Components/PickerBottomLayout;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    .line 436
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const-string/jumbo v2, "dialogBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayout;->setBackgroundColor(I)V

    .line 437
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    const/16 v4, 0x30

    const/16 v5, 0x53

    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v11, v4, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 439
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v2, "dialogTextBlue2"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v2, "Close"

    const v4, 0x7f070183

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayout;->cancelButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$13;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v11, v4, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 448
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41480000    # 12.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const-string/jumbo v4, "dialogBadgeBackground"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    .line 451
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v2, "dialogBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const v4, -0x20000001

    and-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 452
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setSoundEffectsEnabled(Z)V

    .line 454
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$14;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 463
    .local v7, "closeButton":Landroid/widget/ImageView;
    const v1, 0x7f0201d5

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v2, "dialogTextGray3"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 465
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 466
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x35

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$15;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 475
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 476
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 478
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    .line 479
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v1, v12, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 480
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 481
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 483
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    .line 484
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v12, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 485
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const-string/jumbo v2, "dialogTextBlue2"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 487
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const-string/jumbo v2, "dialogBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 488
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const/high16 v2, 0x41e80000    # 29.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x41e80000    # 29.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v11, v4, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 489
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 490
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const/16 v4, 0x30

    const/16 v5, 0x53

    invoke-static {v0, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$16;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    .line 500
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 501
    iget-object v9, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    const/high16 v1, 0x40400000    # 3.0f

    const/16 v2, 0x53

    const/high16 v6, 0x42400000    # 48.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 504
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    .line 505
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    .line 507
    return-void
.end method

.method private loadStickerSet()V
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 162
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetById(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 165
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-nez v1, :cond_4

    .line 166
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;-><init>()V

    .line 167
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->inputStickerSet:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 168
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/StickersAlert$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/StickersAlert$2;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 195
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getStickerSet;
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/Components/StickersAlert;->showEmoji:Z

    .line 198
    :cond_3
    return-void

    .line 189
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    if-eqz v1, :cond_2

    .line 190
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateSendButton()V

    .line 191
    invoke-direct {p0}, Lorg/telegram/ui/Components/StickersAlert;->updateFields()V

    .line 192
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 196
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private runShadowAnimation(IZ)V
    .locals 7
    .param p1, "num"    # I
    .param p2, "show"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    if-nez p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 665
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v1, v0, p1

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 666
    if-eqz p2, :cond_4

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    if-eqz v0, :cond_5

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 672
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    aput-object v1, v0, p1

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v1, v0, p1

    new-array v2, v5, [Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v3, v0, p1

    const-string/jumbo v4, "alpha"

    new-array v5, v5, [F

    if-eqz p2, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    aput v0, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$21;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/StickersAlert$21;-><init>(Lorg/telegram/ui/Components/StickersAlert;IZ)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 665
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 673
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private setRightButton(Landroid/view/View$OnClickListener;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "showCircle"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 725
    if-nez p2, :cond_0

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 739
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 729
    if-eqz p4, :cond_1

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonBadgeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 733
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->pickerBottomLayout:Lorg/telegram/ui/Components/PickerBottomLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayout;->doneButtonBadgeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateFields()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_5

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/query/StickersQuery;->isStickerPackInstalled(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 538
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/StickersAlert$17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/StickersAlert$17;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AddMasks"

    const v2, 0x7f07004a

    .line 579
    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v2, "dialogTextBlue2"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 538
    invoke-direct {p0, v1, v0, v2, v3}, Lorg/telegram/ui/Components/StickersAlert;->setRightButton(Landroid/view/View$OnClickListener;Ljava/lang/String;IZ)V

    .line 605
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->adapter:Lorg/telegram/ui/Components/StickersAlert$GridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/StickersAlert$GridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 579
    :cond_2
    const-string/jumbo v0, "AddStickers"

    const v2, 0x7f070050

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 581
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v0, :cond_4

    .line 582
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickersAlert$18;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    const-string/jumbo v1, "StickersRemove"

    const v2, 0x7f070600

    .line 591
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dialogTextRed"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 582
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Components/StickersAlert;->setRightButton(Landroid/view/View$OnClickListener;Ljava/lang/String;IZ)V

    goto :goto_2

    .line 593
    :cond_4
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert$19;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickersAlert$19;-><init>(Lorg/telegram/ui/Components/StickersAlert;)V

    const-string/jumbo v1, "StickersRemove"

    const v2, 0x7f070601

    .line 602
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dialogTextRed"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 593
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/ui/Components/StickersAlert;->setRightButton(Landroid/view/View$OnClickListener;Ljava/lang/String;IZ)V

    goto :goto_2

    .line 607
    :cond_5
    const-string/jumbo v0, "dialogTextRed"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1, v1, v0, v3}, Lorg/telegram/ui/Components/StickersAlert;->setRightButton(Landroid/view/View$OnClickListener;Ljava/lang/String;IZ)V

    goto/16 :goto_0
.end method

.method private updateLayout()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 618
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 619
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 620
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 621
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    iget v5, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 622
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v4, v4, v6

    iget v5, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 624
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 645
    :cond_1
    :goto_0
    return-void

    .line 627
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 628
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 629
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 630
    .local v3, "top":I
    const/4 v2, 0x0

    .line 631
    .local v2, "newOffset":I
    if-ltz v3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_4

    .line 632
    move v2, v3

    .line 633
    invoke-direct {p0, v6, v6}, Lorg/telegram/ui/Components/StickersAlert;->runShadowAnimation(IZ)V

    .line 637
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    if-eq v4, v2, :cond_1

    .line 638
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v2, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 639
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSetCovereds:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 640
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->titleTextView:Landroid/widget/TextView;

    iget v5, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 641
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;

    aget-object v4, v4, v6

    iget v5, p0, Lorg/telegram/ui/Components/StickersAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 643
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 635
    :cond_4
    const/4 v4, 0x1

    invoke-direct {p0, v6, v4}, Lorg/telegram/ui/Components/StickersAlert;->runShadowAnimation(IZ)V

    goto :goto_1
.end method

.method private updateSendButton()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x0

    const/high16 v6, 0x41f00000    # 30.0f

    const/16 v2, 0x11

    const/4 v3, 0x0

    .line 510
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v4

    float-to-int v0, v1

    .line 511
    .local v0, "size":I
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->delegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerSet:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-nez v1, :cond_1

    .line 512
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const-string/jumbo v4, "SendSticker"

    const v5, 0x7f07059a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    int-to-float v1, v0

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/BackupImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    iget-object v7, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    int-to-float v1, v0

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 524
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    const-string/jumbo v3, "Close"

    const v4, 0x7f070183

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->stickerEmojiTextView:Landroid/widget/TextView;

    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert;->previewSendButtonShadow:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 709
    sget v2, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v2, :cond_2

    .line 711
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v1

    .line 713
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 714
    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_0
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    .line 720
    :cond_1
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/StickerPreviewViewer;->reset()V

    .line 722
    :cond_2
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 699
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 700
    iget v0, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    if-eqz v0, :cond_0

    .line 701
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 702
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/StickersAlert;->reqId:I

    .line 704
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 705
    return-void
.end method

.method public setInstallDelegate(Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;)V
    .locals 0
    .param p1, "stickersAlertInstallDelegate"    # Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    .prologue
    .line 527
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert;->installDelegate:Lorg/telegram/ui/Components/StickersAlert$StickersAlertInstallDelegate;

    .line 528
    return-void
.end method
