.class public Lorg/telegram/ui/Components/ChatDialogsView;
.super Landroid/widget/FrameLayout;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;,
        Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;,
        Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogCell;,
        Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;,
        Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;
    }
.end annotation


# instance fields
.field private avatarSize:I

.field private btn:Landroid/widget/ImageView;

.field private chat_id:I

.field private classGuid:I

.field private creatorID:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

.field private dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

.field private dialogsType:I

.field private disableLongCick:Z

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private listHeight:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listWidth:I

.field private loadMoreMembersRow:I

.field private loadingUsers:Z

.field private membersAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

.field private membersCount:I

.field private membersMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private refresh:Z

.field private showMembers:Z

.field private sortedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textSize:I

.field private tv:Landroid/widget/TextView;

.field private vertical:Z

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;J)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p3, "chat_id"    # J

    .prologue
    .line 268
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const/16 v0, 0xa

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->textSize:I

    .line 63
    const/16 v0, 0x28

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I

    .line 64
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    .line 65
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I

    iget v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->textSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x19

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I

    move-object v0, p2

    .line 270
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    .line 272
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->refresh:Z

    .line 275
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    .line 276
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v0, :cond_4

    .line 277
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatDialogsView;->setTranslationX(F)V

    .line 281
    :goto_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatDialogsView;->setBackgroundColor(I)V

    .line 285
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarShowMembers:Z

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->showMembers:Z

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->sortedUsers:Ljava/util/ArrayList;

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_5

    .line 291
    const/16 v0, 0x20

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->loadMoreMembersRow:I

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersMap:Ljava/util/ArrayList;

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentClassGuid()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->classGuid:I

    .line 295
    long-to-int v0, p3

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->chat_id:I

    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatDialogsView;->getChannelParticipants(Z)V

    .line 301
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->updateOnlineCount()V

    .line 304
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->showMembers:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v0, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 308
    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/ChatDialogsView$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatDialogsView$3;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 317
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 318
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarColor:I

    :goto_2
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 321
    new-instance v0, Lorg/telegram/ui/Components/ChatDialogsView$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatDialogsView$4;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 327
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 329
    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;JLorg/telegram/ui/Components/ChatDialogsView$1;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 330
    new-instance v0, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->showMembers:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    if-gez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    :goto_4
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatDialogsView$5;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatDialogsView$6;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/ChatDialogsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    .line 363
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_a

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarNamesColor:I

    const v2, -0xdededf

    if-eq v0, v2, :cond_9

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarNamesColor:I

    :goto_5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 364
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v0, :cond_b

    const v0, 0x7f0200ce

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0200cc

    :goto_7
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 369
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_d

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarColor:I

    :goto_8
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v2, :cond_f

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    if-eqz v2, :cond_e

    const/16 v2, 0x10

    :goto_9
    const/4 v3, 0x0

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    :goto_a
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v5, :cond_12

    iget v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    int-to-float v5, v5

    :goto_b
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v6, :cond_14

    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    if-eqz v6, :cond_13

    const/4 v6, 0x0

    :goto_c
    int-to-float v6, v6

    :goto_d
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/ChatDialogsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatDialogsView$7;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatDialogsView$8;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatDialogsView$9;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 404
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    .line 405
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_15

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarNamesColor:I

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 407
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_16

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->chatQuickBarColor:I

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    iget-object v8, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x31

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    if-eqz v3, :cond_17

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    :goto_10
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lorg/telegram/ui/Components/ChatDialogsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->showMembers:Z

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatDialogsView$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatDialogsView$10;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 421
    :cond_3
    return-void

    .line 279
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I

    int-to-float v0, v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatDialogsView;->setTranslationY(F)V

    goto/16 :goto_0

    .line 299
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersMap:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 318
    :cond_6
    const-string/jumbo v0, "chat_goDownButton"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 327
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 333
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    goto/16 :goto_4

    .line 363
    :cond_9
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v0, "chat_goDownButtonIcon"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_5

    .line 364
    :cond_b
    const v0, 0x7f02023e

    goto/16 :goto_6

    .line 368
    :cond_c
    const v0, 0x7f0200cb

    goto/16 :goto_7

    .line 369
    .restart local v7    # "d":Landroid/graphics/drawable/Drawable;
    :cond_d
    const-string/jumbo v0, "chat_goDownButton"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_8

    .line 371
    :cond_e
    const/16 v2, 0x50

    goto/16 :goto_9

    :cond_f
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_10
    const/16 v2, 0x35

    goto/16 :goto_9

    :cond_11
    iget v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I

    int-to-float v4, v4

    goto/16 :goto_a

    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_b

    :cond_13
    iget v6, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    goto/16 :goto_c

    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 405
    :cond_15
    const-string/jumbo v0, "chat_goDownButtonIcon"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_e

    .line 407
    :cond_16
    const-string/jumbo v0, "chat_goDownButton"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_f

    .line 409
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_10
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ChatDialogsView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatDialogsView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatDialogsView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->disableLongCick:Z

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Components/ChatDialogsView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->disableLongCick:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatDialogsView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->vertical:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatDialogsView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatDialogsView;->getChannelParticipants(Z)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatDialogsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->chat_id:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->avatarSize:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->textSize:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatDialogsView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->sortedUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ChatDialogsView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->updateOnlineCount()V

    return-void
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/ChatDialogsView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->loadingUsers:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->loadMoreMembersRow:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/ChatDialogsView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->loadMoreMembersRow:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatDialogsView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->creatorID:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatDialogsView;)Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    return-object v0
.end method

