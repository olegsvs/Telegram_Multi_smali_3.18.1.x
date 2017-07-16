.class final Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChatDialogsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0xa

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0xa


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;)V
    .locals 0

    .prologue
    .line 912
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;Lorg/telegram/ui/Components/ChatDialogsView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;
    .param p2, "x1"    # Lorg/telegram/ui/Components/ChatDialogsView$1;

    .prologue
    .line 912
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;-><init>(Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 920
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    .line 925
    const/4 v2, 0x0

    .line 926
    .local v2, "result":Z
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->this$0:Lorg/telegram/ui/Components/ChatDialogsView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/ChatDialogsView;->access$1202(Lorg/telegram/ui/Components/ChatDialogsView;Z)Z

    .line 928
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v1, v3, v4

    .line 929
    .local v1, "diffY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float v0, v3, v4

    .line 930
    .local v0, "diffX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 931
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 932
    cmpl-float v3, v0, v6

    if-lez v3, :cond_2

    .line 933
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->onSwipeRight()V

    .line 938
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 947
    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 949
    return v2

    .line 935
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->onSwipeLeft()V

    goto :goto_0

    .line 939
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 940
    cmpl-float v3, v1, v6

    if-lez v3, :cond_4

    .line 941
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->onSwipeBottom()V

    .line 945
    :goto_2
    const/4 v2, 0x1

    goto :goto_1

    .line 943
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener$GestureListener;->this$1:Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatDialogsView$OnSwipeTouchListener;->onSwipeTop()V

    goto :goto_2
.end method
