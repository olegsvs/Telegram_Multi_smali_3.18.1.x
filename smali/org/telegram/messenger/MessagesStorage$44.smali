.class Lorg/telegram/messenger/MessagesStorage$44;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->getCachedPhoneBook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/MessagesStorage;

    .prologue
    .line 2451
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$44;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2454
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2456
    .local v1, "contactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$44;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v3, "SELECT us.uid, us.fname, us.sname, up.phone, up.sphone, up.deleted FROM user_contacts_v6 as us LEFT JOIN user_phones_v6 as up ON us.uid = up.uid WHERE 1"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 2457
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2458
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    .line 2459
    .local v11, "uid":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/ContactsController$Contact;

    .line 2460
    .local v6, "contact":Lorg/telegram/messenger/ContactsController$Contact;
    if-nez v6, :cond_3

    .line 2461
    new-instance v6, Lorg/telegram/messenger/ContactsController$Contact;

    .end local v6    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-direct {v6}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    .line 2462
    .restart local v6    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 2463
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 2464
    iget-object v0, v6, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2465
    const-string/jumbo v0, ""

    iput-object v0, v6, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 2467
    :cond_1
    iget-object v0, v6, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2468
    const-string/jumbo v0, ""

    iput-object v0, v6, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 2470
    :cond_2
    iput v11, v6, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    .line 2471
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2473
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v9

    .line 2474
    .local v9, "phone":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 2477
    iget-object v0, v6, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2478
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v10

    .line 2479
    .local v10, "sphone":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 2482
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v12, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v12, :cond_4

    .line 2483
    invoke-static {v9}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2485
    :cond_4
    iget-object v0, v6, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2486
    iget-object v0, v6, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2487
    iget-object v0, v6, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2490
    .end local v6    # "contact":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v9    # "phone":Ljava/lang/String;
    .end local v10    # "sphone":Ljava/lang/String;
    .end local v11    # "uid":I
    :catch_0
    move-exception v8

    .line 2491
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2492
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2494
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V

    .line 2495
    return-void

    .line 2489
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_5
    :try_start_1
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
