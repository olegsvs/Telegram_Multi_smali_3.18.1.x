.class Lorg/telegram/messenger/ContactsController$12;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$contactsArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 1392
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$12;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$12;->val$contactsArray:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1395
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$12;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$12;->val$contactsArray:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$1500(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    .line 1396
    return-void
.end method
