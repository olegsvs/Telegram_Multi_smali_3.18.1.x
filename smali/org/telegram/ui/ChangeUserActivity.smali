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

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    .line 49
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUserActivity;->showAlertDeleteUser(I)V

    return-void
.end method

.method private showAlertDeleteUser(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 167
    const v5, 0x7f070748

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f070746

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "message":Ljava/lang/String;
    const v5, 0x7f070749

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "button1String":Ljava/lang/String;
    const v5, 0x7f070747

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "button2String":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, "ad":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 175
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$2;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChangeUserActivity$2;-><init>(Lorg/telegram/ui/ChangeUserActivity;I)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$3;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 186
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeUserActivity;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUserActivity;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUserActivity;->deleteUser(I)V

    return-void
.end method

.method public static convertDpToPixel(F)F
    .locals 4
    .param p0, "dp"    # F

    .prologue
    .line 374
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 375
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float v1, p0, v2

    .line 376
    .local v1, "px":F
    return v1
.end method

.method private deleteUser(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 153
    :try_start_0
    const-string v1, "userID"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 154
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state_user_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files_user_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->deleteDir(Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->setUser(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getUserByTag(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {p1}, Lorg/telegram/messenger/ApplicationLoader2;->convertConfig2(Ljava/lang/String;)V

    .line 303
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig2;->getCurrentUser(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 304
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

    .line 305
    return-object v0
.end method

.method private showAlertAddUser()V
    .locals 6

    .prologue
    .line 164
    const v5, 0x7f070743

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "title":Ljava/lang/String;
    const v5, 0x7f070744

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "message":Ljava/lang/String;
    const v5, 0x7f070745

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "button1String":Ljava/lang/String;
    const v5, 0x7f070742

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "button2String":Ljava/lang/String;
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, "ad":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 171
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 172
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$4;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$4;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 177
    new-instance v5, Lorg/telegram/ui/ChangeUserActivity$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChangeUserActivity$5;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v0, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 183
    return-void
.end method

.method private deleteUser(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 153
    const/4 v1, -0x1

    .line 154
    .local v1, "toDelete":I
    :try_start_0
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

    .line 157
    const-string v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
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

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
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

    .line 161
    iget v2, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    if-ne v2, p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ChangeUserActivity;->setUser(I)V

    .line 164
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->prepareArrayList()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static showPrepareDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 112
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    .line 113
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 114
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 115
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 116
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 117
    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 118
    return-void
.end method


# virtual methods
.method public AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string/jumbo v0, "TGM"

    const-string/jumbo v1, "AddObjectToList: called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Lorg/telegram/ui/Components/UserItems;

    invoke-direct {v0}, Lorg/telegram/ui/Components/UserItems;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UserItems;->setPhone(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UserItems;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/UserItems;->setName(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method public AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "pos"    # I

    .prologue
    .line 331
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

    .line 332
    new-instance v0, Lorg/telegram/ui/Components/UserItems;

    invoke-direct {v0}, Lorg/telegram/ui/Components/UserItems;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UserItems;->setPhone(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UserItems;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p4}, Lorg/telegram/ui/Components/UserItems;->setCurrent(I)V

    .line 336
    iput p4, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/UserItems;->setName(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method public addUser()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersDisabled()I

    move-result v0

    .line 200
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

    .line 201
    const-string/jumbo v2, "userID"

    invoke-virtual {p0, v2, v5}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "lastID"

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
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

    .line 204
    invoke-static {v0}, Lorg/telegram/messenger/ChangeUserHelper;->setUserTag(I)V

    .line 205
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "userID"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
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

    .line 207
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "addedUser"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
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

    .line 210
    invoke-direct {p0}, Lorg/telegram/ui/ChangeUserActivity;->showAlertAddUser()V

    .line 211
    return-void
.end method

.method public backToLastUser()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 214
    const-string/jumbo v1, "userID"

    invoke-virtual {p0, v1, v4}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
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

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "userID"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    const-string/jumbo v1, "addedUser"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->deleteUser(I)V

    .line 219
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

    .line 220
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->restart()V

    .line 221
    return-void
.end method

.method public buttonAddUserClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/16 v1, 0x63

    if-gt v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->addUser()V

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    const v0, 0x7f07074b

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public createRoundBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 353
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 357
    .local v2, "circleBitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v0, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 358
    .local v6, "shader":Landroid/graphics/BitmapShader;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 359
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 360
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 361
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 362
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

    .line 363
    const/high16 v7, 0x42480000    # 50.0f

    .line 364
    invoke-static {v7}, Lorg/telegram/ui/ChangeUserActivity;->convertDpToPixel(F)F

    move-result v7

    float-to-int v7, v7

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v8}, Lorg/telegram/ui/ChangeUserActivity;->convertDpToPixel(F)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    .line 363
    invoke-static {v2, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 370
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "circleBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v6    # "shader":Landroid/graphics/BitmapShader;
    :goto_0
    return-object v5

    .line 367
    :catch_0
    move-exception v3

    .line 368
    .local v3, "e":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 370
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public deleteDir(Ljava/lang/String;)V
    .locals 5
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "children":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 216
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 220
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public drawableToBitmap(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawable"    # I

    .prologue
    .line 342
    const-string/jumbo v3, "TGM"

    const-string/jumbo v4, "drawableToBitmap: called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 345
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 346
    .local v1, "currentState":Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 347
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "currentState":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    :cond_0
    return-object v0
.end method

.method public getBitmap(Lorg/telegram/tgnet/TLRPC$User;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 310
    const-string/jumbo v1, "TGM"

    const-string/jumbo v2, "getBitmap: called"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_0

    .line 312
    const-string/jumbo v1, "TGM"

    const-string/jumbo v2, "getBitmap: photo != null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->createRoundBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
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

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "count":I
    const-string/jumbo v3, "TGM"

    const-string/jumbo v4, "getUsersDisabled: called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string/jumbo v3, "userID"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 227
    .local v2, "userDisabled":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x63

    if-ge v1, v3, :cond_1

    .line 228
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

    .line 230
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 227
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
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
    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v3, "TGM"

    const-string/jumbo v4, "getUsersEnabled: called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string/jumbo v3, "userID"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 237
    .local v1, "userDisabled":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x63

    if-ge v0, v3, :cond_1

    .line 238
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

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    return-object v2
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 60
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->finish()V

    .line 61
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v3, 0x7f030799

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChangeUserActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "fromIntro"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->backToLastUser()V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 71
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 72
    const v3, 0x7f070741

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_1

    .line 75
    const v3, 0x7f0200b6

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 79
    :cond_1
    :try_start_0
    sput-object p0, Lorg/telegram/ui/ChangeUserActivity;->ctx:Landroid/content/Context;

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    .line 81
    const v3, 0x7f0c0062

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ChangeUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    .line 82
    iget-object v3, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-object v3, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    new-instance v4, Lorg/telegram/ui/ChangeUserActivity$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChangeUserActivity$1;-><init>(Lorg/telegram/ui/ChangeUserActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 96
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->prepareArrayList()V

    .line 97
    const-string/jumbo v3, "TGM"

    const-string/jumbo v4, "onCreate: prepareArray"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v3, Lorg/telegram/ui/ChangeUserActivity;->prepareProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "th":Ljava/lang/Throwable;
    const-string/jumbo v3, "TGM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate: "

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

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 123
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    .line 124
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 125
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    .line 126
    iput-object v0, p0, Lorg/telegram/ui/ChangeUserActivity;->userItems:Lorg/telegram/ui/Components/UserItems;

    .line 127
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 128
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
    .line 278
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lorg/telegram/ui/ChangeUserActivity;->currentUser:I

    if-ne v0, p3, :cond_0

    sget-object v0, Lorg/telegram/ui/ChangeUserActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f07074a

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ChangeUserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ChangeUserActivity;->setUser(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 381
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 386
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 383
    :pswitch_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->onBackPressed()V

    .line 384
    const/4 v0, 0x1

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public prepareArrayList()V
    .locals 8

    .prologue
    .line 308
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    .line 309
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 310
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getUsersEnabled()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 311
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

    .line 312
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

    .line 313
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

    .line 314
    const-string v0, "null"

    .line 315
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

    .line 316
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

    .line 319
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

    .line 320
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

    .line 321
    .local v4, "photo":Landroid/graphics/Bitmap;
    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {p0, v4, v0, v3, v1}, Lorg/telegram/ui/ChangeUserActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 318
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

    .line 322
    .restart local v3    # "phone":Ljava/lang/String;
    .restart local v4    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0, v4, v0, v3}, Lorg/telegram/ui/ChangeUserActivity;->AddObjectToList(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 327
    .end local v0    # "first_name":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "phone":Ljava/lang/String;
    .end local v4    # "photo":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    .line 328
    :goto_3
    return-void

    .line 324
    .restart local v1    # "i":I
    :cond_2
    new-instance v5, Lorg/telegram/ui/Adapters/UserItemsAdapter;

    iget-object v6, p0, Lorg/telegram/ui/ChangeUserActivity;->itemList:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/Adapters/UserItemsAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    .line 325
    iget-object v5, p0, Lorg/telegram/ui/ChangeUserActivity;->lvUserList:Landroid/widget/ListView;

    iget-object v6, p0, Lorg/telegram/ui/ChangeUserActivity;->adapter:Lorg/telegram/ui/Adapters/UserItemsAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    const-string v5, "TGM"

    const-string v6, "prepareArrayLits: setAdapters"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public restart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 263
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v2, "mStartActivity":Landroid/content/Intent;
    const v1, 0x1e240

    .line 265
    .local v1, "mPendingIntentId":I
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-static {v4, v1, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 267
    .local v0, "mPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 268
    .local v3, "mgr":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v3, v8, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 270
    invoke-virtual {p0, v8}, Lorg/telegram/ui/ChangeUserActivity;->moveTaskToBack(Z)Z

    .line 271
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 272
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    .line 273
    return-void
.end method

.method public setUser(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 246
    const/4 v1, -0x1

    .line 247
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

    .line 248
    invoke-static {v1}, Lorg/telegram/messenger/ChangeUserHelper;->setUserTag(I)V

    .line 249
    const-string/jumbo v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/ChangeUserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "userID"

    invoke-static {}, Lorg/telegram/messenger/ChangeUserHelper;->getID()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
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

    .line 253
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->restart()V

    .line 254
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
