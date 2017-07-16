.class Lorg/telegram/ui/Components/ChatActivityEnterView$15;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 921
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v5, 0x1

    .line 924
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    .line 926
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v4

    const v6, -0x25a9b3

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v6, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 928
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 929
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$702(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 930
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x96

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 997
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 998
    return v5

    .line 932
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 934
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    .line 936
    :cond_4
    sget-boolean v6, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->chatEditTextIconsColor:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 938
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 939
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5000(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 940
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6

    move v4, v5

    :cond_6
    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5100(Lorg/telegram/ui/Components/ChatActivityEnterView;ZZ)V

    goto :goto_0

    .line 942
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 943
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 944
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(I)V

    .line 948
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 949
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto :goto_0

    .line 946
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    goto :goto_1

    .line 951
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 952
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 953
    .local v3, "x":F
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    neg-float v6, v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_a

    .line 954
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$4900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 955
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordVideo(I)V

    .line 959
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5202(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 960
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    .line 963
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    add-float/2addr v3, v4

    .line 964
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 965
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_c

    .line 966
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    sub-float v1, v3, v4

    .line 967
    .local v1, "dist":F
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setTranslationX(F)V

    .line 968
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    float-to-int v6, v1

    add-int/2addr v4, v6

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 969
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v6

    div-float v6, v1, v6

    add-float v0, v4, v6

    .line 971
    .local v0, "alpha":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_f

    .line 972
    const/high16 v0, 0x3f800000    # 1.0f

    .line 976
    :cond_b
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 978
    .end local v0    # "alpha":F
    .end local v1    # "dist":F
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getX()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_d

    .line 979
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1100(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpl-float v4, v4, v9

    if-nez v4, :cond_d

    .line 980
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 981
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5302(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 982
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    cmpg-float v4, v4, v10

    if-gtz v4, :cond_10

    .line 983
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5302(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 989
    :cond_d
    :goto_4
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    if-le v4, v6, :cond_1

    .line 990
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 991
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->setTranslationX(F)V

    .line 992
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 993
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/LinearLayout;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 994
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4, v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1102(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto/16 :goto_0

    .line 957
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    goto/16 :goto_2

    .line 973
    .restart local v0    # "alpha":F
    .restart local v1    # "dist":F
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_f
    cmpg-float v4, v0, v10

    if-gez v4, :cond_b

    .line 974
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 984
    .end local v0    # "alpha":F
    .end local v1    # "dist":F
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5300(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result v4

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_d

    .line 985
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$15;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$5302(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    goto :goto_4
.end method
