.class public Lorg/telegram/ui/ChangeUserActivity;
.super Landroid/app/Activity;
.source "ChangeUserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static ctx:Landroid/content/Context;

.field static prepareProgress:Landroid/app/ProgressDialog;


# instance fields
.field adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

.field public currentUser:I

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field lvUserList:Landroid/widget/ListView;

.field private userItems:Lorg/telegram/ui/Components/UserItems;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    .line 57
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUserActivity;->showAlertDeleteUser(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUserActivity;->deleteUser(I)V

    return-void
.end method

.method public static convertDpToPixel(F)F
    .locals 4
    .param p0, "dp"    # F

    .prologue
    .line 403
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 404
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float v1, p0, v2

    .line 405
    .local v1, "px":F
    return v1
.end method

.method private deleteUser(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 160
    const/4 v1, -0x1

    .line 161
    .local v1, "toDelete":I
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 163
    const-string/jumbo v2, "userID"

    invoke-virtual {p0, v2, v5}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 164
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state_user_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/files_user_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChangeUserActivity;->deleteDir(Ljava/lang/String;)V

    .line 167
    iget v2, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->setUser(I)V

    .line 168
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->prepareArrayList()V

    goto :goto_0
.end method

.method private getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 331
    invoke-static {p1}, Lorg/telegram/messenger/ApplicationLoader2;->convertConfig2(Ljava/lang/String;)V

    .line 332
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig2;->getCurrentUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 333
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    const-string/jumbo v1, "TGM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserByTag: called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-object v0
.end method

.method private showAlertAddUser()V
    .locals 6

    .prologue
    .line 193
    const v5, 0x7f070617

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f070618

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "message":Ljava/lang/String;
    const v5, 0x7f070619

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "button1String":Ljava/lang/String;
    const v5, 0x7f070616

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "button2String":Ljava/lang/String;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, "ad":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 200
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 201
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$6;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 206
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$7;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 211
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 212
    return-void
.end method

.method private showAlertDeleteUser(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 171
    const v5, 0x7f07061c

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f07061a

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "message":Ljava/lang/String;
    const v5, 0x7f07061d

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "button1String":Ljava/lang/String;
    const v5, 0x7f07061b

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "button2String":Ljava/lang/String;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "ad":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 178
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 179
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$4;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChangeUserActivity$4;-><init>(Lorg/telegram/ui/ChangeUserActivity;I)V

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 184
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$5;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 190
    return-void
.end method

.method public static showPrepareDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 141
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    .line 142
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 143
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 144
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 145
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 146
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 147
    return-void
.end method


# virtual methods
.method public AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string/jumbo v0, "TGM"

    const-string/jumbo v1, "AddObjectToList: called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Lorg/telegram/ui/Components/UserItems;

    invoke-direct {v0}, Lorg/telegram/ui/Components/UserItems;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UserItems;->setPhone(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UserItems;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/UserItems;->setName(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method public AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "pos"    # I

    .prologue
    .line 360
    const-string/jumbo v0, "TGM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AddObjectToList with setCurrent: called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Lorg/telegram/ui/Components/UserItems;

    invoke-direct {v0}, Lorg/telegram/ui/Components/UserItems;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UserItems;->setPhone(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UserItems;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p4}, Lorg/telegram/ui/Components/UserItems;->setCurrent(I)V

    .line 365
    iput p4, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/UserItems;->setName(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    return-void
.end method

.method public addUser()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 228
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersDisabled()I

    move-result v0

    .line 229
    .local v0, "firstDisabledUser":I
    const-string/jumbo v2, "TGM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addUser: firstDisabledUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string/jumbo v2, "userID"

    invoke-virtual {p0, v2, v5}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 231
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "lastID"

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    const-string/jumbo v2, "userTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lastUser: tag changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {v0}, Lorg/telegram/messenger/ChangeUserHelper;->setUserTag(I)V

    .line 234
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "userID"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state_user_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "addedUser"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    const-string/jumbo v2, "userTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addUser: tag changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lorg/telegram/ui/ChangeUserActivity;->showAlertAddUser()V

    .line 240
    return-void
.end method

.method public backToLastUser()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 243
    const-string/jumbo v1, "userID"

    invoke-virtual {p0, v1, v4}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 244
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state_user_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "addedUser"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "userID"

    const-string/jumbo v3, "lastID"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    const-string/jumbo v1, "addedUser"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->deleteUser(I)V

    .line 248
    const-string/jumbo v1, "userTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "backToLastUser: tag changed to _"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "lastID"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->restart()V

    .line 250
    return-void
.end method

.method public createRoundBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 382
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 383
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 386
    .local v2, "circleBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v0, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 387
    .local v6, "shader":Landroid/graphics/BitmapShader;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 388
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 389
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 391
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v1, v7, v8, v9, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 392
    const/high16 v7, 0x42480000    # 50.0f

    .line 393
    invoke-static {v7}, Lorg/telegram/ui/ChangeUserActivity;->convertDpToPixel(F)F

    move-result v7

    float-to-int v7, v7

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v8}, Lorg/telegram/ui/ChangeUserActivity;->convertDpToPixel(F)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    .line 392
    invoke-static {v2, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 399
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "circleBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v6    # "shader":Landroid/graphics/BitmapShader;
    :goto_0
    return-object v5

    .line 396
    :catch_0
    move-exception v3

    .line 397
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 399
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public deleteDir(Ljava/lang/String;)V
    .locals 5
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 221
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 225
    .end local v0    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public drawableToBitmap(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # I

    .prologue
    .line 371
    const-string/jumbo v3, "TGM"

    const-string/jumbo v4, "drawableToBitmap: called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 374
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 375
    .local v1, "currentState":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 376
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "currentState":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 377
    :cond_0
    return-object v0
.end method

.method public getBitmap(Lorg/telegram/tgnet/TLRPC$User;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 339
    const-string/jumbo v1, "TGM"

    const-string/jumbo v2, "getBitmap: called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_0

    .line 341
    const-string/jumbo v1, "TGM"

    const-string/jumbo v2, "getBitmap: photo != null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->createRoundBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f020035

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->drawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getUsersDisabled()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "count":I
    const-string/jumbo v3, "TGM"

    const-string/jumbo v4, "getUsersDisabled: called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string/jumbo v3, "userID"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 256
    .local v2, "userDisabled":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x9

    if-ge v1, v3, :cond_1

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state_user_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 259
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 256
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getUsersEnabled()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v3, "TGM"

    const-string/jumbo v4, "getUsersEnabled: called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string/jumbo v3, "userID"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 266
    .local v1, "userDisabled":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x9

    if-ge v0, v3, :cond_1

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state_user_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    return-object v2
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 68
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->finish()V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 77
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    const-string/jumbo v5, "fromIntro"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->backToLastUser()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 80
    const v5, 0x7f0700ee

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_1

    .line 83
    const v5, 0x7f02008f

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 87
    :cond_1
    :try_start_0
    sput-object p0, Lorg/telegram/ui/ChangeUserActivity;->ctx:Landroid/content/Context;

    .line 88
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    .line 89
    const v5, 0x7f0d001b

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    .line 90
    iget-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    new-instance v6, Lorg/telegram/ui/ChangeUserActivity$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ChangeUserActivity$1;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->prepareArrayList()V

    .line 105
    const-string/jumbo v5, "TGM"

    const-string/jumbo v6, "onCreate: prepareArray"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v5, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 107
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$2;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 121
    .local v3, "prepareThread":Ljava/lang/Thread;
    const v5, 0x7f0d001c

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    .line 122
    .local v1, "fab":Lcom/github/clans/fab/FloatingActionButton;
    const-string/jumbo v5, "chats_actionBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    .line 123
    const-string/jumbo v5, "chats_actionPressedBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    .line 124
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$3;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v1, v5}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "fab":Lcom/github/clans/fab/FloatingActionButton;
    .end local v3    # "prepareThread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v4

    .line 135
    .local v4, "th":Ljava/lang/Throwable;
    const-string/jumbo v5, "TGM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 152
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    .line 153
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 154
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    .line 155
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 156
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 157
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    if-ne v0, p3, :cond_0

    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f07062d

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ChangeUserActivity;->setUser(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 410
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 415
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 412
    :pswitch_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->onBackPressed()V

    .line 413
    const/4 v0, 0x1

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public prepareArrayList()V
    .locals 8

    .prologue
    .line 311
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    .line 312
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 313
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 314
    .local v2, "k":I
    const-string/jumbo v5, "TGM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prepareArrayLits: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string/jumbo v5, "TGM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prepareArrayList: getUsersEnabled().size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string/jumbo v5, "TGM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prepareArrayList: getUsersEnabled().get(i) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string/jumbo v0, "null"

    .line 318
    .local v0, "first_name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_user_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_user_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 320
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_user_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 321
    .local v3, "phone":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_user_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getBitmap(Lorg/telegram/tgnet/TLRPC$User;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 322
    .local v4, "photo":Landroid/graphics/Bitmap;
    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {p0, v4, v0, v3, v1}, Lorg/telegram/ui/ChangeUserActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 319
    .end local v3    # "phone":Ljava/lang/String;
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_user_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/ui/ChangeUserActivity;->getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_user_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/telegram/ui/ChangeUserActivity;->getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 323
    .restart local v3    # "phone":Ljava/lang/String;
    .restart local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0, v4, v0, v3}, Lorg/telegram/ui/ChangeUserActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 325
    .end local v0    # "first_name":Ljava/lang/String;
    .end local v2    # "k":I
    .end local v3    # "phone":Ljava/lang/String;
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v5, Lorg/telegram/ui/Adapters/UserItemsAdapter;

    iget-object v6, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/Adapters/UserItemsAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 326
    iget-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    iget-object v6, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 327
    const-string/jumbo v5, "TGM"

    const-string/jumbo v6, "prepareArrayLits: setAdapters"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public restart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 292
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    .local v2, "mStartActivity":Landroid/content/Intent;
    const v1, 0x1e240

    .line 294
    .local v1, "mPendingIntentId":I
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-static {v4, v1, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 296
    .local v0, "mPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 297
    .local v3, "mgr":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v3, v8, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 299
    invoke-virtual {p0, v8}, Lorg/telegram/ui/ChangeUserActivity;->moveTaskToBack(Z)Z

    .line 300
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 301
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 302
    return-void
.end method

.method public setUser(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 275
    const/4 v1, -0x1

    .line 276
    .local v1, "toSetUser":I
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 277
    invoke-static {v1}, Lorg/telegram/messenger/ChangeUserHelper;->setUserTag(I)V

    .line 278
    const-string/jumbo v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "userID"

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    const-string/jumbo v2, "userTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUser: tag changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->restart()V

    .line 283
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
