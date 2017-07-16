.class Lorg/telegram/messenger/ContactsController$8$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$8;

.field final synthetic val$isEmpty:Z

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8;Ljava/util/HashMap;Z)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$8;

    .prologue
    .line 999
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/ContactsController$8$1;->val$isEmpty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 1002
    const-string/jumbo v4, "done loading contacts"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$from:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v22, 0x3e8

    div-long v4, v4, v22

    sget v22, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v22, 0x15180

    cmp-long v4, v4, v22

    if-ltz v4, :cond_1

    .line 1004
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZZ)V

    .line 1191
    :goto_0
    return-void

    .line 1007
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$from:I

    if-nez v4, :cond_2

    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v22, 0x3e8

    div-long v4, v4, v22

    long-to-int v4, v4

    sput v4, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 1009
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1012
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1013
    .local v14, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    iget v0, v14, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget v5, v14, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v22

    move/from16 v0, v22

    if-eq v5, v0, :cond_3

    .line 1014
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZZ)V

    .line 1015
    const-string/jumbo v4, "contacts are broken, load from server"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    .end local v14    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$from:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    .line 1021
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController$8;->val$usersArr:Ljava/util/ArrayList;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1022
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$from:I

    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v4, v0, :cond_6

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/messenger/ContactsController$8$1$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/ContactsController$8$1$1;-><init>(Lorg/telegram/messenger/ContactsController$8$1;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1034
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1035
    .local v17, "ids":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1036
    .local v12, "aContactsArr":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 1037
    const-string/jumbo v5, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    :cond_5
    iget v5, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1022
    .end local v12    # "aContactsArr":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v17    # "ids":Ljava/lang/StringBuilder;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 1041
    .restart local v17    # "ids":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 1042
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1045
    .end local v17    # "ids":Ljava/lang/StringBuilder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/messenger/ContactsController$8$1$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/ContactsController$8$1$2;-><init>(Lorg/telegram/messenger/ContactsController$8$1;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1056
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1057
    .local v6, "contactsDictionary":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1058
    .local v7, "sectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1059
    .local v8, "sectionsDictMutual":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    .local v9, "sortedSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .local v10, "sortedSectionsArrayMutual":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 1063
    .local v15, "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$700(Lorg/telegram/messenger/ContactsController;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1064
    new-instance v15, Ljava/util/HashMap;

    .end local v15    # "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1067
    .restart local v15    # "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_9
    move-object/from16 v16, v15

    .line 1069
    .local v16, "contactsByPhonesDictFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_12

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1071
    .local v21, "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$User;

    .line 1072
    .local v20, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v20, :cond_b

    .line 1069
    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1075
    :cond_b
    move-object/from16 v0, v21

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move-object/from16 v0, v21

    invoke-virtual {v6, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1076
    if-eqz v15, :cond_c

    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1077
    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v15, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    :cond_c
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v18

    .line 1081
    .local v18, "key":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_d

    .line 1082
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1084
    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_11

    .line 1085
    const-string/jumbo v18, "#"

    .line 1089
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$1100(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1090
    .local v19, "replace":Ljava/lang/String;
    if-eqz v19, :cond_e

    .line 1091
    move-object/from16 v18, v19

    .line 1093
    :cond_e
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1094
    .local v13, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    if-nez v13, :cond_f

    .line 1095
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .restart local v13    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v0, v18

    invoke-virtual {v7, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    :cond_f
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    move-object/from16 v0, v20

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v4, :cond_a

    .line 1101
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    check-cast v13, Ljava/util/ArrayList;

    .line 1102
    .restart local v13    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    if-nez v13, :cond_10

    .line 1103
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .restart local v13    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_10
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1087
    .end local v13    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v19    # "replace":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 1111
    .end local v18    # "key":Ljava/lang/String;
    .end local v20    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v21    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_12
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$8$1$3;-><init>(Lorg/telegram/messenger/ContactsController$8$1;)V

    invoke-static {v9, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1125
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$8$1$4;-><init>(Lorg/telegram/messenger/ContactsController$8$1;)V

    invoke-static {v10, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1139
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1$5;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/ContactsController$8$1$5;-><init>(Lorg/telegram/messenger/ContactsController$8$1;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-boolean v4, v4, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$700(Lorg/telegram/messenger/ContactsController;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v5}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v5

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1171
    :cond_13
    if-eqz v16, :cond_14

    .line 1172
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/ContactsController$8$1$6;-><init>(Lorg/telegram/messenger/ContactsController$8$1;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1189
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    goto/16 :goto_0
.end method
