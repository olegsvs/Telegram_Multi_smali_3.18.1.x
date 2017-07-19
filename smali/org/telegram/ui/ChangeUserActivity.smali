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

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    .line 56
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUserActivity;->showAlertDeleteUser(I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUserActivity;->deleteUser(I)V

    return-void
.end method

.method public static convertDpToPixel(F)F
    .locals 4
    .param p0, "dp"    # F

    .prologue
    .line 415
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 416
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float v1, p0, v2

    .line 417
    .local v1, "px":F
    return v1
.end method

.method private deleteUser(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 172
    const/4 v1, -0x1

    .line 173
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

    .line 175
    const-string v2, "userID"

    invoke-virtual {p0, v2, v5}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state_user_"

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

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/files_user_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChangeUserActivity;->deleteDir(Ljava/lang/String;)V

    .line 179
    iget v2, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->setUser(I)V

    .line 180
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->prepareArrayList()V

    goto :goto_0
.end method

.method private getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-static {p1}, Lorg/telegram/messenger/ApplicationLoader2;->convertConfig2(Ljava/lang/String;)V

    .line 344
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig2;->getCurrentUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 345
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    const-string v1, "TGM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserByTag: called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-object v0
.end method

.method private showAlertAddUser()V
    .locals 6

    .prologue
    .line 205
    const v5, 0x7f0705b5

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f0705b6

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "message":Ljava/lang/String;
    const v5, 0x7f0705b7

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "button1String":Ljava/lang/String;
    const v5, 0x7f0705b4

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "button2String":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "ad":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 212
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 213
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$5;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$6;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 224
    return-void
.end method

.method private showAlertDeleteUser(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 183
    const v5, 0x7f0705ba

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f0705b8

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "message":Ljava/lang/String;
    const v5, 0x7f0705bb

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "button1String":Ljava/lang/String;
    const v5, 0x7f0705b9

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "button2String":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "ad":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 191
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$3;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChangeUserActivity$3;-><init>(Lorg/telegram/ui/ChangeUserActivity;I)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$4;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 202
    return-void
.end method

.method public static showPrepareDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 153
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    .line 154
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 155
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 156
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 157
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 158
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 159
    return-void
.end method


# virtual methods
.method public AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 362
    const-string v0, "TGM"

    const-string v1, "AddObjectToList: called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v0, Lorg/telegram/ui/Components/UserItems;

    invoke-direct {v0}, Lorg/telegram/ui/Components/UserItems;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UserItems;->setPhone(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UserItems;->setPhoto(Landroid/graphics/Bitmap;)V

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

.method public AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "pos"    # I

    .prologue
    .line 372
    const-string v0, "TGM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddObjectToList with setCurrent: called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Lorg/telegram/ui/Components/UserItems;

    invoke-direct {v0}, Lorg/telegram/ui/Components/UserItems;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UserItems;->setPhone(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UserItems;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p4}, Lorg/telegram/ui/Components/UserItems;->setCurrent(I)V

    .line 377
    iput p4, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/UserItems;->setName(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method public addUser()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 240
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersDisabled()I

    move-result v0

    .line 241
    .local v0, "firstDisabledUser":I
    const-string v2, "TGM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUser: firstDisabledUser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v2, "userID"

    invoke-virtual {p0, v2, v5}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 243
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lastID"

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    const-string v2, "userTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastUser: tag changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {v0}, Lorg/telegram/messenger/ChangeUserHelper;->setUserTag(I)V

    .line 246
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "userID"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state_user_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "addedUser"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 250
    const-string v2, "userTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUser: tag changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Lorg/telegram/ui/ChangeUserActivity;->showAlertAddUser()V

    .line 252
    return-void
.end method

.method public backToLastUser()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 255
    const-string v1, "userID"

    invoke-virtual {p0, v1, v4}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 256
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state_user_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "addedUser"

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

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userID"

    const-string v3, "lastID"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    const-string v1, "addedUser"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->deleteUser(I)V

    .line 260
    const-string v1, "userTAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backToLastUser: tag changed to _"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lastID"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lorg/telegram/messenger/Utilities;->restartApp()V

    .line 262
    return-void
.end method

.method public createRoundBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 394
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 395
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 398
    .local v2, "circleBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v0, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 399
    .local v6, "shader":Landroid/graphics/BitmapShader;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 400
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 401
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 402
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 403
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

    .line 404
    const/high16 v7, 0x42480000    # 50.0f

    .line 405
    invoke-static {v7}, Lorg/telegram/ui/ChangeUserActivity;->convertDpToPixel(F)F

    move-result v7

    float-to-int v7, v7

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v8}, Lorg/telegram/ui/ChangeUserActivity;->convertDpToPixel(F)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    .line 404
    invoke-static {v2, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 411
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "circleBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v6    # "shader":Landroid/graphics/BitmapShader;
    :goto_0
    return-object v5

    .line 408
    :catch_0
    move-exception v3

    .line 409
    .local v3, "e":Ljava/lang/Throwable;
    const-string v7, "TGM"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public deleteDir(Ljava/lang/String;)V
    .locals 5
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 233
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 237
    .end local v0    # "children":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public drawableToBitmap(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # I

    .prologue
    .line 383
    const-string v3, "TGM"

    const-string v4, "drawableToBitmap: called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 386
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 387
    .local v1, "currentState":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 388
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "currentState":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    :cond_0
    return-object v0
.end method

.method public getBitmap(Lorg/telegram/tgnet/TLRPC$User;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 351
    const-string v1, "TGM"

    const-string v2, "getBitmap: called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_0

    .line 353
    const-string v1, "TGM"

    const-string v2, "getBitmap: photo != null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->createRoundBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
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

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "count":I
    const-string v3, "TGM"

    const-string v4, "getUsersDisabled: called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v3, "userID"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 268
    .local v2, "userDisabled":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x63

    if-ge v1, v3, :cond_1

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state_user_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 271
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 268
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
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
    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v3, "TGM"

    const-string v4, "getUsersEnabled: called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v3, "userID"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 278
    .local v1, "userDisabled":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x63

    if-ge v0, v3, :cond_1

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state_user_"

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

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_1
    return-object v2
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 67
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->finish()V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v3, 0x7f030799

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChangeUserActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v3, "fromIntro"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->backToLastUser()V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 78
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 79
    const v3, 0x7f0705b2

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 81
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_1

    .line 82
    const v3, 0x7f0200b6

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 86
    :cond_1
    :try_start_0
    sput-object p0, Lorg/telegram/ui/ChangeUserActivity;->ctx:Landroid/content/Context;

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    .line 88
    const v3, 0x7f0c0062

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChangeUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    .line 89
    iget-object v3, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v3, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ChangeUserActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChangeUserActivity$1;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 103
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->prepareArrayList()V

    .line 104
    const-string v3, "TGM"

    const-string v4, "onCreate: prepareArray"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v3, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 106
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lorg/telegram/ui/ChangeUserActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChangeUserActivity$2;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "th":Ljava/lang/Throwable;
    const-string v3, "TGM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    .line 165
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 166
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    .line 167
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 168
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 169
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
    .line 319
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    if-ne v0, p3, :cond_0

    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f0705be

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ChangeUserActivity;->setUser(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 422
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 427
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 424
    :pswitch_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->onBackPressed()V

    .line 425
    const/4 v0, 0x1

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public prepareArrayList()V
    .locals 8

    .prologue
    .line 323
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    .line 324
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 325
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 326
    .local v2, "k":I
    const-string v5, "TGM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareArrayLits: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v5, "TGM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareArrayList: getUsersEnabled().size "

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

    .line 328
    const-string v5, "TGM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepareArrayList: getUsersEnabled().get(i) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v0, "null"

    .line 330
    .local v0, "first_name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_user_"

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

    const-string v6, "_user_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 332
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_user_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 333
    .local v3, "phone":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_user_"

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

    .line 334
    .local v4, "photo":Landroid/graphics/Bitmap;
    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {p0, v4, v0, v3, v1}, Lorg/telegram/ui/ChangeUserActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 331
    .end local v3    # "phone":Ljava/lang/String;
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_user_"

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

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_user_"

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

    .line 335
    .restart local v3    # "phone":Ljava/lang/String;
    .restart local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0, v4, v0, v3}, Lorg/telegram/ui/ChangeUserActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 337
    .end local v0    # "first_name":Ljava/lang/String;
    .end local v2    # "k":I
    .end local v3    # "phone":Ljava/lang/String;
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v5, Lorg/telegram/ui/Adapters/UserItemsAdapter;

    iget-object v6, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/Adapters/UserItemsAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 338
    iget-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    iget-object v6, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 339
    const-string v5, "TGM"

    const-string v6, "prepareArrayLits: setAdapters"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method public setUser(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 287
    const/4 v1, -0x1

    .line 288
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

    .line 289
    invoke-static {v1}, Lorg/telegram/messenger/ChangeUserHelper;->setUserTag(I)V

    .line 290
    const-string v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 291
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "userID"

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    const-string v2, "userTAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUser: tag changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getUserTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Lorg/telegram/messenger/Utilities;->restartApp()V

    .line 295
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
