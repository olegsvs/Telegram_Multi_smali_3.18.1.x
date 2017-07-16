.class Lorg/telegram/messenger/ContactsController$15;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$contactsToDelete:Ljava/util/ArrayList;

.field final synthetic val$newContacts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 1502
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$15;->val$newContacts:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$15;->val$contactsToDelete:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1505
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->val$newContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 1506
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->val$newContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1507
    .local v7, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v1, v7, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1508
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v1, v7, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1505
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1512
    .end local v7    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->val$contactsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 1513
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->val$contactsToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1514
    .local v8, "uid":Ljava/lang/Integer;
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1515
    .restart local v7    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v7, :cond_2

    .line 1516
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1517
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1512
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1520
    .end local v7    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v8    # "uid":Ljava/lang/Integer;
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->val$newContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1521
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$1000(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    .line 1522
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$1200(Lorg/telegram/messenger/ContactsController;)V

    .line 1524
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ContactsController;->getContactsCopy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V

    .line 1525
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$15;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$15;->val$newContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->access$1700(Lorg/telegram/messenger/ContactsController;Z)V

    .line 1526
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1527
    return-void

    :cond_5
    move v0, v2

    .line 1525
    goto :goto_2
.end method
