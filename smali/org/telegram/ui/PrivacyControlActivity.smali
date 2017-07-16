.class public Lorg/telegram/ui/PrivacyControlActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PrivacyControlActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;,
        Lorg/telegram/ui/PrivacyControlActivity$LinkMovementMethodMy;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private alwaysShareRow:I

.field private bgColor:I

.field private currentMinus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentPlus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentType:I

.field private detailRow:I

.field private doneButton:Landroid/view/View;

.field private enableAnimation:Z

.field private everybodyRow:I

.field private lastCheckedType:I

.field private listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private myContactsRow:I

.field private neverShareRow:I

.field private nobodyRow:I

.field private rowCount:I

.field private rulesType:I

.field private sectionRow:I

.field private shareDetailRow:I

.field private shareSectionRow:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I

    .line 103
    iput p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    .line 104
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    return v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/PrivacyControlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/PrivacyControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/PrivacyControlActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->showErrorAlert()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->bgColor:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->detailRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareDetailRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->applyCurrentPrivacySettings()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->sectionRow:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareSectionRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PrivacyControlActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/PrivacyControlActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/PrivacyControlActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PrivacyControlActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I

    return v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/PrivacyControlActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows()V

    return-void
.end method

.method private applyCurrentPrivacySettings()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 324
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;-><init>()V

    .line 325
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    if-ne v7, v10, :cond_1

    .line 326
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 332
    :goto_0
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eqz v7, :cond_4

    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 333
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;-><init>()V

    .line 334
    .local v5, "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 335
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 336
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_0

    .line 337
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    .line 338
    .local v1, "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v1, :cond_0

    .line 339
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v1    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 327
    .end local v0    # "a":I
    .end local v5    # "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    if-ne v7, v9, :cond_2

    .line 328
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_0

    .line 330
    :cond_2
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;-><init>()V

    iput-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_0

    .line 343
    .restart local v0    # "a":I
    .restart local v5    # "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;
    :cond_3
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v0    # "a":I
    .end local v5    # "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers;
    :cond_4
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eq v7, v9, :cond_7

    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 346
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;-><init>()V

    .line 347
    .local v5, "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 348
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 349
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v6, :cond_5

    .line 350
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    .line 351
    .restart local v1    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v1, :cond_5

    .line 352
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v1    # "inputUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 356
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v0    # "a":I
    .end local v5    # "rule":Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowUsers;
    :cond_7
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-nez v7, :cond_a

    .line 359
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_8
    :goto_3
    const/4 v2, 0x0

    .line 366
    .local v2, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-virtual {p0}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 367
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    .end local v2    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-virtual {p0}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, v9}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 368
    .restart local v2    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string/jumbo v7, "Loading"

    const v8, 0x7f070356

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 370
    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 371
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 373
    :cond_9
    move-object v3, v2

    .line 374
    .local v3, "progressDialogFinal":Lorg/telegram/ui/ActionBar/AlertDialog;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/PrivacyControlActivity$3;

    invoke-direct {v8, p0, v3}, Lorg/telegram/ui/PrivacyControlActivity$3;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v7, v4, v8, v10}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 399
    return-void

    .line 360
    .end local v2    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .end local v3    # "progressDialogFinal":Lorg/telegram/ui/ActionBar/AlertDialog;
    :cond_a
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v7, v9, :cond_b

    .line 361
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowAll;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueDisallowAll;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 362
    :cond_b
    iget v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v7, v10, :cond_8

    .line 363
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowContacts;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private checkPrivacy()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 413
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    .line 414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    .line 415
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 416
    .local v1, "privacyRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PrivacyRule;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 417
    :cond_0
    iput v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    .line 446
    :goto_0
    return-void

    .line 420
    :cond_1
    const/4 v3, -0x1

    .line 421
    .local v3, "type":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 422
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    .line 423
    .local v2, "rule":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v4, :cond_2

    .line 424
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 421
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    :cond_2
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v4, :cond_3

    .line 426
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 427
    :cond_3
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v4, :cond_4

    .line 428
    const/4 v3, 0x0

    goto :goto_2

    .line 429
    :cond_4
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v4, :cond_5

    .line 430
    const/4 v3, 0x1

    goto :goto_2

    .line 432
    :cond_5
    const/4 v3, 0x2

    goto :goto_2

    .line 435
    .end local v2    # "rule":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    :cond_6
    if-eqz v3, :cond_7

    if-ne v3, v6, :cond_a

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 436
    :cond_7
    const/4 v4, 0x0

    iput v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    .line 442
    :cond_8
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 443
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows()V

    goto :goto_0

    .line 437
    :cond_a
    if-eq v3, v8, :cond_b

    if-ne v3, v6, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 438
    :cond_b
    iput v8, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    goto :goto_3

    .line 439
    :cond_c
    if-eq v3, v7, :cond_d

    if-ne v3, v6, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 440
    :cond_d
    iput v7, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    goto :goto_3
.end method

