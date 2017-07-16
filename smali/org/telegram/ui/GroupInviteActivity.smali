.class public Lorg/telegram/ui/GroupInviteActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "GroupInviteActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupInviteActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private chat_id:I

.field private copyLinkRow:I

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

.field private linkInfoRow:I

.field private linkRow:I

.field private listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private revokeLinkRow:I

.field private rowCount:I

.field private shadowRow:I

.field private shareLinkRow:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 67
    iput p1, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    .line 68
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->copyLinkRow:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->linkRow:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->linkInfoRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/GroupInviteActivity;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->shareLinkRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->revokeLinkRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/GroupInviteActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupInviteActivity;->generateLink(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/GroupInviteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/telegram/ui/GroupInviteActivity;->loading:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/GroupInviteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/telegram/ui/GroupInviteActivity;->loading:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/GroupInviteActivity;)Lorg/telegram/ui/GroupInviteActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/GroupInviteActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupInviteActivity;

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->shadowRow:I

    return v0
.end method

.method private generateLink(Z)V
    .locals 5
    .param p1, "newRequest"    # Z

    .prologue
    .line 201
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/GroupInviteActivity;->loading:Z

    .line 203
    iget v3, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isChannel(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;-><init>()V

    .line 205
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;
    iget v3, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 206
    move-object v2, v0

    .line 212
    .end local v0    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportInvite;
    .local v2, "request":Lorg/telegram/tgnet/TLObject;
    :goto_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/GroupInviteActivity$3;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/GroupInviteActivity$3;-><init>(Lorg/telegram/ui/GroupInviteActivity;Z)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    .line 237
    .local v1, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/GroupInviteActivity;->classGuid:I

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 238
    iget-object v3, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->notifyDataSetChanged()V

    .line 241
    :cond_0
    return-void

    .line 208
    .end local v1    # "reqId":I
    .end local v2    # "request":Lorg/telegram/tgnet/TLObject;
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;-><init>()V

    .line 209
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;
    iget v3, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->chat_id:I

    .line 210
    move-object v2, v0

    .restart local v2    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 96
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 97
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 98
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "InviteLink"

    const v4, 0x7f0702fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/GroupInviteActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/GroupInviteActivity$1;-><init>(Lorg/telegram/ui/GroupInviteActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 108
    new-instance v2, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;-><init>(Lorg/telegram/ui/GroupInviteActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    .line 110
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->fragmentView:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 112
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const-string/jumbo v2, "windowBackgroundGray"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 113
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "theme"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 114
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "prefBGColor"

    const v3, -0xf0f10

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 115
    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 116
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 118
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 119
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v3, p1, v7, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 120
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/GroupInviteActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 121
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 122
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x33

    invoke-static {v6, v6, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 124
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/GroupInviteActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/GroupInviteActivity$2;-><init>(Lorg/telegram/ui/GroupInviteActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 170
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->fragmentView:Landroid/view/View;

    return-object v2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 175
    sget v2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    if-ne p1, v2, :cond_0

    .line 176
    aget-object v1, p2, v4

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 177
    .local v1, "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    .local v0, "guid":I
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:I

    iget v3, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/telegram/ui/GroupInviteActivity;->classGuid:I

    if-ne v0, v2, :cond_0

    .line 179
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getExportedInvite(I)Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 180
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-nez v2, :cond_1

    .line 181
    invoke-direct {p0, v4}, Lorg/telegram/ui/GroupInviteActivity;->generateLink(Z)V

    .line 190
    .end local v0    # "guid":I
    .end local v1    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local v0    # "guid":I
    .restart local v1    # "info":Lorg/telegram/tgnet/TLRPC$ChatFull;
    :cond_1
    iput-boolean v4, p0, Lorg/telegram/ui/GroupInviteActivity;->loading:Z

    .line 184
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 337
    const/16 v0, 0xe

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextBlockCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->fragmentView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupInviteActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextBlockCell;

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

    return-object v9
.end method

.method public onFragmentCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 74
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 75
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/GroupInviteActivity;->chat_id:I

    iget v2, p0, Lorg/telegram/ui/GroupInviteActivity;->classGuid:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    .line 76
    iput-boolean v3, p0, Lorg/telegram/ui/GroupInviteActivity;->loading:Z

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    .line 79
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->linkRow:I

    .line 80
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->linkInfoRow:I

    .line 81
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->copyLinkRow:I

    .line 82
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->revokeLinkRow:I

    .line 83
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->shareLinkRow:I

    .line 84
    iget v0, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/GroupInviteActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/GroupInviteActivity;->shadowRow:I

    .line 86
    return v3
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/GroupInviteActivity;->listAdapter:Lorg/telegram/ui/GroupInviteActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupInviteActivity$ListAdapter;->notifyDataSetChanged()V

    .line 198
    :cond_0
    return-void
.end method