.method private fetchUsersFromChannelInfo()V
    .locals 3

    .prologue
    .line 170
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v2, :cond_1

    .line 171
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 172
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .local v1, "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    move-object v2, v1

    .line 173
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v2, :cond_0

    .line 174
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v2, p0, Lorg/telegram/ui/Components/ChatDialogsView;->creatorID:I

    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "a":I
    .end local v1    # "chatParticipant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    :cond_1
    return-void
.end method

.method private getChannelParticipants(Z)V
    .locals 5
    .param p1, "reload"    # Z

    .prologue
    const/4 v3, 0x0

    .line 113
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->loadingUsers:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersMap:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->loadingUsers:Z

    .line 118
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersMap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    const/16 v0, 0x12c

    .line 120
    .local v0, "delay":I
    :goto_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 121
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    iget v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->chat_id:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 122
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 123
    if-eqz p1, :cond_3

    :goto_2
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 124
    const/16 v3, 0xc8

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 125
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/ChatDialogsView$1;

    invoke-direct {v4, p0, v1, v0}, Lorg/telegram/ui/Components/ChatDialogsView$1;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;I)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    .line 166
    .local v2, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->classGuid:I

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .end local v0    # "delay":I
    .end local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    .end local v2    # "reqId":I
    :cond_2
    move v0, v3

    .line 118
    goto :goto_1

    .line 123
    .restart local v0    # "delay":I
    .restart local v1    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_2
.end method

