.class public Lorg/telegram/ui/PopupNotificationActivity;
.super Landroid/app/Activity;
.source "PopupNotificationActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;,
        Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;
    }
.end annotation


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private animationInProgress:Z

.field private animationStartTime:J

.field private audioViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private avatarContainer:Landroid/widget/FrameLayout;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private centerView:Landroid/view/ViewGroup;

.field private chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field private classGuid:I

.field private countText:Landroid/widget/TextView;

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentMessageNum:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private finished:Z

.field private imageViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private isReply:Z

.field private lastPrintString:Ljava/lang/CharSequence;

.field private leftView:Landroid/view/ViewGroup;

.field private messageContainer:Landroid/view/ViewGroup;

.field private moveStartX:F

.field private nameTextView:Landroid/widget/TextView;

.field private onAnimationEndRunnable:Ljava/lang/Runnable;

.field private onlineTextView:Landroid/widget/TextView;

.field private playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

.field private popupContainer:Landroid/widget/RelativeLayout;

.field private popupMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

.field private rightView:Landroid/view/ViewGroup;

.field private sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

.field private startedMoving:Z

.field private textViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    .line 96
    iput-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    .line 105
    iput-boolean v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->finished:Z

    .line 107
    iput-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 108
    iput v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 109
    iput-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 110
    iput-boolean v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationStartTime:J

    .line 112
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    .line 113
    iput-boolean v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    .line 114
    iput-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/PopupNotificationActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/PopupNotificationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->switchToPreviousMessage()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PopupNotificationActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PopupNotificationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PopupNotificationActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PopupNotificationActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PopupNotificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PopupNotificationActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getNewMessage()V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PopupNotificationActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->classGuid:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->openCurrentMessage()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/PopupNotificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PopupNotificationActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->switchToNextMessage()V

    return-void
.end method

.method private applyViewsLayoutParams(I)V
    .locals 6
    .param p1, "xOffset"    # I

    .prologue
    const/16 v5, 0x33

    const/4 v4, -0x1

    .line 668
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 669
    .local v1, "widht":I
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 670
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 671
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 672
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 673
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 674
    neg-int v2, v1

    add-int/2addr v2, p1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 675
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 678
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 679
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 680
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 681
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 682
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 683
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 686
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 687
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 688
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 689
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 690
    add-int v2, v1, p1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 691
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 694
    return-void
.end method

