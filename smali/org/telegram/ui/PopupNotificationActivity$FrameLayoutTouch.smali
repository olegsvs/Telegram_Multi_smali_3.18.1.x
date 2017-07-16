.class Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;
.super Landroid/widget/FrameLayout;
.source "PopupNotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PopupNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    .line 120
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    .line 124
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .prologue
    .line 127
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    .line 128
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PopupNotificationActivity;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->onTouchEventMy(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 138
    iget-object v0, p0, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PopupNotificationActivity;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PopupNotificationActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PopupNotificationActivity;->onTouchEventMy(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/telegram/ui/PopupNotificationActivity$FrameLayoutTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/PopupNotificationActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PopupNotificationActivity;->onTouchEventMy(Landroid/view/MotionEvent;)Z

    .line 144
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 145
    return-void
.end method
