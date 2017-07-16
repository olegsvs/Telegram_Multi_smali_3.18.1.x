.class public Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DialogsSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

.field private dialogsType:I

.field private innerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private lastMessagesSearchString:Ljava/lang/String;

.field private lastReqId:I

.field private lastSearchId:I

.field private lastSearchText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private messagesSearchEndReached:Z

.field private needMessagesSearch:I

.field private recentSearchObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private recentSearchObjectsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private reqId:I

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultHashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messagesSearch"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    .line 68
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    .line 74
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Ljava/util/HashMap;

    .line 154
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 172
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    .line 173
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    .line 174
    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    .line 175
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch()V

    .line 176
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/query/SearchQuery;->loadHints(Z)V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    return p1
.end method

.method static synthetic access$602(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/HashMap;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setRecentSearch(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 59
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    return p1
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "searchId"    # I

    .prologue
    .line 486
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 782
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private searchMessagesInternal(Ljava/lang/String;)V
    .locals 8
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    if-eqz v4, :cond_3

    .line 204
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    invoke-virtual {v4, v5, v7}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 205
    iput v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    .line 207
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 208
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 209
    iput v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    .line 210
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 212
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v4, :cond_1

    .line 213
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v4, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    goto :goto_0

    .line 218
    :cond_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    .line 219
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;
    const/16 v4, 0x14

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 220
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    .line 221
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 222
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 223
    .local v2, "lastMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 224
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_date:I

    .line 226
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_7

    .line 227
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v1, v4

    .line 233
    .local v1, "id":I
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 239
    .end local v1    # "id":I
    .end local v2    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    :goto_2
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 240
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    .line 241
    .local v0, "currentReqId":I
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v4, :cond_6

    .line 242
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v4, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    .line 244
    :cond_6
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    invoke-direct {v5, p0, v0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;)V

    const/4 v6, 0x2

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    goto/16 :goto_0

    .line 228
    .end local v0    # "currentReqId":I
    .restart local v2    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    :cond_7
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v4, :cond_8

    .line 229
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v1, v4

    .restart local v1    # "id":I
    goto :goto_1

    .line 231
    .end local v1    # "id":I
    :cond_8
    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .restart local v1    # "id":I
    goto :goto_1

    .line 235
    .end local v1    # "id":I
    .end local v2    # "lastMessage":Lorg/telegram/messenger/MessageObject;
    :cond_9
    iput v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_date:I

    .line 236
    iput v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 237
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_2
.end method

.method private setRecentSearch(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;>;"
    const/4 v4, 0x1

    .line 470
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 471
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Ljava/util/HashMap;

    .line 472
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 473
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 474
    .local v1, "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    .line 475
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 472
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_1
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_2

    .line 477
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_1

    .line 478
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_0

    .line 479
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v3, v2, v4}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    goto :goto_1

    .line 482
    .end local v1    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 483
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 6
    .param p4, "searchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .local p2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p3, "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 810
    return-void
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    .line 467
    return-void
.end method

.method public clearRecentHashtags()V
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V

    .line 818
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 819
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 820
    return-void
.end method

.method public clearRecentSearch()V
    .locals 2

    .prologue
    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Ljava/util/HashMap;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 452
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 453
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method public getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 10
    .param p1, "i"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 916
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 917
    sget-object v9, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v6, 0x2

    .line 918
    .local v6, "offset":I
    :goto_0
    if-le p1, v6, :cond_0

    add-int/lit8 v8, p1, -0x1

    sub-int/2addr v8, v6

    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 919
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    add-int/lit8 v9, p1, -0x1

    sub-int/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object v5, v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 920
    .local v5, "object":Lorg/telegram/tgnet/TLObject;
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_2

    .line 921
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    move-object v8, v5

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    .line 922
    .local v7, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v7, :cond_0

    .line 923
    move-object v5, v7

    .line 954
    .end local v5    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v6    # "offset":I
    .end local v7    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    :goto_1
    return-object v5

    :cond_1
    move v6, v8

    .line 917
    goto :goto_0

    .line 925
    .restart local v5    # "object":Lorg/telegram/tgnet/TLObject;
    .restart local v6    # "offset":I
    :cond_2
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_0

    .line 926
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    move-object v8, v5

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 927
    .local v0, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v0, :cond_0

    .line 928
    move-object v5, v0

    goto :goto_1

    .line 936
    .end local v0    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v5    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v6    # "offset":I
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 937
    if-lez p1, :cond_0

    .line 938
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 943
    :cond_4
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v9}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v2

    .line 944
    .local v2, "globalSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 945
    .local v3, "localCount":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    move v1, v8

    .line 946
    .local v1, "globalCount":I
    :goto_2
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    move v4, v8

    .line 947
    .local v4, "messagesCount":I
    :goto_3
    if-ltz p1, :cond_7

    if-ge p1, v3, :cond_7

    .line 948
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 945
    .end local v1    # "globalCount":I
    .end local v4    # "messagesCount":I
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    goto :goto_2

    .line 946
    .restart local v1    # "globalCount":I
    :cond_6
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    goto :goto_3

    .line 949
    .restart local v4    # "messagesCount":I
    :cond_7
    if-le p1, v3, :cond_8

    add-int v8, v1, v3

    if-ge p1, v8, :cond_8

    .line 950
    sub-int v8, p1, v3

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 951
    :cond_8
    add-int v8, v1, v3

    if-le p1, v8, :cond_0

    add-int v8, v1, v3

    add-int/2addr v8, v4

    if-ge p1, v8, :cond_0

    .line 952
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    sub-int v9, p1, v3

    sub-int/2addr v9, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_1
.end method

.method public getItemCount()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 897
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 898
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_0
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x2

    :cond_0
    add-int v0, v3, v4

    .line 912
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v3, v4

    .line 898
    goto :goto_0

    .line 900
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 901
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 903
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 904
    .local v0, "count":I
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 905
    .local v1, "globalCount":I
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 906
    .local v2, "messagesCount":I
    if-eqz v1, :cond_5

    .line 907
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v0, v3

    .line 909
    :cond_5
    if-eqz v2, :cond_1

    .line 910
    add-int/lit8 v3, v2, 0x1

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    if-eqz v5, :cond_6

    :goto_2
    add-int/2addr v3, v4

    add-int/2addr v0, v3

    goto :goto_1

    :cond_6
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 959
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 9
    .param p1, "i"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1157
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1158
    sget-object v8, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    move v4, v7

    .line 1159
    .local v4, "offset":I
    :goto_0
    if-gt p1, v4, :cond_3

    .line 1160
    if-eq p1, v4, :cond_0

    rem-int/lit8 v6, p1, 0x2

    if-nez v6, :cond_2

    .line 1182
    .end local v4    # "offset":I
    :cond_0
    :goto_1
    return v5

    :cond_1
    move v4, v6

    .line 1158
    goto :goto_0

    .line 1163
    .restart local v4    # "offset":I
    :cond_2
    const/4 v5, 0x5

    goto :goto_1

    :cond_3
    move v5, v6

    .line 1166
    goto :goto_1

    .line 1168
    .end local v4    # "offset":I
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1169
    if-eqz p1, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    .line 1171
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v1

    .line 1172
    .local v1, "globalSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1173
    .local v2, "localCount":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    move v0, v6

    .line 1174
    .local v0, "globalCount":I
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    move v3, v6

    .line 1175
    .local v3, "messagesCount":I
    :goto_3
    if-ltz p1, :cond_6

    if-lt p1, v2, :cond_7

    :cond_6
    if-le p1, v2, :cond_a

    add-int v8, v0, v2

    if-ge p1, v8, :cond_a

    :cond_7
    move v5, v6

    .line 1176
    goto :goto_1

    .line 1173
    .end local v0    # "globalCount":I
    .end local v3    # "messagesCount":I
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    goto :goto_2

    .line 1174
    .restart local v0    # "globalCount":I
    :cond_9
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    goto :goto_3

    .line 1177
    .restart local v3    # "messagesCount":I
    :cond_a
    add-int v6, v0, v2

    if-le p1, v6, :cond_b

    add-int v6, v0, v2

    add-int/2addr v6, v3

    if-ge p1, v6, :cond_b

    move v5, v7

    .line 1178
    goto :goto_1

    .line 1179
    :cond_b
    if-eqz v3, :cond_0

    add-int v6, v0, v2

    add-int/2addr v6, v3

    if-ne p1, v6, :cond_0

    .line 1180
    const/4 v5, 0x3

    goto :goto_1
.end method

.method public getLastSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public hasRecentRearch()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x1

    .line 964
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 965
    .local v0, "type":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGlobalSearch(I)Z
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 813
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMessagesSearchEndReached()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    return v0
.end method

.method public isRecentSearchDisplayed()Z
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMoreSearchMessages()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public loadRecentSearch()V
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 30
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 1041
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v26, "theme"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 1043
    .local v22, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1153
    :goto_0
    :pswitch_0
    return-void

    .line 1045
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1047
    .local v4, "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    const/16 v24, 0x0

    .line 1048
    .local v24, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v10, 0x0

    .line 1049
    .local v10, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    const/4 v6, 0x0

    .line 1050
    .local v6, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    const/4 v8, 0x0

    .line 1051
    .local v8, "username":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 1052
    .local v7, "name":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 1053
    .local v9, "isRecent":Z
    const/16 v23, 0x0

    .line 1054
    .local v23, "un":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v19

    .line 1056
    .local v19, "obj":Ljava/lang/Object;
    const-string/jumbo v5, "chatsHighlightSearchColor"

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 1057
    .local v15, "hColor":I
    const-string/jumbo v5, "#%08X"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    and-int/lit8 v28, v15, -0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1059
    .local v16, "hexDarkColor":Ljava/lang/String;
    move-object/from16 v0, v19

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_2

    move-object/from16 v24, v19

    .line 1060
    check-cast v24, Lorg/telegram/tgnet/TLRPC$User;

    .line 1061
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1073
    .end local v19    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1074
    const/4 v9, 0x1

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_5

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 1105
    .end local v15    # "hColor":I
    :cond_1
    :goto_3
    if-eqz v24, :cond_c

    move-object/from16 v5, v24

    :goto_4
    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 1062
    .restart local v15    # "hColor":I
    .restart local v19    # "obj":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, v19

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_4

    .line 1063
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v26

    move-object/from16 v5, v19

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    .line 1064
    if-nez v10, :cond_3

    move-object/from16 v10, v19

    .line 1065
    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1067
    :cond_3
    iget-object v0, v10, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    move-object/from16 v23, v0

    goto :goto_1

    .line 1068
    :cond_4
    move-object/from16 v0, v19

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v5, :cond_0

    .line 1069
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    check-cast v19, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .end local v19    # "obj":Ljava/lang/Object;
    move-object/from16 v0, v19

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v6

    .line 1070
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget v0, v6, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v24

    goto :goto_1

    .line 1075
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 1077
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v14

    .line 1078
    .local v14, "globalSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1079
    .local v17, "localCount":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v13, 0x0

    .line 1080
    .local v13, "globalCount":I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_8

    add-int/lit8 v5, v17, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_8

    add-int v5, v17, v13

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_8

    const/4 v5, 0x1

    :goto_6
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    .line 1082
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, p2

    if-ge v0, v5, :cond_9

    .line 1083
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "name":Ljava/lang/CharSequence;
    check-cast v7, Ljava/lang/CharSequence;

    .line 1084
    .restart local v7    # "name":Ljava/lang/CharSequence;
    if-eqz v7, :cond_1

    if-eqz v24, :cond_1

    move-object/from16 v0, v24

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object/from16 v0, v24

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1085
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "@"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1086
    move-object v8, v7

    .line 1087
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1079
    .end local v13    # "globalCount":I
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v13, v5, 0x1

    goto :goto_5

    .line 1080
    .restart local v13    # "globalCount":I
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 1090
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, p2

    if-le v0, v5, :cond_1

    if-eqz v23, :cond_1

    .line 1091
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v12

    .line 1092
    .local v12, "foundUserName":Ljava/lang/String;
    const-string/jumbo v5, "@"

    invoke-virtual {v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1093
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1096
    :cond_a
    :try_start_0
    new-instance v25, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    .end local v8    # "username":Ljava/lang/CharSequence;
    .local v25, "username":Ljava/lang/CharSequence;
    :try_start_1
    move-object/from16 v0, v25

    check-cast v0, Landroid/text/SpannableStringBuilder;

    move-object v5, v0

    new-instance v26, Landroid/text/style/ForegroundColorSpan;

    sget-boolean v27, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v27, :cond_b

    .end local v15    # "hColor":I
    :goto_7
    move-object/from16 v0, v26

    invoke-direct {v0, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v27, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x21

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v8, v25

    .line 1102
    .end local v25    # "username":Ljava/lang/CharSequence;
    .restart local v8    # "username":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 1097
    .end local v8    # "username":Ljava/lang/CharSequence;
    .restart local v15    # "hColor":I
    .restart local v25    # "username":Ljava/lang/CharSequence;
    :cond_b
    const-string/jumbo v27, "windowBackgroundWhiteBlueText4"

    invoke-static/range {v27 .. v27}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    goto :goto_7

    .line 1099
    .end local v25    # "username":Ljava/lang/CharSequence;
    .restart local v8    # "username":Ljava/lang/CharSequence;
    :catch_0
    move-exception v11

    .line 1100
    .end local v15    # "hColor":I
    .local v11, "e":Ljava/lang/Exception;
    :goto_8
    move-object/from16 v8, v23

    .line 1101
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "foundUserName":Ljava/lang/String;
    .end local v13    # "globalCount":I
    .end local v14    # "globalSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .end local v17    # "localCount":I
    :cond_c
    move-object v5, v10

    .line 1105
    goto/16 :goto_4

    .line 1109
    .end local v4    # "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    .end local v6    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v7    # "name":Ljava/lang/CharSequence;
    .end local v8    # "username":Ljava/lang/CharSequence;
    .end local v9    # "isRecent":Z
    .end local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v16    # "hexDarkColor":Ljava/lang/String;
    .end local v23    # "un":Ljava/lang/String;
    .end local v24    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1110
    .local v4, "cell":Lorg/telegram/ui/Cells/GraySectionCell;
    const-string/jumbo v5, "chatsRowColor"

    const v26, -0xd0d0e

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setBackgroundColor(I)V

    .line 1111
    const-string/jumbo v5, "chatsNameColor"

    const v26, -0x757576

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setTextColor(I)V

    .line 1112
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1113
    sget-object v5, Lorg/telegram/messenger/query/SearchQuery;->hints:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    const/16 v20, 0x2

    .line 1114
    .local v20, "offset":I
    :goto_9
    move/from16 v0, p2

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 1115
    const-string/jumbo v5, "ChatHints"

    const v26, 0x7f070161

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    .end local v20    # "offset":I
    :cond_d
    const/16 v20, 0x0

    goto :goto_9

    .line 1117
    .restart local v20    # "offset":I
    :cond_e
    const-string/jumbo v5, "Recent"

    const v26, 0x7f07050b

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1119
    .end local v20    # "offset":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1120
    const-string/jumbo v5, "Hashtags"

    const v26, 0x7f0702b9

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1121
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, p2

    if-ne v0, v5, :cond_11

    .line 1122
    const-string/jumbo v5, "GlobalSearch"

    const v26, 0x7f0702a4

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1124
    :cond_11
    const-string/jumbo v5, "SearchMessages"

    const v26, 0x7f070572

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1129
    .end local v4    # "cell":Lorg/telegram/ui/Cells/GraySectionCell;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    .line 1131
    .local v4, "cell":Lorg/telegram/ui/Cells/DialogCell;
    const-string/jumbo v5, "chatsRowColor"

    const v26, -0xd0d0e

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/DialogCell;->setBackgroundColor(I)V

    .line 1132
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p2

    if-eq v0, v5, :cond_12

    const/4 v5, 0x1

    :goto_a
    iput-boolean v5, v4, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 1133
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/MessageObject;

    .line 1134
    .local v18, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-wide/from16 v0, v26

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2, v5}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;I)V

    goto/16 :goto_0

    .line 1132
    .end local v18    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_12
    const/4 v5, 0x0

    goto :goto_a

    .line 1141
    .end local v4    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v4, Lorg/telegram/ui/Cells/HashtagSearchCell;

    .line 1142
    .local v4, "cell":Lorg/telegram/ui/Cells/HashtagSearchCell;
    const-string/jumbo v5, "chatsMessageColor"

    const/high16 v26, -0x1000000

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setTextColor(I)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    add-int/lit8 v26, p2, -0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, p2

    if-eq v0, v5, :cond_13

    const/4 v5, 0x1

    :goto_b
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setNeedDivider(Z)V

    goto/16 :goto_0

    :cond_13
    const/4 v5, 0x0

    goto :goto_b

    .line 1148
    .end local v4    # "cell":Lorg/telegram/ui/Cells/HashtagSearchCell;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v21, v0

    check-cast v21, Lorg/telegram/ui/Components/RecyclerListView;

    .line 1149
    .local v21, "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    div-int/lit8 v26, p2, 0x2

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->setIndex(I)V

    goto/16 :goto_0

    .line 1099
    .end local v21    # "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    .local v4, "cell":Lorg/telegram/ui/Cells/ProfileSearchCell;
    .restart local v6    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v7    # "name":Ljava/lang/CharSequence;
    .restart local v9    # "isRecent":Z
    .restart local v10    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v12    # "foundUserName":Ljava/lang/String;
    .restart local v13    # "globalCount":I
    .restart local v14    # "globalSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    .restart local v16    # "hexDarkColor":Ljava/lang/String;
    .restart local v17    # "localCount":I
    .restart local v23    # "un":Ljava/lang/String;
    .restart local v24    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v25    # "username":Ljava/lang/CharSequence;
    :catch_1
    move-exception v11

    move-object/from16 v8, v25

    .end local v25    # "username":Ljava/lang/CharSequence;
    .restart local v8    # "username":Ljava/lang/CharSequence;
    goto/16 :goto_8

    .line 1043
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 970
    const/4 v2, 0x0

    .line 971
    .local v2, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 1030
    :goto_0
    const/4 v3, 0x5

    if-ne p2, v3, :cond_0

    .line 1031
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    :goto_1
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v3

    .line 973
    :pswitch_0
    new-instance v2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 974
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 976
    :pswitch_1
    new-instance v2, Lorg/telegram/ui/Cells/GraySectionCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 977
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 979
    :pswitch_2
    new-instance v2, Lorg/telegram/ui/Cells/DialogCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Landroid/content/Context;)V

    .line 980
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 982
    :pswitch_3
    new-instance v2, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 983
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 985
    :pswitch_4
    new-instance v2, Lorg/telegram/ui/Cells/HashtagSearchCell;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/HashtagSearchCell;-><init>(Landroid/content/Context;)V

    .line 986
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 988
    :pswitch_5
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$9;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$9;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/content/Context;)V

    .line 997
    .local v0, "horizontalListView":Lorg/telegram/ui/Components/RecyclerListView;
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 998
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 999
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1000
    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$10;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$10;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/content/Context;)V

    .line 1006
    .local v1, "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1007
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 1009
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 1010
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$11;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$11;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1018
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$12;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$12;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1027
    move-object v2, v0

    .line 1028
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_0

    .line 1033
    .end local v0    # "horizontalListView":Lorg/telegram/ui/Components/RecyclerListView;
    .end local v1    # "layoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_0
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public putRecentSearch(JLorg/telegram/tgnet/TLObject;)V
    .locals 7
    .param p1, "did"    # J
    .param p3, "object"    # Lorg/telegram/tgnet/TLObject;

    .prologue
    .line 420
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 421
    .local v0, "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    if-nez v0, :cond_0

    .line 422
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .end local v0    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    invoke-direct {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;-><init>()V

    .line 423
    .restart local v0    # "recentSearchObject":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 428
    iput-wide p1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    .line 429
    iput-object p3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    .line 431
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 432
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;

    invoke-direct {v2, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 447
    return-void

    .line 425
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 10
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 823
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 826
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    .line 828
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 836
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->unloadRecentHashtags()V

    .line 837
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 838
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 840
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eq v0, v3, :cond_3

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, v2, v1, v1, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZ)V

    .line 843
    :cond_3
    invoke-direct {p0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 832
    :catch_0
    move-exception v7

    .line 833
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 846
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eq v0, v3, :cond_8

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 847
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 849
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 850
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 851
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getHashtags()Ljava/util/ArrayList;

    move-result-object v8

    .line 852
    .local v8, "hashtags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 853
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 855
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_6

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    .line 863
    .end local v6    # "a":I
    .end local v8    # "hashtags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    .line 868
    :goto_4
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    add-int/lit8 v9, v0, 0x1

    iput v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    .line 869
    .local v9, "searchId":I
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;

    invoke-direct {v1, p0, p1, v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$8;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto/16 :goto_0

    .line 859
    .end local v9    # "searchId":I
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_6

    .line 860
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(Z)V

    goto :goto_3

    .line 865
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 866
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method

.method public setDelegate(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    .prologue
    .line 184
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    .line 185
    return-void
.end method
