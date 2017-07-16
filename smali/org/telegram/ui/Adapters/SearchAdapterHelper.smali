.class public Lorg/telegram/ui/Adapters/SearchAdapterHelper;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;,
        Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

.field private globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private hashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;"
        }
    .end annotation
.end field

.field private hashtagsByText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;"
        }
    .end annotation
.end field

.field private hashtagsLoadedFromDb:Z

.field private lastFoundUsername:Ljava/lang/String;

.field private lastReqId:I

.field private reqId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .prologue
    .line 28
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastReqId:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    return-object v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Adapters/SearchAdapterHelper;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    return p1
.end method

.method private putRecentHashtags(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$3;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 153
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x0

    .line 157
    .local v0, "changed":Z
    const-string/jumbo v7, "(^|\\s)#[\\w@\\.]+"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 158
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 159
    .local v4, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 160
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 161
    .local v6, "start":I
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 162
    .local v1, "end":I
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_2

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-eq v7, v8, :cond_2

    .line 163
    add-int/lit8 v6, v6, 0x1

    .line 165
    :cond_2
    invoke-interface {p1, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "hashtag":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    if-nez v7, :cond_3

    .line 167
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    .line 168
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 170
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    .line 171
    .local v3, "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    if-nez v3, :cond_4

    .line 172
    new-instance v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    .end local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    invoke-direct {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;-><init>()V

    .line 173
    .restart local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    iput-object v2, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    .line 174
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    iget-object v8, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v7, v8

    iput v7, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    .line 179
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 180
    const/4 v0, 0x1

    .line 181
    goto :goto_1

    .line 176
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 182
    .end local v1    # "end":I
    .end local v2    # "hashtag":Ljava/lang/String;
    .end local v3    # "hashtagObject":Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    .end local v6    # "start":I
    :cond_5
    if-eqz v0, :cond_0

    .line 183
    iget-object v7, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->putRecentHashtags(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public clearRecentHashtags()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    .line 235
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$4;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method public getGlobalSearch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHashtags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastFoundUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    return-object v0
.end method

.method public loadRecentHashtags()Z
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryServerSearch(Ljava/lang/String;ZZZ)V
    .locals 9
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "allowChats"    # Z
    .param p3, "allowBots"    # Z
    .param p4, "allowSelf"    # Z

    .prologue
    const/4 v4, 0x0

    .line 52
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 54
    iput v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    .line 56
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    iput v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastReqId:I

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged()V

    .line 97
    :goto_0
    return-void

    .line 62
    :cond_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    .line 63
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_search;
    iput-object p1, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    .line 64
    const/16 v0, 0x32

    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    .line 65
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastReqId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastReqId:I

    .line 66
    .local v2, "currentReqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;IZZZLjava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v8, v7, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->reqId:I

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V
    .locals 0
    .param p1, "searchAdapterHelperDelegate"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    .line 150
    return-void
.end method

.method public setHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 249
    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 252
    return-void
.end method

.method public unloadRecentHashtags()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    .line 101
    return-void
.end method
