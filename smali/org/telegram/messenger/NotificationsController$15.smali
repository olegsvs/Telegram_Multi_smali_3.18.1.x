.class Lorg/telegram/messenger/NotificationsController$15;
.super Ljava/lang/Object;
.source "NotificationsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/NotificationsController;->repeatNotificationMaybe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/NotificationsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/NotificationsController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/messenger/NotificationsController;

    .prologue
    .line 1504
    iput-object p1, p0, Lorg/telegram/messenger/NotificationsController$15;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 1507
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1508
    .local v0, "hour":I
    if-lt v0, v3, :cond_0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 1509
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$15;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$1400(Lorg/telegram/messenger/NotificationsController;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 1510
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$15;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v1, v2}, Lorg/telegram/messenger/NotificationsController;->access$100(Lorg/telegram/messenger/NotificationsController;Z)V

    .line 1514
    :goto_0
    return-void

    .line 1512
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/NotificationsController$15;->this$0:Lorg/telegram/messenger/NotificationsController;

    invoke-static {v1}, Lorg/telegram/messenger/NotificationsController;->access$2500(Lorg/telegram/messenger/NotificationsController;)V

    goto :goto_0
.end method
