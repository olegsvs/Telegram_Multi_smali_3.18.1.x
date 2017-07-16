.class public Lorg/telegram/ui/GroupCreateActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "GroupCreateActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;,
        Lorg/telegram/ui/GroupCreateActivity$SpansContainer;,
        Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

.field private allSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/GroupCreateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private chatId:I

.field private chatType:I

.field private containerHeight:I

.field private currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

.field private currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

.field private delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

.field private doneButton:Landroid/view/View;

.field private doneButtonVisible:Z

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private fieldY:I

.field private ignoreScrollEvent:Z

.field private isAlwaysShare:Z

.field private isGroup:Z

.field private isNeverShare:Z

.field private itemDecoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private maxCount:I

.field private scrollView:Landroid/widget/ScrollView;

.field private searchWas:Z

.field private searching:Z

.field private selectedContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/ui/Components/GroupCreateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 95
    const/16 v0, 0x1388

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 95
    const/16 v0, 0x1388

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    .line 96
    iput v1, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    .line 297
    const-string/jumbo v0, "chatType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    .line 298
    const-string/jumbo v0, "isAlwaysShare"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    .line 299
    const-string/jumbo v0, "isNeverShare"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    .line 300
    const-string/jumbo v0, "isGroup"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isGroup:Z

    .line 301
    const-string/jumbo v0, "chatId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:I

    .line 302
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    :goto_0
    iput v0, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    .line 303
    return-void

    .line 302
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->maxBroadcastCount:I

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/GroupCreateActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->fieldY:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->onDonePressed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/GroupCreateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity;->fieldY:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/GroupCreateActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->parentLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # Lorg/telegram/ui/Components/GroupCreateSpan;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$SpansContainer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkVisibleRows()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    return v0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/GroupCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/GroupCreateActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/GroupCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/GroupCreateActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->itemDecoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->closeSearch()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/GroupCreateActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/GroupCreateActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/GroupCreateActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->ignoreScrollEvent:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/GroupCreateActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/GroupCreateActivity;->ignoreScrollEvent:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/GroupCreateActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkVisibleRows()V
    .locals 7

    .prologue
    .line 691
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    .line 692
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 693
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 694
    .local v2, "child":Landroid/view/View;
    instance-of v5, v2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v5, :cond_0

    move-object v1, v2

    .line 695
    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 696
    .local v1, "cell":Lorg/telegram/ui/Cells/GroupCreateUserCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 697
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v4, :cond_0

    .line 698
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 692
    .end local v1    # "cell":Lorg/telegram/ui/Cells/GroupCreateUserCell;
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private closeSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 740
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    .line 741
    iput-boolean v2, p0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    .line 742
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->itemDecoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->setSearching(Z)V

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->setSearching(Z)V

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v1, "NoContacts"

    const v2, 0x7f0703d2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method private onDonePressed()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 705
    iget v8, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 706
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    iget-object v8, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 708
    .local v4, "uid":Ljava/lang/Integer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v5

    .line 709
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v5, :cond_0

    .line 710
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 713
    .end local v4    # "uid":Ljava/lang/Integer;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v9, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v3, v10}, Lorg/telegram/messenger/MessagesController;->addUsersToChannel(ILjava/util/ArrayList;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 714
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 715
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 716
    .local v1, "args2":Landroid/os/Bundle;
    const-string/jumbo v6, "chat_id"

    iget v8, p0, Lorg/telegram/ui/GroupCreateActivity;->chatId:I

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 717
    new-instance v6, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6, v7}, Lorg/telegram/ui/GroupCreateActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .end local v1    # "args2":Landroid/os/Bundle;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :goto_1
    move v6, v7

    .line 736
    :cond_2
    return v6

    .line 719
    :cond_3
    iget-boolean v8, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 722
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 724
    iget-boolean v6, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-eqz v6, :cond_6

    .line 725
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    if-eqz v6, :cond_5

    .line 726
    iget-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    invoke-interface {v6, v2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;->didSelectUsers(Ljava/util/ArrayList;)V

    .line 728
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity;->finishFragment()V

    goto :goto_1

    .line 730
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 731
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "result"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 732
    const-string/jumbo v6, "chatType"

    iget v8, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 733
    new-instance v6, Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {v6, v0}, Lorg/telegram/ui/GroupCreateFinalActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lorg/telegram/ui/GroupCreateActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_1
.end method

.method private updateHint()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 751
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-nez v0, :cond_0

    .line 752
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-ne v0, v8, :cond_3

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Members"

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 762
    :cond_0
    :goto_0
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-eq v0, v8, :cond_2

    .line 763
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 764
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 767
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    .line 768
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v9, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v9, v4, v6

    .line 769
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    aput v9, v4, v6

    .line 770
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 768
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 772
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 773
    iput-boolean v6, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    .line 787
    :cond_2
    :goto_1
    return-void

    .line 755
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "MembersCountZero"

    const v2, 0x7f07037d

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "Members"

    iget v5, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 758
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "MembersCount"

    const v2, 0x7f07037c

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lorg/telegram/ui/GroupCreateActivity;->maxCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 774
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 778
    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    .line 779
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v10, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v10, v4, v6

    .line 780
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    aput v10, v4, v6

    .line 781
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    .line 779
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDoneButtonAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 784
    iput-boolean v7, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    goto/16 :goto_1
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 637
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 638
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 639
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 640
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 641
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 642
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 340
    iput-boolean v7, p0, Lorg/telegram/ui/GroupCreateActivity;->searching:Z

    .line 341
    iput-boolean v7, p0, Lorg/telegram/ui/GroupCreateActivity;->searchWas:Z

    .line 342
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 343
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 344
    iput-object v12, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 345
    iget v5, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-ne v5, v8, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButtonVisible:Z

    .line 347
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v9, 0x7f0200b6

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 348
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 349
    iget v5, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-ne v5, v8, :cond_3

    .line 350
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v9, "ChannelAddMembers"

    const v10, 0x7f070105

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v9, Lorg/telegram/ui/GroupCreateActivity$1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/GroupCreateActivity$1;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 380
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 382
    .local v3, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0200d9

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 383
    .local v0, "done":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "theme"

    invoke-virtual {v5, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 384
    .local v4, "themePrefs":Landroid/content/SharedPreferences;
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 385
    const/high16 v5, 0x42600000    # 56.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v6, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(ILandroid/graphics/drawable/Drawable;I)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    .line 387
    iget v5, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-eq v5, v8, :cond_0

    .line 388
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setScaleX(F)V

    .line 389
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setScaleY(F)V

    .line 390
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setAlpha(F)V

    .line 393
    :cond_0
    new-instance v5, Lorg/telegram/ui/GroupCreateActivity$2;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$2;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->fragmentView:Landroid/view/View;

    .line 427
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 429
    .local v1, "frameLayout":Landroid/view/ViewGroup;
    new-instance v5, Lorg/telegram/ui/GroupCreateActivity$3;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$3;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    .line 442
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 443
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    const-string/jumbo v9, "windowBackgroundWhite"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5, v9}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 444
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 446
    new-instance v5, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    .line 447
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v9, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v10, -0x1

    const/high16 v11, -0x40000000    # -2.0f

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    new-instance v5, Lorg/telegram/ui/GroupCreateActivity$4;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$4;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    .line 459
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v5, v6, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 460
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v9, "groupcreate_hintText"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 461
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v9, "windowBackgroundWhiteBlackText"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextColor(I)V

    .line 462
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v9, "groupcreate_cursor"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 463
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 464
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintTextColor(I)V

    .line 465
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextColor(I)V

    .line 466
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v9, 0xa00b0

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setInputType(I)V

    .line 467
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSingleLine(Z)V

    .line 468
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v12}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setVerticalScrollBarEnabled(Z)V

    .line 470
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHorizontalScrollBarEnabled(Z)V

    .line 471
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextIsSelectable(Z)V

    .line 472
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v7, v7, v7, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setPadding(IIII)V

    .line 473
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v9, 0x10000006

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setImeOptions(I)V

    .line 474
    iget-object v9, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x5

    :goto_2
    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v9, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setGravity(I)V

    .line 475
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    iget-object v9, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5, v9}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->addView(Landroid/view/View;)V

    .line 476
    iget v5, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-ne v5, v8, :cond_a

    .line 477
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v9, "AddMutual"

    const v10, 0x7f07004d

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    .line 495
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/GroupCreateActivity$5;

    invoke-direct {v9, p0}, Lorg/telegram/ui/GroupCreateActivity$5;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 512
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/GroupCreateActivity$6;

    invoke-direct {v9, p0}, Lorg/telegram/ui/GroupCreateActivity$6;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 518
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/GroupCreateActivity$7;

    invoke-direct {v9, p0}, Lorg/telegram/ui/GroupCreateActivity$7;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 530
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/GroupCreateActivity$8;

    invoke-direct {v9, p0}, Lorg/telegram/ui/GroupCreateActivity$8;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 558
    new-instance v5, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 559
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 560
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 564
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 565
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v9, "NoContacts"

    const v10, 0x7f0703d2

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 566
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 568
    new-instance v2, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v6, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 570
    .local v2, "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    new-instance v5, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 571
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled()V

    .line 572
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v9, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 573
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v9, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;-><init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V

    iput-object v9, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 574
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 575
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 576
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v7, :cond_10

    :goto_5
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 577
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    invoke-direct {v6}, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;-><init>()V

    iput-object v6, p0, Lorg/telegram/ui/GroupCreateActivity;->itemDecoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 578
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 579
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/GroupCreateActivity$9;

    invoke-direct {v6, p0}, Lorg/telegram/ui/GroupCreateActivity$9;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 622
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/GroupCreateActivity$10;

    invoke-direct {v6, p0}, Lorg/telegram/ui/GroupCreateActivity$10;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 631
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    .line 632
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateTheme()V

    .line 633
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->fragmentView:Landroid/view/View;

    return-object v5

    .end local v0    # "done":Landroid/graphics/drawable/Drawable;
    .end local v1    # "frameLayout":Landroid/view/ViewGroup;
    .end local v2    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .end local v3    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v4    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_2
    move v5, v7

    .line 345
    goto/16 :goto_0

    .line 352
    :cond_3
    iget-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-eqz v5, :cond_5

    .line 353
    iget-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->isGroup:Z

    if-eqz v5, :cond_4

    .line 354
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v9, "AlwaysAllow"

    const v10, 0x7f070065

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 356
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v9, "AlwaysShareWithTitle"

    const v10, 0x7f07006a

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 358
    :cond_5
    iget-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-eqz v5, :cond_7

    .line 359
    iget-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->isGroup:Z

    if-eqz v5, :cond_6

    .line 360
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v9, "NeverAllow"

    const v10, 0x7f0703b8

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 362
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v9, "NeverShareWithTitle"

    const v10, 0x7f0703bc

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 365
    :cond_7
    iget-object v9, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v5, p0, Lorg/telegram/ui/GroupCreateActivity;->chatType:I

    if-nez v5, :cond_8

    const-string/jumbo v5, "NewGroup"

    const v10, 0x7f0703c0

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v9, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v5, "NewBroadcastList"

    const v10, 0x7f0703bd

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 474
    .restart local v0    # "done":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "frameLayout":Landroid/view/ViewGroup;
    .restart local v3    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .restart local v4    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_9
    const/4 v5, 0x3

    goto/16 :goto_2

    .line 479
    :cond_a
    iget-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z

    if-eqz v5, :cond_c

    .line 480
    iget-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->isGroup:Z

    if-eqz v5, :cond_b

    .line 481
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v9, "AlwaysAllowPlaceholder"

    const v10, 0x7f070066

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 483
    :cond_b
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v9, "AlwaysShareWithPlaceholder"

    const v10, 0x7f070069

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 485
    :cond_c
    iget-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z

    if-eqz v5, :cond_e

    .line 486
    iget-boolean v5, p0, Lorg/telegram/ui/GroupCreateActivity;->isGroup:Z

    if-eqz v5, :cond_d

    .line 487
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v9, "NeverAllowPlaceholder"

    const v10, 0x7f0703b9

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 489
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v9, "NeverShareWithPlaceholder"

    const v10, 0x7f0703bb

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 492
    :cond_e
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string/jumbo v9, "SendMessageTo"

    const v10, 0x7f070596

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 562
    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto/16 :goto_4

    .restart local v2    # "linearLayoutManager":Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    :cond_10
    move v6, v8

    .line 576
    goto/16 :goto_5
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 654
    sget v4, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    if-ne p1, v4, :cond_2

    .line 655
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v4, :cond_0

    .line 656
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 658
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    if-eqz v4, :cond_1

    .line 659
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->adapter:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->notifyDataSetChanged()V

    .line 677
    :cond_1
    :goto_0
    return-void

    .line 661
    :cond_2
    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, v4, :cond_5

    .line 662
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v4, :cond_1

    .line 663
    const/4 v4, 0x0

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 664
    .local v3, "mask":I
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 665
    .local v2, "count":I
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_3

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_1

    .line 666
    :cond_3
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 667
    iget-object v4, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 668
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v4, :cond_4

    .line 669
    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    .line 666
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 674
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "mask":I
    :cond_5
    sget v4, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne p1, v4, :cond_1

    .line 675
    invoke-virtual {p0}, Lorg/telegram/ui/GroupCreateActivity;->removeSelfFromStack()V

    goto :goto_0
