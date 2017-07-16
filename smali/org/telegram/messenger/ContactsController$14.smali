.class Lorg/telegram/messenger/ContactsController$14;
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


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 1493
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$14;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1496
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$14;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZZ)V

    .line 1497
    return-void
.end method
