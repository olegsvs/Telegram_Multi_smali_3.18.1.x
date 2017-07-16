.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field final synthetic val$query:Ljava/lang/String;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    .prologue
    .line 489
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$query:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$searchId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 43

    .prologue
    .line 493
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$query:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 494
    .local v27, "search1":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_0

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    const/16 v38, -0x1

    invoke-static/range {v37 .. v38}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$902(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$900(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v41

    invoke-static/range {v37 .. v41}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 780
    .end local v27    # "search1":Ljava/lang/String;
    :goto_0
    return-void

    .line 499
    .restart local v27    # "search1":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 500
    .local v28, "search2":Ljava/lang/String;
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v37

    if-nez v37, :cond_2

    .line 501
    :cond_1
    const/16 v28, 0x0

    .line 503
    :cond_2
    if-eqz v28, :cond_5

    const/16 v37, 0x1

    :goto_1
    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    .line 504
    .local v26, "search":[Ljava/lang/String;
    const/16 v37, 0x0

    aput-object v27, v26, v37

    .line 505
    if-eqz v28, :cond_3

    .line 506
    const/16 v37, 0x1

    aput-object v28, v26, v37

    .line 509
    :cond_3
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v36, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v6, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v15, "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v14, "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    const/16 v25, 0x0

    .line 515
    .local v25, "resultCount":I
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 516
    .local v12, "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v37

    const-string/jumbo v38, "SELECT did, date FROM dialogs ORDER BY date DESC LIMIT 600"

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 517
    .local v7, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    :cond_4
    :goto_2
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v37

    if-eqz v37, :cond_9

    .line 518
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v18

    .line 519
    .local v18, "id":J
    new-instance v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v9, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;)V

    .line 520
    .local v9, "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->date:I

    .line 521
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v20, v0

    .line 524
    .local v20, "lower_id":I
    const/16 v37, 0x20

    shr-long v38, v18, v37

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v17, v0

    .line 525
    .local v17, "high_id":I
    if-eqz v20, :cond_8

    .line 526
    const/16 v37, 0x1

    move/from16 v0, v17

    move/from16 v1, v37

    if-ne v0, v1, :cond_6

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v37

    if-nez v37, :cond_4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_4

    .line 528
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 777
    .end local v6    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v12    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    .end local v14    # "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v15    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "high_id":I
    .end local v18    # "id":J
    .end local v20    # "lower_id":I
    .end local v25    # "resultCount":I
    .end local v26    # "search":[Ljava/lang/String;
    .end local v27    # "search1":Ljava/lang/String;
    .end local v28    # "search2":Ljava/lang/String;
    .end local v36    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v13

    .line 778
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 503
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v27    # "search1":Ljava/lang/String;
    .restart local v28    # "search2":Ljava/lang/String;
    :cond_5
    const/16 v37, 0x0

    goto/16 :goto_1

    .line 531
    .restart local v6    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .restart local v12    # "dialogsResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    .restart local v14    # "encUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v15    # "encryptedToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v17    # "high_id":I
    .restart local v18    # "id":J
    .restart local v20    # "lower_id":I
    .restart local v25    # "resultCount":I
    .restart local v26    # "search":[Ljava/lang/String;
    .restart local v36    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    if-lez v20, :cond_7

    .line 532
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_4

    .line 533
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 536
    :cond_7
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_4

    .line 537
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 541
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v37

    if-nez v37, :cond_4

    .line 542
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_4

    .line 543
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 547
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v17    # "high_id":I
    .end local v18    # "id":J
    .end local v20    # "lower_id":I
    :cond_9
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 549
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_14

    .line 550
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v37

    sget-object v38, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v39, "SELECT data, status, name FROM users WHERE uid IN(%s)"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, ","

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    invoke-static/range {v38 .. v40}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 551
    :cond_a
    :goto_3
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v37

    if-eqz v37, :cond_13

    .line 552
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v21

    .line 553
    .local v21, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 554
    .local v30, "tName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_b

    .line 555
    const/16 v30, 0x0

    .line 557
    :cond_b
    const/16 v34, 0x0

    .line 558
    .local v34, "username":Ljava/lang/String;
    const-string/jumbo v37, ";;;"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v35

    .line 559
    .local v35, "usernamePos":I
    const/16 v37, -0x1

    move/from16 v0, v35

    move/from16 v1, v37

    if-eq v0, v1, :cond_c

    .line 560
    add-int/lit8 v37, v35, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 562
    :cond_c
    const/16 v16, 0x0

    .line 563
    .local v16, "found":I
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v38, v0

    const/16 v37, 0x0

    :goto_4
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_a

    aget-object v22, v26, v37

    .line 564
    .local v22, "q":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_d

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_d

    if-eqz v30, :cond_10

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_d

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_10

    .line 565
    :cond_d
    const/16 v16, 0x1

    .line 569
    :cond_e
    :goto_5
    if-eqz v16, :cond_12

    .line 570
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 571
    .local v8, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_a

    .line 572
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v37

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    .line 573
    .local v33, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 574
    move-object/from16 v0, v33

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 575
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    if-eqz v37, :cond_f

    .line 576
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 578
    :cond_f
    const/16 v37, 0x1

    move/from16 v0, v16

    move/from16 v1, v37

    if-ne v0, v1, :cond_11

    .line 579
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 583
    :goto_6
    move-object/from16 v0, v33

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 584
    add-int/lit8 v25, v25, 0x1

    .line 585
    goto/16 :goto_3

    .line 566
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_10
    if-eqz v34, :cond_e

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_e

    .line 567
    const/16 v16, 0x2

    goto/16 :goto_5

    .line 581
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_11
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "@"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "@"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v37 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_6

    .line 563
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_4

    .line 590
    .end local v16    # "found":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "q":Ljava/lang/String;
    .end local v30    # "tName":Ljava/lang/String;
    .end local v34    # "username":Ljava/lang/String;
    .end local v35    # "usernamePos":I
    :cond_13
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 593
    :cond_14
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_1c

    .line 594
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v37

    sget-object v38, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v39, "SELECT data, name FROM chats WHERE uid IN(%s)"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, ","

    move-object/from16 v0, v42

    invoke-static {v0, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    invoke-static/range {v38 .. v40}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 595
    :cond_15
    :goto_7
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v37

    if-eqz v37, :cond_1b

    .line 596
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v21

    .line 597
    .restart local v21    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 598
    .restart local v30    # "tName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_16

    .line 599
    const/16 v30, 0x0

    .line 601
    :cond_16
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v38, v0

    const/16 v37, 0x0

    :goto_8
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_15

    aget-object v22, v26, v37

    .line 602
    .restart local v22    # "q":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_17

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_17

    if-eqz v30, :cond_1a

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_17

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_1a

    .line 603
    :cond_17
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 604
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_15

    .line 605
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v37

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 606
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 607
    if-eqz v5, :cond_15

    iget-boolean v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->deactivated:Z

    move/from16 v37, v0

    if-nez v37, :cond_15

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v37

    if-eqz v37, :cond_18

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v37

    if-nez v37, :cond_15

    .line 609
    :cond_18
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v37, v0

    if-lez v37, :cond_19

    .line 610
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v37, v0

    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-long v10, v0

    .line 614
    .local v10, "dialog_id":J
    :goto_9
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 615
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 616
    iput-object v5, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 617
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_7

    .line 612
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v10    # "dialog_id":J
    :cond_19
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/telegram/messenger/AndroidUtilities;->makeBroadcastId(I)J

    move-result-wide v10

    .restart local v10    # "dialog_id":J
    goto :goto_9

    .line 601
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v10    # "dialog_id":J
    :cond_1a
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_8

    .line 624
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "q":Ljava/lang/String;
    .end local v30    # "tName":Ljava/lang/String;
    :cond_1b
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 627
    :cond_1c
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_29

    .line 628
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v37

    sget-object v38, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v39, "SELECT q.data, u.name, q.user, q.g, q.authkey, q.ttl, u.data, u.status, q.layer, q.seq_in, q.seq_out, q.use_count, q.exchange_id, q.key_date, q.fprint, q.fauthkey, q.khash, q.in_seq_no FROM enc_chats as q INNER JOIN users as u ON q.user = u.uid WHERE q.uid IN(%s)"

    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const-string/jumbo v42, ","

    move-object/from16 v0, v42

    invoke-static {v0, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v40, v41

    invoke-static/range {v38 .. v40}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 629
    :cond_1d
    :goto_a
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v37

    if-eqz v37, :cond_28

    .line 630
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v21

    .line 631
    .restart local v21    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 632
    .restart local v30    # "tName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_1e

    .line 633
    const/16 v30, 0x0

    .line 636
    :cond_1e
    const/16 v34, 0x0

    .line 637
    .restart local v34    # "username":Ljava/lang/String;
    const-string/jumbo v37, ";;;"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v35

    .line 638
    .restart local v35    # "usernamePos":I
    const/16 v37, -0x1

    move/from16 v0, v35

    move/from16 v1, v37

    if-eq v0, v1, :cond_1f

    .line 639
    add-int/lit8 v37, v35, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 641
    :cond_1f
    const/16 v16, 0x0

    .line 642
    .restart local v16    # "found":I
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_b
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v4, v0, :cond_1d

    .line 643
    aget-object v22, v26, v4

    .line 644
    .restart local v22    # "q":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_20

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_20

    if-eqz v30, :cond_25

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-nez v37, :cond_20

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, " "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_25

    .line 645
    :cond_20
    const/16 v16, 0x1

    .line 650
    :cond_21
    :goto_c
    if-eqz v16, :cond_27

    .line 651
    const/4 v5, 0x0

    .line 652
    .local v5, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    const/16 v33, 0x0

    .line 653
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 654
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_22

    .line 655
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v37

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v5

    .line 656
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 658
    :cond_22
    const/16 v37, 0x6

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 659
    if-eqz v8, :cond_23

    .line 660
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v37

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    .line 661
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 663
    :cond_23
    if-eqz v5, :cond_1d

    if-eqz v33, :cond_1d

    .line 664
    iget v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const/16 v37, 0x20

    shl-long v38, v38, v37

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 665
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 666
    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 667
    const/16 v37, 0x4

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 668
    const/16 v37, 0x5

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 669
    const/16 v37, 0x8

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 670
    const/16 v37, 0x9

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 671
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 672
    const/16 v37, 0xb

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v32

    .line 673
    .local v32, "use_count":I
    shr-int/lit8 v37, v32, 0x10

    move/from16 v0, v37

    int-to-short v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    iput-short v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 674
    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    iput-short v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 675
    const/16 v37, 0xc

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v38

    move-wide/from16 v0, v38

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 676
    const/16 v37, 0xd

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 677
    const/16 v37, 0xe

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v38

    move-wide/from16 v0, v38

    iput-wide v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 678
    const/16 v37, 0xf

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 679
    const/16 v37, 0x10

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteArrayValue(I)[B

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 680
    const/16 v37, 0x11

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->in_seq_no:I

    .line 682
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    if-eqz v37, :cond_24

    .line 683
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    const/16 v38, 0x7

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 685
    :cond_24
    const/16 v37, 0x1

    move/from16 v0, v16

    move/from16 v1, v37

    if-ne v0, v1, :cond_26

    .line 686
    new-instance v37, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v38 .. v39}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v37

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 687
    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    check-cast v37, Landroid/text/SpannableStringBuilder;

    new-instance v38, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v39, "chats_secretName"

    invoke-static/range {v39 .. v39}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v39

    invoke-direct/range {v38 .. v39}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v39, 0x0

    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/CharSequence;->length()I

    move-result v40

    const/16 v41, 0x21

    invoke-virtual/range {v37 .. v41}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 691
    :goto_d
    iput-object v5, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 692
    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    add-int/lit8 v25, v25, 0x1

    .line 694
    goto/16 :goto_a

    .line 646
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v32    # "use_count":I
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_25
    if-eqz v34, :cond_21

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_21

    .line 647
    const/16 v16, 0x2

    goto/16 :goto_c

    .line 689
    .restart local v5    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .restart local v32    # "use_count":I
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_26
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "@"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "@"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v37 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    iput-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_d

    .line 642
    .end local v5    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    .end local v32    # "use_count":I
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 699
    .end local v4    # "a":I
    .end local v16    # "found":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "q":Ljava/lang/String;
    .end local v30    # "tName":Ljava/lang/String;
    .end local v34    # "username":Ljava/lang/String;
    .end local v35    # "usernamePos":I
    :cond_28
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 702
    :cond_29
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 703
    .local v29, "searchResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;>;"
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_2a
    :goto_e
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_2b

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 704
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2a

    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2a

    .line 705
    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 709
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    :cond_2b
    new-instance v37, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6$1;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 721
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v23, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLObject;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v24, "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_f
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v4, v0, :cond_2c

    .line 725
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    .line 726
    .restart local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v37, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    iget-object v0, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;->name:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 730
    .end local v9    # "dialogSearchResult":Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v37

    const/16 v38, 0x2

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_37

    .line 731
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v37

    const-string/jumbo v38, "SELECT u.data, u.status, u.name, u.uid FROM users as u INNER JOIN contacts as c ON u.uid = c.uid"

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v7

    .line 732
    :cond_2d
    :goto_10
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v37

    if-eqz v37, :cond_36

    .line 733
    const/16 v37, 0x3

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v31

    .line 734
    .local v31, "uid":I
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_2d

    .line 737
    const/16 v37, 0x2

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v21

    .line 738
    .restart local v21    # "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 739
    .restart local v30    # "tName":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_2e

    .line 740
    const/16 v30, 0x0

    .line 742
    :cond_2e
    const/16 v34, 0x0

    .line 743
    .restart local v34    # "username":Ljava/lang/String;
    const-string/jumbo v37, ";;;"

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v35

    .line 744
    .restart local v35    # "usernamePos":I
    const/16 v37, -0x1

    move/from16 v0, v35

    move/from16 v1, v37

    if-eq v0, v1, :cond_2f

    .line 745
    add-int/lit8 v37, v35, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    .line 747
    :cond_2f
    const/16 v16, 0x0

    .line 748
    .restart local v16    # "found":I
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v38, v0

    const/16 v37, 0x0

    :goto_11
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_2d

    aget-object v22, v26, v37

    .line 749
    .restart local v22    # "q":Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_30

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_30

    if-eqz v30, :cond_33

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_30

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, " "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_33

    .line 750
    :cond_30
    const/16 v16, 0x1

    .line 754
    :cond_31
    :goto_12
    if-eqz v16, :cond_35

    .line 755
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v8

    .line 756
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v8, :cond_2d

    .line 757
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v37

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v8, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    .line 758
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {v8}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 759
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    if-eqz v37, :cond_32

    .line 760
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 762
    :cond_32
    const/16 v37, 0x1

    move/from16 v0, v16

    move/from16 v1, v37

    if-ne v0, v1, :cond_34

    .line 763
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :goto_13
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 751
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_33
    if-eqz v34, :cond_31

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_31

    .line 752
    const/16 v16, 0x2

    goto :goto_12

    .line 765
    .restart local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_34
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "@"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "@"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v37 .. v39}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 748
    .end local v8    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v33    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_35
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_11

    .line 773
    .end local v16    # "found":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "q":Ljava/lang/String;
    .end local v30    # "tName":Ljava/lang/String;
    .end local v31    # "uid":I
    .end local v34    # "username":Ljava/lang/String;
    .end local v35    # "usernamePos":I
    :cond_36
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 776
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$searchId:I

    move/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v38

    invoke-static {v0, v1, v2, v14, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