.end method

.method public getContainerHeight()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I

    return v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 12

    .prologue
    .line 1078
    new-instance v9, Lorg/telegram/ui/GroupCreateActivity$11;

    invoke-direct {v9, p0}, Lorg/telegram/ui/GroupCreateActivity$11;-><init>(Lorg/telegram/ui/GroupCreateActivity;)V

    .line 1091
    .local v9, "\u0441ellDelegate":Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;
    const/16 v0, 0x25

    new-array v10, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->scrollView:Landroid/widget/ScrollView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "fastScrollActive"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "fastScrollInactive"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "fastScrollText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    aput-object v0, v10, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "emptyListPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "progressCircle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "groupcreate_hintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "groupcreate_cursor"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "graySection"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v11, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "drawable"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "groupcreate_sectionShadow"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "groupcreate_sectionText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "groupcreate_sectionText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "groupcreate_checkbox"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "groupcreate_checkboxCheck"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "groupcreate_onlineText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v11, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "statusTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "groupcreate_offlineText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v11

    const/16 v8, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v4

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

    aput-object v0, v10, v8

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundRed"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundOrange"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1c

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundViolet"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1d

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundGreen"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1e

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundCyan"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x1f

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundBlue"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x20

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "avatar_backgroundPink"

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x21

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundGroupCreateSpanBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x22

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "groupcreate_spanBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x23

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "groupcreate_spanText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    const/16 v8, 0x24

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "avatar_backgroundBlue"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v10, v8

    return-object v10
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 323
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 324
    .local v0, "span":Lorg/telegram/ui/Components/GroupCreateSpan;
    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->isDeleting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 326
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 327
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->updateHint()V

    .line 328
    invoke-direct {p0}, Lorg/telegram/ui/GroupCreateActivity;->checkVisibleRows()V

    .line 336
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    .line 333
    :cond_1
    iput-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 334
    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->startDeleteAnimation()V

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 308
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 309
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 310
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 316
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 317
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 318
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 319
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 646
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->requestFocus()Z

    .line 650
    :cond_0
    return-void
.end method

.method public setContainerHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 680
    iput p1, p0, Lorg/telegram/ui/GroupCreateActivity;->containerHeight:I

    .line 681
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity;->spansContainer:Lorg/telegram/ui/GroupCreateActivity$SpansContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCreateActivity$SpansContainer;->requestLayout()V

    .line 684
    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V
    .locals 0
    .param p1, "groupCreateActivityDelegate"    # Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    .prologue
    .line 790
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity;->delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    .line 791
    return-void
.end method