.method public static setEdgeGlowColor(Landroid/widget/AbsListView;I)V
    .locals 14
    .param p0, "listView"    # Landroid/widget/AbsListView;
    .param p1, "color"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 282
    const-class v0, Landroid/widget/AbsListView;

    .line 286
    .local v0, "CLASS_LIST_VIEW":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .local v4, "edgeGlowTop":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .line 288
    .local v3, "edgeGlowBottom":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    array-length v11, v10

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v11, :cond_1

    aget-object v7, v10, v9

    .line 289
    .local v7, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v8, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 288
    :goto_2
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 289
    :sswitch_0
    const-string/jumbo v13, "mEdgeGlowTop"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v13, "mEdgeGlowBottom"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    .line 291
    :pswitch_0
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 292
    move-object v4, v7

    .line 293
    goto :goto_2

    .line 295
    :pswitch_1
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 296
    move-object v3, v7

    goto :goto_2

    .line 301
    .end local v7    # "f":Ljava/lang/reflect/Field;
    :cond_1
    move-object v2, v4

    .line 302
    .local v2, "LIST_VIEW_FIELD_EDGE_GLOW_TOP":Ljava/lang/reflect/Field;
    move-object v1, v3

    .line 304
    .local v1, "LIST_VIEW_FIELD_EDGE_GLOW_BOTTOM":Ljava/lang/reflect/Field;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    .line 307
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EdgeEffect;

    .line 308
    .local v5, "ee":Landroid/widget/EdgeEffect;
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 309
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "ee":Landroid/widget/EdgeEffect;
    check-cast v5, Landroid/widget/EdgeEffect;

    .line 310
    .restart local v5    # "ee":Landroid/widget/EdgeEffect;
    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v5    # "ee":Landroid/widget/EdgeEffect;
    :cond_2
    :goto_3
    return-void

    .line 311
    :catch_0
    move-exception v6

    .line 312
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 289
    :sswitch_data_0
    .sparse-switch
        -0x7512167e -> :sswitch_1
        -0x1d2f76a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showErrorAlert()V
    .locals 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 410
    :goto_0
    return-void

    .line 405
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v1, "AppName"

    const v2, 0x7f070078

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 407
    const-string/jumbo v1, "PrivacyFloodControlError"

    const v2, 0x7f0704f7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 408
    const-string/jumbo v1, "OK"

    const v2, 0x7f070452

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 409
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/PrivacyControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updateRows()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    .line 450
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->sectionRow:I

    .line 451
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I

    .line 452
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I

    .line 453
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    if-eq v0, v3, :cond_3

    .line 454
    iput v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    .line 458
    :goto_0
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->detailRow:I

    .line 459
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareSectionRow:I

    .line 460
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v0, v3, :cond_4

    .line 461
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    .line 465
    :goto_1
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->currentType:I

    if-ne v0, v3, :cond_5

    .line 466
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    .line 470
    :goto_2
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->shareDetailRow:I

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->notifyDataSetChanged()V

    .line 474
    :cond_2
    return-void

    .line 456
    :cond_3
    iget v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I

    goto :goto_0

    .line 463
    :cond_4
    iput v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I

    goto :goto_1

    .line 468
    :cond_5
    iput v2, p0, Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I

    goto :goto_2
.end method

.method private updateTheme()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 274
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarTitleColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 275
    invoke-virtual {p0}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 276
    .local v0, "back":Landroid/graphics/drawable/Drawable;
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->prefActionbarIconsColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 123
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 124
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 125
    iget v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 126
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "Calls"

    const v5, 0x7f0700ed

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PrivacyControlActivity$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 170
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 171
    .local v1, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v3, 0x7f0200d9

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v6, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    .line 172
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 174
    new-instance v3, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;-><init>(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    .line 175
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 176
    .local v2, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "prefBGColor"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->bgColor:I

    .line 177
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->fragmentView:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 179
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    const-string/jumbo v3, "windowBackgroundGray"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 181
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 182
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->bgColor:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    .line 183
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v6, v7}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 184
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 185
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v8, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity;->listAdapter:Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 187
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PrivacyControlActivity$2;-><init>(Lorg/telegram/ui/PrivacyControlActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 268
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateTheme()V

    .line 269
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->fragmentView:Landroid/view/View;

    return-object v3

    .line 127
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .end local v2    # "themePrefs":Landroid/content/SharedPreferences;
    :cond_1
    iget v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I

    if-ne v3, v6, :cond_2

    .line 128
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "GroupsAndChannels"

    const v5, 0x7f0702b5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 130
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "PrivacyLastSeen"

    const v5, 0x7f0704f8

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 318
    sget v0, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    if-ne p1, v0, :cond_0

    .line 319
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->checkPrivacy()V

    .line 321
    :cond_0
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 636
    const/16 v0, 0x11

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->fragmentView:Landroid/view/View;

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

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

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

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v10, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

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

    const/16 v10, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackground"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/RadioCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "radioButton"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "radioBackgroundChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    return-object v9
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->checkPrivacy()V

    .line 110
    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity;->updateRows()V

    .line 111
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 118
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 478
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z

    .line 481
    return-void
.end method