.method private checkAndUpdateAvatar()V
    .locals 6

    .prologue
    .line 1145
    const/4 v2, 0x0

    .line 1146
    .local v2, "newPhoto":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v0, 0x0

    .line 1147
    .local v0, "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_4

    .line 1148
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 1149
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-nez v1, :cond_1

    .line 1171
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_0
    :goto_0
    return-void

    .line 1152
    .restart local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1153
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_2

    .line 1154
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1156
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    .end local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 1168
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v4, :cond_0

    .line 1169
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v5, "50_50"

    invoke-virtual {v4, v2, v5, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1157
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_3

    .line 1158
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1159
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_0

    .line 1162
    iput-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1163
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_5

    .line 1164
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1166
    :cond_5
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    .end local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .restart local v0    # "avatarDrawable":Lorg/telegram/ui/Components/AvatarDrawable;
    goto :goto_1
.end method

.method private fixLayout()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PopupNotificationActivity$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PopupNotificationActivity$11;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 967
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PopupNotificationActivity$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PopupNotificationActivity$12;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 985
    :cond_1
    return-void
.end method

.method private getNewMessage()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1016
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1018
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->finish()V

    .line 1044
    :goto_0
    return-void

    .line 1022
    :cond_0
    const/4 v1, 0x0

    .line 1023
    .local v1, "found":Z
    iget v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasText()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_2

    .line 1024
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1025
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 1026
    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 1027
    const/4 v1, 0x1

    .line 1032
    .end local v0    # "a":I
    :cond_2
    if-nez v1, :cond_5

    .line 1033
    iput v6, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 1034
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iput-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1035
    invoke-direct {p0, v6}, Lorg/telegram/ui/PopupNotificationActivity;->updateInterfaceForCurrentMessage(I)V

    .line 1043
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const-string/jumbo v3, "%d/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1024
    .restart local v0    # "a":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1036
    .end local v0    # "a":I
    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v2, :cond_3

    .line 1037
    iget v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_6

    .line 1038
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->prepareLayouts(I)V

    goto :goto_2

    .line 1039
    :cond_6
    iget v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-ne v2, v7, :cond_3

    .line 1040
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->prepareLayouts(I)V

    goto :goto_2
.end method

.method private getViewForMessage(IZ)Landroid/view/ViewGroup;
    .locals 36
    .param p1, "num"    # I
    .param p2, "applyOffset"    # Z

    .prologue
    .line 697
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-lt v0, v4, :cond_2

    .line 698
    :cond_0
    const/16 v32, 0x0

    .line 878
    :cond_1
    :goto_0
    return-object v32

    .line 700
    :cond_2
    const/4 v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    .line 706
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/messenger/MessageObject;

    .line 707
    .local v23, "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_10

    .line 708
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 709
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    .line 710
    .local v32, "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 740
    :goto_2
    const/16 v4, 0x138

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 741
    .local v26, "messageText":Landroid/widget/TextView;
    const/16 v4, 0x137

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lorg/telegram/ui/Components/BackupImageView;

    .line 742
    .local v18, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 744
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    .line 745
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v14

    .line 746
    .local v14, "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v31

    .line 747
    .local v31, "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    const/16 v28, 0x0

    .line 748
    .local v28, "photoSet":Z
    if-eqz v14, :cond_7

    .line 749
    const/16 v27, 0x1

    .line 750
    .local v27, "photoExist":Z
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 751
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v12

    .line 752
    .local v12, "cacheFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 753
    const/16 v27, 0x0

    .line 756
    .end local v12    # "cacheFile":Ljava/io/File;
    :cond_5
    if-nez v27, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MediaController;->canDownloadMedia(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 757
    :cond_6
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v5, "100_100"

    move-object/from16 v0, v31

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v7, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v6, v7}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    .line 758
    const/16 v28, 0x1

    .line 766
    .end local v27    # "photoExist":Z
    :cond_7
    :goto_3
    if-nez v28, :cond_e

    .line 767
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 768
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    const/4 v4, 0x2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->fontSize:I

    int-to-float v5, v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 770
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    .end local v14    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v18    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v26    # "messageText":Landroid/widget/TextView;
    .end local v28    # "photoSet":Z
    .end local v31    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_8
    :goto_4
    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_9

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 859
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 861
    if-eqz p2, :cond_1

    .line 862
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v33, v4, v5

    .line 863
    .local v33, "widht":I
    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout$LayoutParams;

    .line 864
    .local v19, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x33

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 865
    const/4 v4, -0x1

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 866
    move/from16 v0, v33

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 867
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_14

    .line 868
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 874
    :cond_a
    :goto_5
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 702
    .end local v19    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v32    # "view":Landroid/view/ViewGroup;
    .end local v33    # "widht":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 703
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 712
    .restart local v23    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_c
    new-instance v32, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    .line 714
    .restart local v32    # "view":Landroid/view/ViewGroup;
    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 715
    .local v16, "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 716
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 717
    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 719
    new-instance v11, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 720
    .local v11, "backupImageView":Lorg/telegram/ui/Components/BackupImageView;
    const/16 v4, 0x137

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Lorg/telegram/ui/Components/BackupImageView;->setTag(Ljava/lang/Object;)V

    .line 721
    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 724
    .local v30, "textView":Landroid/widget/TextView;
    const-string/jumbo v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 725
    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 726
    const/16 v4, 0x11

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 727
    const/16 v4, 0x138

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 728
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 732
    new-instance v4, Lorg/telegram/ui/PopupNotificationActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/PopupNotificationActivity$8;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 760
    .end local v11    # "backupImageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v16    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v30    # "textView":Landroid/widget/TextView;
    .restart local v14    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v18    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .restart local v26    # "messageText":Landroid/widget/TextView;
    .restart local v27    # "photoExist":Z
    .restart local v28    # "photoSet":Z
    .restart local v31    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_d
    if-eqz v31, :cond_7

    .line 761
    move-object/from16 v0, v31

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v6, 0x0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 762
    const/16 v28, 0x1

    goto/16 :goto_3

    .line 772
    .end local v27    # "photoExist":Z
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 773
    const/16 v4, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 775
    .end local v14    # "currentPhotoObject":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v28    # "photoSet":Z
    .end local v31    # "thumb":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_f
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 776
    const/16 v4, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 777
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    .line 779
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    move-wide/from16 v20, v0

    .line 780
    .local v20, "lat":D
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    move-wide/from16 v24, v0

    .line 781
    .local v24, "lon":D
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "https://maps.googleapis.com/maps/api/staticmap?center=%f,%f&zoom=13&size=100x100&maptype=roadmap&scale=%d&markers=color:red|size:big|%f,%f&sensor=false"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->density:F

    float-to-double v0, v9

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-int v9, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 782
    .local v15, "currentUrl":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 784
    .end local v15    # "currentUrl":Ljava/lang/String;
    .end local v18    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v20    # "lat":D
    .end local v24    # "lon":D
    .end local v26    # "messageText":Landroid/widget/TextView;
    .end local v32    # "view":Landroid/view/ViewGroup;
    :cond_10
    move-object/from16 v0, v23

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    .line 788
    .restart local v32    # "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 789
    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/PopupAudioView;

    .line 814
    .local v13, "cell":Lorg/telegram/ui/Components/PopupAudioView;
    :goto_6
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/telegram/ui/Components/PopupAudioView;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 815
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MediaController;->canDownloadMedia(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 816
    invoke-virtual {v13}, Lorg/telegram/ui/Components/PopupAudioView;->downloadAudioIfNeed()V

    goto/16 :goto_4

    .line 791
    .end local v13    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    .end local v32    # "view":Landroid/view/ViewGroup;
    :cond_11
    new-instance v32, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    .line 793
    .restart local v32    # "view":Landroid/view/ViewGroup;
    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 794
    .restart local v16    # "frameLayout":Landroid/widget/FrameLayout;
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 795
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 796
    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    new-instance v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 799
    .local v17, "frameLayout1":Landroid/widget/FrameLayout;
    const/4 v4, -0x1

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x11

    const/high16 v7, 0x41a00000    # 20.0f

    const/4 v8, 0x0

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    new-instance v13, Lorg/telegram/ui/Components/PopupAudioView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/PopupAudioView;-><init>(Landroid/content/Context;)V

    .line 801
    .restart local v13    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/telegram/ui/Components/PopupAudioView;->setTag(Ljava/lang/Object;)V

    .line 802
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 804
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 806
    new-instance v4, Lorg/telegram/ui/PopupNotificationActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/PopupNotificationActivity$9;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 819
    .end local v13    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    .end local v16    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v17    # "frameLayout1":Landroid/widget/FrameLayout;
    .end local v32    # "view":Landroid/view/ViewGroup;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    .line 821
    .restart local v32    # "view":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 851
    :goto_7
    const/16 v4, 0x12d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 852
    .restart local v26    # "messageText":Landroid/widget/TextView;
    const/4 v4, 0x2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/MessagesController;->fontSize:I

    int-to-float v5, v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 853
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatLTextColor:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 823
    .end local v26    # "messageText":Landroid/widget/TextView;
    .end local v32    # "view":Landroid/view/ViewGroup;
    :cond_13
    new-instance v32, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutAnimationListener;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    .line 825
    .restart local v32    # "view":Landroid/view/ViewGroup;
    new-instance v29, Landroid/widget/ScrollView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 826
    .local v29, "scrollView":Landroid/widget/ScrollView;
    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 827
    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 830
    .local v22, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 831
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 832
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 834
    new-instance v4, Lorg/telegram/ui/PopupNotificationActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/ui/PopupNotificationActivity$10;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 842
    .restart local v30    # "textView":Landroid/widget/TextView;
    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 843
    const/16 v4, 0x12d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 844
    const-string/jumbo v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 845
    const-string/jumbo v4, "windowBackgroundWhiteBlackText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 846
    const/16 v4, 0x11

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 847
    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 869
    .end local v22    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v29    # "scrollView":Landroid/widget/ScrollView;
    .end local v30    # "textView":Landroid/widget/TextView;
    .restart local v19    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v33    # "widht":I
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_15

    .line 870
    move/from16 v0, v33

    neg-int v4, v0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_5

    .line 871
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_a

    .line 872
    move/from16 v0, v33

    move-object/from16 v1, v19

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_5
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 988
    if-eqz p1, :cond_2

    const-string/jumbo v1, "force"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->isReply:Z

    .line 989
    iget-boolean v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->isReply:Z

    if-eqz v1, :cond_3

    .line 990
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/NotificationsController;->popupReplyMessages:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    .line 994
    :goto_1
    const-string/jumbo v1, "keyguard"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 995
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v1, :cond_4

    .line 996
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x280802

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1009
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_1

    .line 1010
    iput v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 1012
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getNewMessage()V

    .line 1013
    return-void

    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_2
    move v1, v2

    .line 988
    goto :goto_0

    .line 992
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/NotificationsController;->popupMessages:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    goto :goto_1

    .line 1002
    .restart local v0    # "km":Landroid/app/KeyguardManager;
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v3, 0x280800

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1006
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2
.end method

.method private openCurrentMessage()V
    .locals 8

    .prologue
    .line 1047
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v4, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1050
    :cond_0
    new-instance v2, Landroid/content/Intent;

    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v5, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1051
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 1052
    .local v0, "dialog_id":J
    long-to-int v4, v0

    if-eqz v4, :cond_2

    .line 1053
    long-to-int v3, v0

    .line 1054
    .local v3, "lower_id":I
    if-gez v3, :cond_1

    .line 1055
    const-string/jumbo v4, "chatId"

    neg-int v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1062
    .end local v3    # "lower_id":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.tmessages.openchat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const v4, 0x8000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1064
    invoke-virtual {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 1065
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1066
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->finish()V

    goto :goto_0

    .line 1057
    .restart local v3    # "lower_id":I
    :cond_1
    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 1060
    .end local v3    # "lower_id":I
    :cond_2
    const-string/jumbo v4, "encId"

    const/16 v5, 0x20

    shr-long v6, v0, v5

    long-to-int v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private prepareLayouts(I)V
    .locals 10
    .param p1, "move"    # I

    .prologue
    const/16 v9, 0x33

    const/4 v8, -0x1

    const/high16 v7, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 897
    if-nez p1, :cond_3

    .line 898
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 899
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 900
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 901
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "a":I
    :goto_0
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_4

    .line 902
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_1

    .line 903
    invoke-direct {p0, v0, v5}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 901
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 904
    :cond_1
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-ne v0, v4, :cond_2

    .line 905
    invoke-direct {p0, v0, v5}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    goto :goto_1

    .line 906
    :cond_2
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x1

    if-ne v0, v4, :cond_0

    .line 907
    invoke-direct {p0, v0, v5}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    goto :goto_1

    .line 910
    .end local v0    # "a":I
    :cond_3
    if-ne p1, v5, :cond_5

    .line 911
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 912
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    .line 913
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    .line 914
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 951
    :cond_4
    :goto_2
    return-void

    .line 915
    :cond_5
    const/4 v4, 0x2

    if-ne p1, v4, :cond_6

    .line 916
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 917
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 918
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    .line 919
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, v5}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    goto :goto_2

    .line 920
    :cond_6
    const/4 v4, 0x3

    if-ne p1, v4, :cond_7

    .line 921
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 922
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 923
    .local v2, "offset":I
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 924
    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, v6}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 925
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v3, v4, v5

    .line 926
    .local v3, "widht":I
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 927
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 928
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 929
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 930
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 931
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_2

    .line 935
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "offset":I
    .end local v3    # "widht":I
    :cond_7
    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    .line 936
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 937
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 938
    .restart local v2    # "offset":I
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PopupNotificationActivity;->reuseView(Landroid/view/ViewGroup;)V

    .line 939
    invoke-direct {p0, v6, v6}, Lorg/telegram/ui/PopupNotificationActivity;->getViewForMessage(IZ)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 940
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v3, v4, v5

    .line 941
    .restart local v3    # "widht":I
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 942
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 943
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 944
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 945
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 946
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_2
.end method

.method private reuseView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 882
    if-nez p1, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 886
    .local v0, "tag":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 887
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 888
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->textViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 889
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 890
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->imageViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 891
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 892
    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->audioViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setTypingAnimation(Z)V
    .locals 7
    .param p1, "start"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1174
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v2, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    if-eqz p1, :cond_5

    .line 1179
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->printingStringsTypes:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1180
    .local v1, "type":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 1181
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1182
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1183
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->start()V

    .line 1184
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 1185
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    .line 1186
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1209
    .end local v1    # "type":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 1210
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1187
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "type":Ljava/lang/Integer;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1188
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1189
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1190
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->start()V

    .line 1191
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 1192
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    .line 1193
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V

    goto :goto_0

    .line 1194
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1195
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1196
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1197
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->start()V

    .line 1198
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 1199
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 1200
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->stop()V

    goto/16 :goto_0

    .line 1201
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1202
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1203
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1204
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;->start()V

    .line 1205
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 1206
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 1207
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1213
    .end local v1    # "type":Ljava/lang/Integer;
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1214
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1215
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;->stop()V

    .line 1216
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 1217
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;->stop()V

    .line 1218
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;->stop()V

    goto/16 :goto_0
.end method

.method private switchToNextMessage()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 521
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    iget-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 522
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 526
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 527
    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->updateInterfaceForCurrentMessage(I)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const-string/jumbo v1, "%d/%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :cond_0
    return-void

    .line 524
    :cond_1
    iput v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    goto :goto_0
.end method

.method private switchToPreviousMessage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 534
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    if-lez v0, :cond_1

    .line 535
    iget v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    .line 539
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 540
    invoke-direct {p0, v5}, Lorg/telegram/ui/PopupNotificationActivity;->updateInterfaceForCurrentMessage(I)V

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const-string/jumbo v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    :cond_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageNum:I

    goto :goto_0
.end method

.method private updateInterfaceForCurrentMessage(I)V
    .locals 9
    .param p1, "move"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1070
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v4, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1073
    :cond_0
    iput-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1074
    iput-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1075
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 1076
    .local v0, "dialog_id":J
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4, v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDialogId(J)V

    .line 1077
    long-to-int v4, v0

    if-eqz v4, :cond_3

    .line 1078
    long-to-int v3, v0

    .line 1079
    .local v3, "lower_id":I
    if-lez v3, :cond_2

    .line 1080
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1090
    .end local v3    # "lower_id":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_4

    .line 1091
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1094
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 1106
    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->prepareLayouts(I)V

    .line 1107
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    .line 1108
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkAndUpdateAvatar()V

    .line 1109
    invoke-direct {p0, v8}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    goto :goto_0

    .line 1082
    .restart local v3    # "lower_id":I
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-int v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1083
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1

    .line 1086
    .end local v3    # "lower_id":I
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    const/16 v5, 0x20

    shr-long v6, v0, v5

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v2

    .line 1087
    .local v2, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1

    .line 1095
    .end local v2    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_1

    .line 1096
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    long-to-int v4, v0

    if-nez v4, :cond_5

    .line 1098
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const v5, 0x7f0200e4

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1099
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_2

    .line 1101
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1102
    iget-object v4, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_2
.end method

.method private updateSubtitle()V
    .locals 6

    .prologue
    .line 1113
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v2, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_0

    .line 1119
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x309

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    div-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x14d

    if-eq v2, v3, :cond_6

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1120
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    .line 1121
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1129
    .local v0, "printString":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 1130
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    .line 1131
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->setTypingAnimation(Z)V

    .line 1132
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1133
    .local v1, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v1, :cond_4

    .line 1134
    iput-object v1, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1136
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1123
    .end local v0    # "printString":Ljava/lang/CharSequence;
    .end local v1    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1126
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1138
    .restart local v0    # "printString":Ljava/lang/CharSequence;
    :cond_7
    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    .line 1139
    iget-object v2, p0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->setTypingAnimation(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public checkTransitionAnimation()Z
    .locals 6

    .prologue
    .line 546
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x190

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    .line 553
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    return v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v11, 0x12c

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 1256
    sget v8, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, v8, :cond_1

    .line 1257
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1258
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->finish()V

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    sget v8, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    if-ne p1, v8, :cond_2

    .line 1260
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->getNewMessage()V

    goto :goto_0

    .line 1261
    :cond_2
    sget v8, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v8, :cond_a

    .line 1262
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v8, :cond_0

    .line 1265
    aget-object v8, p2, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1266
    .local v6, "updateMask":I
    and-int/lit8 v8, v6, 0x1

    if-nez v8, :cond_3

    and-int/lit8 v8, v6, 0x4

    if-nez v8, :cond_3

    and-int/lit8 v8, v6, 0x10

    if-nez v8, :cond_3

    and-int/lit8 v8, v6, 0x20

    if-eqz v8, :cond_4

    .line 1267
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    .line 1269
    :cond_4
    and-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_5

    and-int/lit8 v8, v6, 0x8

    if-eqz v8, :cond_6

    .line 1270
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkAndUpdateAvatar()V

    .line 1272
    :cond_6
    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_0

    .line 1273
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->printingStrings:Ljava/util/HashMap;

    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1274
    .local v4, "printString":Ljava/lang/CharSequence;
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v8, :cond_7

    if-eqz v4, :cond_9

    :cond_7
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    if-nez v8, :cond_8

    if-nez v4, :cond_9

    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->lastPrintString:Ljava/lang/CharSequence;

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1275
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    goto :goto_0

    .line 1278
    .end local v4    # "printString":Ljava/lang/CharSequence;
    .end local v6    # "updateMask":I
    :cond_a
    sget v8, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    if-ne p1, v8, :cond_c

    .line 1279
    aget-object v3, p2, v9

    check-cast v3, Ljava/lang/Integer;

    .line 1280
    .local v3, "mid":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    .line 1281
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1282
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 1283
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1284
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_b

    .line 1285
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PopupAudioView;

    .line 1286
    .local v1, "cell":Lorg/telegram/ui/Components/PopupAudioView;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_b

    .line 1287
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    goto/16 :goto_0

    .line 1282
    .end local v1    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1293
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "mid":Ljava/lang/Integer;
    .end local v7    # "view":Landroid/view/View;
    :cond_c
    sget v8, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    if-ne p1, v8, :cond_e

    .line 1294
    aget-object v3, p2, v9

    check-cast v3, Ljava/lang/Integer;

    .line 1295
    .restart local v3    # "mid":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    .line 1296
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1297
    .restart local v2    # "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    if-ge v0, v2, :cond_0

    .line 1298
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1299
    .restart local v7    # "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v10, :cond_d

    .line 1300
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PopupAudioView;

    .line 1301
    .restart local v1    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_d

    .line 1302
    invoke-virtual {v1}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    goto/16 :goto_0

    .line 1297
    .end local v1    # "cell":Lorg/telegram/ui/Components/PopupAudioView;
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1308
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "mid":Ljava/lang/Integer;
    .end local v7    # "view":Landroid/view/View;
    :cond_e
    sget v8, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v8, :cond_10

    .line 1309
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    .line 1310
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1311
    .restart local v2    # "count":I
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_3
    if-ge v0, v2, :cond_0

    .line 1312
    iget-object v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1313
    .restart local v7    # "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 1314
    const/16 v8, 0x12d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1315
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_f

    .line 1316
    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 1311
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1321
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v7    # "view":Landroid/view/View;
    :cond_10
    sget v8, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v8, :cond_0

    .line 1322
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->updateSubtitle()V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 1229
    :goto_0
    return-void

    .line 1228
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 480
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 481
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkDisplaySize(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 482
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->fixLayout()V

    .line 483
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PopupNotificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 177
    .local v17, "resourceId":I
    if-lez v17, :cond_0

    .line 178
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PopupNotificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 181
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->classGuid:I

    .line 182
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 183
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 184
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 185
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 186
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 187
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 188
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 190
    new-instance v2, Lorg/telegram/ui/Components/TypingDotsDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/TypingDotsDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->typingDotsDrawable:Lorg/telegram/ui/Components/TypingDotsDrawable;

    .line 191
    new-instance v2, Lorg/telegram/ui/Components/RecordStatusDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/RecordStatusDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->recordStatusDrawable:Lorg/telegram/ui/Components/RecordStatusDrawable;

    .line 192
    new-instance v2, Lorg/telegram/ui/Components/SendingFileDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/SendingFileDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->sendingFileDrawable:Lorg/telegram/ui/Components/SendingFileDrawable;

    .line 193
    new-instance v2, Lorg/telegram/ui/Components/PlayingGameDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PlayingGameDrawable;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->playingGameDrawable:Lorg/telegram/ui/Components/PlayingGameDrawable;

    .line 195
    new-instance v10, Lorg/telegram/ui/PopupNotificationActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/PopupNotificationActivity$1;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    .line 291
    .local v10, "contentView":Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 292
    .local v18, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "chatNameColor"

    const/4 v3, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 293
    .local v14, "nameColor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/telegram/ui/PopupNotificationActivity;->setContentView(Landroid/view/View;)V

    .line 294
    const/high16 v2, -0x67000000

    invoke-virtual {v10, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundColor(I)V

    .line 296
    new-instance v16, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 297
    .local v16, "relativeLayout":Landroid/widget/RelativeLayout;
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    new-instance v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    const-string/jumbo v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 301
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->chatSolidBGColorCheck:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    const-string/jumbo v3, "chatSolidBGColor"

    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 302
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/4 v2, -0x1

    const/16 v3, 0xf0

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(IIIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v2, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onDestroy()V

    .line 307
    :cond_2
    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10, v3, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0xc

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createRelative(III)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v3, Lorg/telegram/ui/PopupNotificationActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PopupNotificationActivity$2;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setDelegate(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)V

    .line 371
    new-instance v2, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;-><init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->messageContainer:Landroid/view/ViewGroup;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatLBubbleColor:I

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 374
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200d7

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "actionBarDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "actionBarDefaultSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderColor:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 381
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 382
    .local v9, "back":Landroid/graphics/drawable/Drawable;
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->chatHeaderIconsColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->popupContainer:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 386
    .local v11, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    iput v2, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v13

    .line 390
    .local v13, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v13, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v19

    .line 391
    .local v19, "view":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const-string/jumbo v3, "actionBarDefaultSubtitle"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatStatusColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->countText:Landroid/widget/TextView;

    const/16 v3, 0x38

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 402
    .local v12, "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x1

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 403
    const/4 v2, -0x2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 404
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 405
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 406
    const/16 v2, 0x33

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v3, "chatHeaderAvatarRadius"

    const/16 v4, 0x15

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 413
    .restart local v12    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 414
    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 415
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/Components/BackupImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "actionBarDefaultTitle"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const-string/jumbo v4, "chatNameSize"

    const/16 v5, 0x12

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 431
    .restart local v12    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 432
    const/4 v2, -0x2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 433
    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 434
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 435
    const/16 v2, 0x50

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "actionBarDefaultSubtitle"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->chatStatusColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->chatStatusSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->avatarContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .end local v12    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 450
    .restart local v12    # "layoutParams2":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, -0x2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 451
    const/4 v2, -0x2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 452
    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 453
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 454
    const/16 v2, 0x50

    iput v2, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/PopupNotificationActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/PopupNotificationActivity$3;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 471
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 472
    .local v15, "pm":Landroid/os/PowerManager;
    const v2, 0x10000006

    const-string/jumbo v3, "screen"

    invoke-virtual {v15, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PopupNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/ui/PopupNotificationActivity;->handleIntent(Landroid/content/Intent;)V

    .line 476
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1328
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1329
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->onFinish()V

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1333
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_1

    .line 1334
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1336
    :cond_1
    return-void
.end method

.method protected onFinish()V
    .locals 2

    .prologue
    .line 1339
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->finished:Z

    if-eqz v0, :cond_1

    .line 1359
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->finished:Z

    .line 1343
    iget-boolean v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->isReply:Z

    if-eqz v0, :cond_2

    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->popupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1346
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1347
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->pushMessagesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1348
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1349
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1350
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->audioDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1351
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1352
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1353
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_3

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->onDestroy()V

    .line 1356
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 488
    invoke-direct {p0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->handleIntent(Landroid/content/Intent;)V

    .line 489
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1245
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1246
    invoke-virtual {p0, v2, v2}, Lorg/telegram/ui/PopupNotificationActivity;->overridePendingTransition(II)V

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)V

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldFocused(Z)V

    .line 1251
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 1252
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 493
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 494
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 495
    const/4 v1, 0x0

    aget v1, p3, v1

    if-nez v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 499
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f070078

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 500
    const-string/jumbo v1, "PermissionNoAudio"

    const v2, 0x7f0704c2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 501
    const-string/jumbo v1, "PermissionOpenSettings"

    const v2, 0x7f0704c7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PopupNotificationActivity$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PopupNotificationActivity$4;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 514
    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 515
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1233
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldFocused(Z)V

    .line 1237
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 1238
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->fixLayout()V

    .line 1239
    invoke-direct {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkAndUpdateAvatar()V

    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1241
    return-void
.end method

.method public onTouchEventMy(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 557
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity;->checkTransitionAnimation()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 558
    const/4 v9, 0x0

    .line 663
    :goto_0
    return v9

    .line 560
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_2

    .line 561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    .line 663
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    goto :goto_0

    .line 562
    :cond_2
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 564
    .local v8, "x":F
    iget v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    sub-float v9, v8, v9

    float-to-int v1, v9

    .line 565
    .local v1, "diff":I
    iget v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-nez v9, :cond_3

    .line 566
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    if-le v9, v10, :cond_3

    .line 567
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    .line 568
    iput v8, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    .line 569
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 570
    const/4 v1, 0x0

    .line 571
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_7

    .line 572
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    .line 578
    :cond_3
    :goto_2
    iget-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v9, :cond_1

    .line 579
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-nez v9, :cond_4

    if-lez v1, :cond_4

    .line 580
    const/4 v1, 0x0

    .line 582
    :cond_4
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-nez v9, :cond_5

    if-gez v1, :cond_5

    .line 583
    const/4 v1, 0x0

    .line 585
    :cond_5
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_6

    .line 586
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 588
    :cond_6
    invoke-direct {p0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    goto :goto_1

    .line 574
    :cond_7
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_2

    .line 590
    .end local v1    # "diff":I
    .end local v8    # "x":F
    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 591
    :cond_9
    if-eqz p1, :cond_15

    iget-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    if-eqz v9, :cond_15

    .line 592
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 593
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    sub-float/2addr v9, v10

    float-to-int v1, v9

    .line 594
    .restart local v1    # "diff":I
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int v7, v9, v10

    .line 595
    .local v7, "width":I
    const/4 v4, 0x0

    .line 596
    .local v4, "moveDiff":I
    const/4 v2, 0x0

    .line 597
    .local v2, "forceMove":I
    const/4 v5, 0x0

    .line 598
    .local v5, "otherView":Landroid/view/View;
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_a

    .line 599
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 600
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    const v10, 0x455ac000    # 3500.0f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_10

    .line 601
    const/4 v2, 0x1

    .line 606
    :cond_a
    :goto_3
    const/4 v9, 0x1

    if-eq v2, v9, :cond_b

    div-int/lit8 v9, v7, 0x3

    if-le v1, v9, :cond_11

    :cond_b
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_11

    .line 607
    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v4, v7, v9

    .line 608
    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 609
    new-instance v9, Lorg/telegram/ui/PopupNotificationActivity$5;

    invoke-direct {v9, p0}, Lorg/telegram/ui/PopupNotificationActivity$5;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    iput-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    .line 640
    :cond_c
    :goto_4
    if-eqz v4, :cond_e

    .line 641
    int-to-float v9, v4

    int-to-float v10, v7

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x43480000    # 200.0f

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 642
    .local v6, "time":I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    int-to-float v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 643
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    int-to-long v10, v6

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 644
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->centerView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 645
    if-eqz v5, :cond_d

    .line 646
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    const/4 v9, 0x0

    int-to-float v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 647
    .restart local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    int-to-long v10, v6

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 648
    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 650
    :cond_d
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationInProgress:Z

    .line 651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/telegram/ui/PopupNotificationActivity;->animationStartTime:J

    .line 656
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "diff":I
    .end local v2    # "forceMove":I
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "moveDiff":I
    .end local v5    # "otherView":Landroid/view/View;
    .end local v6    # "time":I
    .end local v7    # "width":I
    :cond_e
    :goto_5
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_f

    .line 657
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 658
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    .line 660
    :cond_f
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->startedMoving:Z

    .line 661
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->moveStartX:F

    goto/16 :goto_1

    .line 602
    .restart local v1    # "diff":I
    .restart local v2    # "forceMove":I
    .restart local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "moveDiff":I
    .restart local v5    # "otherView":Landroid/view/View;
    .restart local v7    # "width":I
    :cond_10
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    const v10, -0x3aa54000    # -3500.0f

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_a

    .line 603
    const/4 v2, 0x2

    goto :goto_3

    .line 617
    :cond_11
    const/4 v9, 0x2

    if-eq v2, v9, :cond_12

    neg-int v9, v7

    div-int/lit8 v9, v9, 0x3

    if-ge v1, v9, :cond_13

    :cond_12
    iget-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    if-eqz v9, :cond_13

    .line 618
    neg-int v9, v7

    iget v10, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v4, v9, v10

    .line 619
    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    .line 620
    new-instance v9, Lorg/telegram/ui/PopupNotificationActivity$6;

    invoke-direct {v9, p0}, Lorg/telegram/ui/PopupNotificationActivity$6;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    iput-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    goto :goto_4

    .line 628
    :cond_13
    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-eqz v9, :cond_c

    .line 629
    iget v9, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    neg-int v4, v9

    .line 630
    if-lez v1, :cond_14

    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->leftView:Landroid/view/ViewGroup;

    .line 631
    :goto_6
    new-instance v9, Lorg/telegram/ui/PopupNotificationActivity$7;

    invoke-direct {v9, p0}, Lorg/telegram/ui/PopupNotificationActivity$7;-><init>(Lorg/telegram/ui/PopupNotificationActivity;)V

    iput-object v9, p0, Lorg/telegram/ui/PopupNotificationActivity;->onAnimationEndRunnable:Ljava/lang/Runnable;

    goto/16 :goto_4

    .line 630
    :cond_14
    iget-object v5, p0, Lorg/telegram/ui/PopupNotificationActivity;->rightView:Landroid/view/ViewGroup;

    goto :goto_6

    .line 654
    .end local v1    # "diff":I
    .end local v2    # "forceMove":I
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "moveDiff":I
    .end local v5    # "otherView":Landroid/view/View;
    .end local v7    # "width":I
    :cond_15
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/telegram/ui/PopupNotificationActivity;->applyViewsLayoutParams(I)V

    goto :goto_5
.end method