.method private updateOnlineCount()V
    .locals 8

    .prologue
    .line 182
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    .line 183
    .local v1, "currentTime":I
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->sortedUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 184
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v5, :cond_5

    .line 185
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 186
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 187
    .local v3, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 188
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    if-gt v5, v1, :cond_1

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_1
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    const/16 v6, 0x2710

    if-le v5, v6, :cond_2

    .line 191
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->sortedUsers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v5, :cond_3

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    iput v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->creatorID:I

    .line 185
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    :try_start_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->sortedUsers:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Components/ChatDialogsView$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/ChatDialogsView$2;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 252
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatDialogsView;->sortedUsers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 255
    .end local v0    # "a":I
    :cond_5
    return-void

    .line 247
    .restart local v0    # "a":I
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public btnPressed()V
    .locals 4

    .prologue
    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;->didPressedOnBtn(Z)V

    .line 547
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    if-nez v0, :cond_1

    .line 548
    new-instance v0, Lorg/telegram/ui/Components/ChatDialogsView$12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatDialogsView$12;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 558
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    .line 559
    return-void

    .line 558
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeDialogType()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 425
    iget v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    packed-switch v4, :pswitch_data_0

    .line 487
    :pswitch_0
    iput v6, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v6, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 489
    :cond_0
    :goto_0
    const v3, 0x7f070161

    .line 490
    .local v3, "title":I
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v4, :cond_2

    .line 491
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 492
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 493
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;

    if-eqz v4, :cond_4

    .line 494
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;->access$1700(Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsAdapter;)I

    move-result v3

    .line 499
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RecyclerListView;->scrollToPosition(I)V

    .line 507
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 508
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 510
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 511
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 512
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->tv:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 513
    new-instance v4, Lorg/telegram/ui/Components/ChatDialogsView$11;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/ChatDialogsView$11;-><init>(Lorg/telegram/ui/Components/ChatDialogsView;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 532
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "plusconfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 533
    .local v2, "plusPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 534
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "quickBarDialogType"

    iget v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 535
    return-void

    .line 427
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "plusPreferences":Landroid/content/SharedPreferences;
    .end local v3    # "title":I
    :pswitch_1
    const/16 v4, 0x8

    iput v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 428
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogsFavs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 429
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_0

    .line 433
    :pswitch_2
    const/4 v4, 0x3

    iput v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 434
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogsUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 435
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_0

    .line 439
    :pswitch_3
    const/4 v4, 0x4

    iput v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 440
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogsGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 441
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_0

    .line 445
    :pswitch_4
    const/4 v4, 0x7

    iput v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 446
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogsMegaGroups:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 447
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_0

    .line 451
    :pswitch_5
    const/4 v4, 0x5

    iput v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 452
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogsChannels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 453
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_0

    .line 457
    :pswitch_6
    const/4 v4, 0x6

    iput v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 458
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogsBots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 459
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->changeDialogType()V

    goto/16 :goto_0

    .line 463
    :pswitch_7
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->showMembers:Z

    if-eqz v4, :cond_3

    .line 464
    const/4 v4, -0x1

    iput v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v4, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 465
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eq v4, v5, :cond_0

    .line 467
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    .line 470
    :cond_3
    iput v6, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v6, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 471
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eq v4, v5, :cond_0

    .line 473
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    .line 478
    :pswitch_8
    iput v6, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsType:I

    sput v6, Lorg/telegram/ui/ActionBar/Theme;->plusQuickBarDialogType:I

    .line 479
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->showMembers:Z

    if-eqz v4, :cond_0

    .line 480
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eq v4, v5, :cond_0

    .line 482
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    .line 496
    .restart local v3    # "title":I
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatDialogsView$ListAdapter;)I

    move-result v3

    goto/16 :goto_1

    .line 425
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public getListHeight()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listHeight:I

    return v0
.end method

.method public getListWidth()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listWidth:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    return v0
.end method

.method public needRefresh(Z)V
    .locals 0
    .param p1, "refresh"    # Z

    .prologue
    .line 577
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->refresh:Z

    .line 578
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    .line 572
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 573
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 574
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 564
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->refresh:Z

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 566
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->refresh:Z

    .line 568
    :cond_1
    return-void
.end method

.method public refreshList()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 541
    :cond_0
    return-void
.end method

.method public setBtnResId(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 598
    return-void
.end method

.method public setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 2
    .param p1, "chatInfo"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->showMembers:Z

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersCount:I

    .line 95
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->fetchUsersFromChannelInfo()V

    .line 100
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->showMembers:Z

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eq v0, v1, :cond_2

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->dialogsAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 108
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatDialogsView;->updateOnlineCount()V

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatDialogsView;->membersCount:I

    goto :goto_1
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    .prologue
    .line 264
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->delegate:Lorg/telegram/ui/Components/ChatDialogsView$ChatDialogsViewDelegate;

    .line 265
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 581
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatDialogsView;->visible:Z

    .line 582
    return-void
.end method
