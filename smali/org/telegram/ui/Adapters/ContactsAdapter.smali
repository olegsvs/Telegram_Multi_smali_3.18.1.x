.class public Lorg/telegram/ui/Adapters/ContactsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "ContactsAdapter.java"


# instance fields
.field private checkedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation
.end field

.field private ignoreUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private isAdmin:Z

.field private mContext:Landroid/content/Context;

.field private needPhonebook:Z

.field private onlyUsers:I

.field private scrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLjava/util/HashMap;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onlyUsersType"    # I
    .param p3, "arg2"    # Z
    .param p5, "arg4"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p4, "arg3":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    .line 48
    iput p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    .line 49
    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    .line 50
    iput-object p4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Ljava/util/HashMap;

    .line 51
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    .line 52
    return-void
.end method

.method private updateListBG(Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "vg"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 251
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "theme"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 252
    .local v5, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v7, "contactsRowColor"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 253
    .local v4, "mainColor":I
    const-string/jumbo v7, "contactsRowGradient"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 255
    .local v6, "value":I
    if-lez v6, :cond_0

    .line 257
    packed-switch v6, :pswitch_data_0

    .line 268
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 271
    .local v2, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_0
    const-string/jumbo v7, "contactsRowGradientColor"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 272
    .local v3, "gradColor":I
    const/4 v7, 0x2

    new-array v0, v7, [I

    aput v4, v0, v9

    const/4 v7, 0x1

    aput v3, v0, v7

    .line 273
    .local v0, "colors":[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 274
    .local v1, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    .end local v0    # "colors":[I
    .end local v1    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v3    # "gradColor":I
    :goto_1
    return-void

    .line 259
    :pswitch_0
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 260
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 262
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 263
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 265
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 266
    .restart local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 276
    .end local v2    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateViewColor(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 281
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v9, "theme"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 282
    .local v6, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v8, "contactsRowColor"

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 283
    .local v5, "mainColor":I
    const-string/jumbo v8, "contactsRowGradient"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 284
    .local v7, "value":I
    const/4 v0, 0x1

    .line 285
    .local v0, "b":Z
    if-lez v7, :cond_2

    if-nez v0, :cond_2

    .line 287
    packed-switch v7, :pswitch_data_0

    .line 298
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 301
    .local v3, "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :goto_0
    const-string/jumbo v8, "contactsRowGradientColor"

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 302
    .local v4, "gradColor":I
    const/4 v8, 0x2

    new-array v1, v8, [I

    aput v5, v1, v10

    const/4 v8, 0x1

    aput v4, v1, v8

    .line 303
    .local v1, "colors":[I
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 304
    .local v2, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    .end local v1    # "colors":[I
    .end local v2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    .end local v4    # "gradColor":I
    :cond_0
    :goto_1
    if-lez v7, :cond_1

    const-string/jumbo v8, "Contacts00"

    invoke-virtual {p1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 309
    :cond_1
    return-void

    .line 289
    :pswitch_0
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 290
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 292
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_1
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 293
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 295
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :pswitch_2
    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 296
    .restart local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    goto :goto_0

    .line 305
    .end local v3    # "go":Landroid/graphics/drawable/GradientDrawable$Orientation;
    :cond_2
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p1, v10}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 287
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 6
    .param p1, "section"    # I

    .prologue
    const/4 v1, 0x2

    .line 139
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v3, v4, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 140
    .local v3, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 142
    .local v2, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_4

    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_7

    .line 144
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 145
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 146
    .local v1, "count":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_1

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 170
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v1    # "count":I
    :cond_1
    :goto_2
    return v1

    .line 139
    .end local v2    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v3, v4, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    .line 140
    .restart local v3    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    .line 152
    .restart local v2    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-nez p1, :cond_5

    .line 153
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_1

    .line 156
    const/4 v1, 0x4

    goto :goto_2

    .line 158
    :cond_5
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 159
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 160
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 161
    .restart local v1    # "count":I
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_6

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_1

    .line 162
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v1    # "count":I
    :cond_7
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_8

    .line 168
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_2

    .line 170
    :cond_8
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 6
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 63
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v5, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 64
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v5, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v1, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 66
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_3

    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    .line 68
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 69
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_0

    .line 70
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 90
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_0
    :goto_2
    return-object v3

    .line 63
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v2, v4, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    .line 64
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v1, v4, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    .line 75
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    if-eqz p1, :cond_0

    .line 78
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 79
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 80
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_0

    .line 81
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    goto :goto_2

    .line 87
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_4
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_0

    .line 88
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2
.end method

.method public getItemViewType(II)I
    .locals 8
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 365
    iget v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v7, v5, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v2, v7, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 366
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_0
    iget v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v7, v5, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v1, v7, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 367
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v7, :cond_4

    .line 368
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 369
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_3

    .line 380
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_0
    :goto_2
    return v3

    .line 365
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v2, v7, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    .line 366
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v1, v7, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move v3, v4

    .line 369
    goto :goto_2

    .line 371
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_4
    if-nez p1, :cond_8

    .line 372
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v3, :cond_6

    :cond_5
    if-eq p2, v6, :cond_7

    :cond_6
    if-ne p2, v4, :cond_9

    :cond_7
    move v3, v5

    .line 373
    goto :goto_2

    .line 375
    :cond_8
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_9

    .line 376
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 377
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p2, v5, :cond_0

    move v3, v4

    goto :goto_2

    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_9
    move v3, v6

    .line 380
    goto :goto_2
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 385
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 386
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 387
    .local v0, "section":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 388
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 390
    :cond_0
    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 391
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    :goto_1
    return-object v2

    .line 385
    .end local v0    # "section":I
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_0

    .line 393
    .restart local v0    # "section":I
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPositionForScrollProgress(F)I
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 398
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public getSectionCount()I
    .locals 4

    .prologue
    .line 123
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 124
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    .local v0, "count":I
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-nez v2, :cond_0

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 128
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v2, :cond_1

    .line 129
    add-int/lit8 v0, v0, 0x1

    .line 131
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v2, :cond_2

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 134
    :cond_2
    return v0

    .line 123
    .end local v0    # "count":I
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v1, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "section"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    .line 175
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v3, v4, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v2, v3, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 176
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v3, v4, :cond_3

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v1, v3, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 178
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-nez p2, :cond_0

    .line 179
    new-instance p2, Lorg/telegram/ui/Cells/LetterSectionCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 181
    check-cast v0, Lorg/telegram/ui/Cells/LetterSectionCell;

    .line 182
    .local v0, "cell":Lorg/telegram/ui/Cells/LetterSectionCell;
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v3, :cond_5

    .line 183
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 184
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    .line 197
    :goto_2
    sget-boolean v3, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "contactsNameColor"

    const v4, -0x7f7f80

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->getIntDef(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetterColor(I)V

    .line 198
    :cond_1
    return-object p2

    .line 175
    .end local v0    # "cell":Lorg/telegram/ui/Cells/LetterSectionCell;
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v2, v3, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    .line 176
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v1, v3, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    .line 186
    .restart local v0    # "cell":Lorg/telegram/ui/Cells/LetterSectionCell;
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_2

    .line 189
    :cond_5
    if-nez p1, :cond_6

    .line 190
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_2

    .line 191
    :cond_6
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 192
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_2

    .line 194
    :cond_7
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isEnabled(II)Z
    .locals 7
    .param p1, "section"    # I
    .param p2, "row"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 95
    iget v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v5, v6, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 96
    .local v2, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_0
    iget v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v5, v6, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v1, v5, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 98
    .local v1, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    iget v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v5, :cond_4

    .line 99
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 100
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p2, v5, :cond_3

    .line 118
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_0
    :goto_2
    return v3

    .line 95
    .end local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    .line 96
    .restart local v2    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v1, v5, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v1    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move v3, v4

    .line 100
    goto :goto_2

    .line 102
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_4
    if-nez p1, :cond_7

    .line 103
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v5, :cond_6

    .line 104
    :cond_5
    if-ne p2, v3, :cond_0

    move v3, v4

    .line 105
    goto :goto_2

    .line 108
    :cond_6
    const/4 v5, 0x3

    if-ne p2, v5, :cond_0

    move v3, v4

    .line 109
    goto :goto_2

    .line 113
    :cond_7
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 114
    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 115
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p2, v5, :cond_0

    move v3, v4

    goto :goto_2
.end method

.method public onBindViewHolder(IILorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "section"    # I
    .param p2, "position"    # I
    .param p3, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 313
    invoke-virtual {p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v5, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lorg/telegram/ui/Cells/UserCell;

    .line 316
    .local v5, "userCell":Lorg/telegram/ui/Cells/UserCell;
    iget v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v6, v7, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 317
    .local v6, "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :goto_1
    iget v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v2, v7, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 319
    .local v2, "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    iget v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_3
    sub-int v7, p1, v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 320
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 321
    .local v4, "user":Lorg/telegram/tgnet/TLRPC$User;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v4, v7, v8, v9}, Lorg/telegram/ui/Cells/UserCell;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 322
    iget-object v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    .line 323
    iget-object v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Ljava/util/HashMap;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->scrolling:Z

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v5, v8, v7}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 325
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    .line 326
    iget-object v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Ljava/util/HashMap;

    iget v8, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 327
    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Cells/UserCell;->setAlpha(F)V

    goto :goto_0

    .line 316
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v2    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v6    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v6, v7, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    goto :goto_1

    .line 317
    .restart local v6    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v2, v7, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_2

    .line 319
    .restart local v2    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const/4 v7, 0x1

    goto :goto_3

    .line 323
    .restart local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .restart local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 329
    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Cells/UserCell;->setAlpha(F)V

    goto/16 :goto_0

    .line 334
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v2    # "sortedUsersSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v5    # "userCell":Lorg/telegram/ui/Cells/UserCell;
    .end local v6    # "usersSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    :pswitch_1
    iget-object v3, p3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 335
    .local v3, "textCell":Lorg/telegram/ui/Cells/TextCell;
    if-nez p1, :cond_b

    .line 336
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v7, :cond_7

    .line 337
    const-string/jumbo v7, "InviteFriends"

    const v8, 0x7f0702fd

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f020142

    invoke-virtual {v3, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 338
    :cond_7
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v7, :cond_8

    .line 339
    const-string/jumbo v7, "InviteToGroupByLink"

    const v8, 0x7f070301

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f020142

    invoke-virtual {v3, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 341
    :cond_8
    if-nez p2, :cond_9

    .line 342
    const-string/jumbo v7, "NewGroup"

    const v8, 0x7f0703c0

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f020143

    invoke-virtual {v3, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 343
    :cond_9
    const/4 v7, 0x1

    if-ne p2, v7, :cond_a

    .line 344
    const-string/jumbo v7, "NewSecretChat"

    const v8, 0x7f0703c8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f020145

    invoke-virtual {v3, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 345
    :cond_a
    const/4 v7, 0x2

    if-ne p2, v7, :cond_0

    .line 346
    const-string/jumbo v7, "NewChannel"

    const v8, 0x7f0703be

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f02013d

    invoke-virtual {v3, v7, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 350
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 351
    .local v1, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    iget-object v7, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-eqz v7, :cond_c

    iget-object v7, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-eqz v7, :cond_c

    .line 352
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 353
    :cond_c
    iget-object v7, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-eqz v7, :cond_d

    iget-object v7, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-nez v7, :cond_d

    .line 354
    iget-object v7, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_d
    iget-object v7, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 11
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const v10, -0x8c8c8d

    const/high16 v7, 0x42900000    # 72.0f

    const/high16 v6, 0x41e00000    # 28.0f

    const/4 v9, 0x0

    .line 204
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "theme"

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 205
    .local v3, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "contactsNameColor"

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 206
    .local v1, "cColorGrey":I
    const-string/jumbo v5, "contactsNameColor"

    const/high16 v8, -0x1000000

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "cColorBlack":I
    const-string/jumbo v5, "contactsIconsColor"

    invoke-interface {v3, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 210
    .local v2, "iconsColor":I
    packed-switch p2, :pswitch_data_0

    .line 238
    new-instance v4, Lorg/telegram/ui/Cells/DividerCell;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 239
    .local v4, "view":Landroid/view/View;
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_3

    :goto_1
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v4, v5, v9, v6, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 240
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_0

    .line 241
    const-string/jumbo v5, "contactsRowColor"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 242
    invoke-direct {p0, v4}, Lorg/telegram/ui/Adapters/ContactsAdapter;->updateViewColor(Landroid/view/View;)V

    .line 246
    :cond_0
    :goto_2
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->updateListBG(Landroid/view/ViewGroup;)V

    .line 247
    :cond_1
    new-instance v5, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v5

    .line 212
    .end local v4    # "view":Landroid/view/View;
    :pswitch_0
    new-instance v4, Lorg/telegram/ui/Cells/UserCell;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    const/16 v6, 0x3a

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7, v9}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 213
    .restart local v4    # "view":Landroid/view/View;
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_0

    .line 214
    const-string/jumbo v5, "Contacts"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    invoke-direct {p0, v4}, Lorg/telegram/ui/Adapters/ContactsAdapter;->updateViewColor(Landroid/view/View;)V

    goto :goto_2

    .line 219
    .end local v4    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v4, Lorg/telegram/ui/Cells/TextCell;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 220
    .restart local v4    # "view":Landroid/view/View;
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_0

    move-object v5, v4

    .line 221
    check-cast v5, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Cells/TextCell;->setTextColor(I)V

    move-object v5, v4

    .line 222
    check-cast v5, Lorg/telegram/ui/Cells/TextCell;

    const-string/jumbo v6, "contactsNameSize"

    const/16 v7, 0x10

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextSize(I)V

    move-object v5, v4

    .line 223
    check-cast v5, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/TextCell;->setIconColor(I)V

    .line 224
    invoke-direct {p0, v4}, Lorg/telegram/ui/Adapters/ContactsAdapter;->updateViewColor(Landroid/view/View;)V

    goto :goto_2

    .line 228
    .end local v4    # "view":Landroid/view/View;
    :pswitch_2
    new-instance v4, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .restart local v4    # "view":Landroid/view/View;
    move-object v5, v4

    .line 229
    check-cast v5, Lorg/telegram/ui/Cells/GraySectionCell;

    const-string/jumbo v6, "Contacts"

    const v7, 0x7f070198

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    .line 230
    sget-boolean v5, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v5, :cond_0

    move-object v5, v4

    .line 231
    check-cast v5, Lorg/telegram/ui/Cells/GraySectionCell;

    const-string/jumbo v6, "contactsRowColor"

    const/4 v7, -0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Cells/GraySectionCell;->setBackgroundColor(I)V

    move-object v5, v4

    .line 232
    check-cast v5, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Cells/GraySectionCell;->setTextColor(I)V

    .line 233
    invoke-direct {p0, v4}, Lorg/telegram/ui/Adapters/ContactsAdapter;->updateViewColor(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_2
    move v5, v7

    .line 239
    goto/16 :goto_0

    :cond_3
    move v7, v6

    goto/16 :goto_1

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCheckedMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;*>;"
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Ljava/util/HashMap;

    .line 56
    return-void
.end method

.method public setIsScrolling(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->scrolling:Z

    .line 60
    return-void
.end method
