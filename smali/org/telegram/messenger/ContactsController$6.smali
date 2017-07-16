.class Lorg/telegram/messenger/ContactsController$6;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$contactHashMap:Ljava/util/HashMap;

.field final synthetic val$first:Z

.field final synthetic val$force:Z

.field final synthetic val$request:Z

.field final synthetic val$schedule:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 553
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/ContactsController$6;->val$schedule:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/ContactsController$6;->val$first:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/ContactsController$6;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 38

    .prologue
    .line 557
    const/4 v15, 0x1

    .line 581
    .local v15, "disableDeletion":Z
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 582
    .local v13, "contactShortHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 583
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ContactsController$Contact;

    .line 584
    .local v11, "c":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_0
    iget-object v5, v11, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v10, v5, :cond_0

    .line 585
    iget-object v5, v11, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 589
    .end local v10    # "a":I
    .end local v11    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    :cond_1
    const-string/jumbo v4, "start read contacts from phone"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 590
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$schedule:Z

    if-nez v4, :cond_2

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$200(Lorg/telegram/messenger/ContactsController;)Z

    .line 593
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$500(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;

    move-result-object v9

    .line 594
    .local v9, "contactsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 595
    .local v8, "contactsBookShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v26

    .line 597
    .local v26, "oldCount":I
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v31, "toImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 599
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 600
    .local v27, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 601
    .local v21, "id":Ljava/lang/Integer;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/messenger/ContactsController$Contact;

    .line 602
    .local v33, "value":Lorg/telegram/messenger/ContactsController$Contact;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/ContactsController$Contact;

    .line 603
    .local v18, "existing":Lorg/telegram/messenger/ContactsController$Contact;
    if-nez v18, :cond_4

    .line 604
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_2
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_4

    .line 605
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ContactsController$Contact;

    .line 606
    .restart local v11    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v11, :cond_9

    .line 607
    move-object/from16 v18, v11

    .line 608
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 614
    .end local v10    # "a":I
    .end local v11    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_4
    if-eqz v18, :cond_a

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_6
    const/16 v25, 0x1

    .line 615
    .local v25, "nameChanged":Z
    :goto_3
    if-eqz v18, :cond_7

    if-eqz v25, :cond_e

    .line 616
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_4
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_d

    .line 617
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 618
    .local v30, "sphone":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    if-eqz v18, :cond_b

    .line 620
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    .line 621
    .local v23, "index":I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_b

    .line 622
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 623
    .local v14, "deleted":Ljava/lang/Integer;
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v4, v10, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 624
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v34, 0x1

    move/from16 v0, v34

    if-ne v4, v0, :cond_b

    .line 616
    .end local v14    # "deleted":Ljava/lang/Integer;
    .end local v23    # "index":I
    :cond_8
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 604
    .end local v25    # "nameChanged":Z
    .end local v30    # "sphone":Ljava/lang/String;
    .restart local v11    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 614
    .end local v10    # "a":I
    .end local v11    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_a
    const/16 v25, 0x0

    goto :goto_3

    .line 629
    .restart local v10    # "a":I
    .restart local v25    # "nameChanged":Z
    .restart local v30    # "sphone":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_8

    .line 630
    if-nez v25, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 634
    :cond_c
    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 635
    .local v22, "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move-object/from16 v0, v33

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 636
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v34, v0

    int-to-long v0, v10

    move-wide/from16 v36, v0

    const/16 v4, 0x20

    shl-long v36, v36, v4

    or-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 637
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 638
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 639
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 640
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 643
    .end local v22    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    .end local v30    # "sphone":Ljava/lang/String;
    :cond_d
    if-eqz v18, :cond_3

    .line 644
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 647
    .end local v10    # "a":I
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_6
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_17

    .line 648
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 649
    .restart local v30    # "sphone":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    .line 651
    .restart local v23    # "index":I
    const/16 v16, 0x0

    .line 652
    .local v16, "emptyNameReimport":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_10

    .line 653
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 654
    .local v12, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v12, :cond_10

    .line 655
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v32

    .line 656
    .local v32, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v32, :cond_10

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 657
    :cond_f
    const/16 v23, -0x1

    .line 658
    const/16 v16, 0x1

    .line 662
    .end local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_10
    const/4 v4, -0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_16

    .line 663
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_12

    .line 664
    if-nez v16, :cond_15

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 666
    .restart local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v12, :cond_15

    .line 667
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v32

    .line 668
    .restart local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v32, :cond_15

    .line 669
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v4, :cond_13

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 670
    .local v20, "firstName":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_14

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 671
    .local v24, "lastName":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_11
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 647
    .end local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v20    # "firstName":Ljava/lang/String;
    .end local v24    # "lastName":Ljava/lang/String;
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_12
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 669
    .restart local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .restart local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_13
    const-string/jumbo v20, ""

    goto :goto_7

    .line 670
    .restart local v20    # "firstName":Ljava/lang/String;
    :cond_14
    const-string/jumbo v24, ""

    goto :goto_8

    .line 678
    .end local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v20    # "firstName":Ljava/lang/String;
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_15
    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 679
    .restart local v22    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move-object/from16 v0, v33

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 680
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v34, v0

    int-to-long v0, v10

    move-wide/from16 v36, v0

    const/16 v4, 0x20

    shl-long v36, v36, v4

    or-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 681
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 682
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 683
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 684
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 687
    .end local v22    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    :cond_16
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 688
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 689
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 690
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 691
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_9

    .line 694
    .end local v16    # "emptyNameReimport":Z
    .end local v23    # "index":I
    .end local v30    # "sphone":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 699
    .end local v10    # "a":I
    .end local v18    # "existing":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v21    # "id":Ljava/lang/Integer;
    .end local v25    # "nameChanged":Z
    .end local v27    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v33    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$first:Z

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v4

    move/from16 v0, v26

    if-ne v0, v4, :cond_1a

    .line 700
    const-string/jumbo v4, "contacts not changed!"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 916
    :cond_19
    :goto_a
    return-void

    .line 703
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 704
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 705
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    .line 707
    :cond_1b
    if-nez v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 708
    new-instance v4, Lorg/telegram/messenger/ContactsController$6$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$6$1;-><init>(Lorg/telegram/messenger/ContactsController$6;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 795
    :cond_1c
    const-string/jumbo v4, "done processing contacts"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 797
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_25

    .line 798
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    .line 806
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 807
    .local v6, "contactsMapToSave":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->access$002(Lorg/telegram/messenger/ContactsController;I)I

    .line 808
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43fa0000    # 500.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v7, v4

    .line 809
    .local v7, "count":I
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_b
    if-ge v10, v7, :cond_19

    .line 810
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v19, "finalToImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    mul-int/lit16 v4, v10, 0x1f4

    add-int/lit8 v5, v10, 0x1

    mul-int/lit16 v5, v5, 0x1f4

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 812
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 813
    .local v29, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    .line 814
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->replace:Z

    .line 815
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v34

    new-instance v4, Lorg/telegram/messenger/ContactsController$6$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/ContactsController$6$2;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;ILjava/util/HashMap;Ljava/util/HashMap;)V

    const/4 v5, 0x6

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 809
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 765
    .end local v6    # "contactsMapToSave":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v7    # "count":I
    .end local v10    # "a":I
    .end local v19    # "finalToImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    .end local v29    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_1c

    .line 766
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 767
    .restart local v27    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/messenger/ContactsController$Contact;

    .line 768
    .restart local v33    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 769
    .local v21, "id":I
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_c
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_1e

    .line 770
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$force:Z

    if-nez v4, :cond_23

    .line 771
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 772
    .local v28, "phone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 773
    .restart local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v12, :cond_23

    .line 774
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v32

    .line 775
    .restart local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v32, :cond_23

    .line 776
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v4, :cond_21

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 777
    .restart local v20    # "firstName":Ljava/lang/String;
    :goto_d
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_22

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 778
    .restart local v24    # "lastName":Ljava/lang/String;
    :goto_e
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    :cond_1f
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 769
    .end local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v20    # "firstName":Ljava/lang/String;
    .end local v24    # "lastName":Ljava/lang/String;
    .end local v28    # "phone":Ljava/lang/String;
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_20
    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c

    .line 776
    .restart local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .restart local v28    # "phone":Ljava/lang/String;
    .restart local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_21
    const-string/jumbo v20, ""

    goto :goto_d

    .line 777
    .restart local v20    # "firstName":Ljava/lang/String;
    :cond_22
    const-string/jumbo v24, ""

    goto :goto_e

    .line 784
    .end local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v20    # "firstName":Ljava/lang/String;
    .end local v28    # "phone":Ljava/lang/String;
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_23
    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 785
    .restart local v22    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 786
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v34, v0

    int-to-long v0, v10

    move-wide/from16 v36, v0

    const/16 v4, 0x20

    shl-long v36, v36, v4

    or-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 787
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 788
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 789
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 790
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 871
    .end local v10    # "a":I
    .end local v21    # "id":I
    .end local v22    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    .end local v27    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v33    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_24
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/ContactsController$6$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lorg/telegram/messenger/ContactsController$6$3;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    .line 896
    :cond_25
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/ContactsController$6$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lorg/telegram/messenger/ContactsController$6$4;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 912
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    .line 913
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    goto/16 :goto_a
.end method
