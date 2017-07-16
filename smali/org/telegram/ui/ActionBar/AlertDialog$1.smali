.class Lorg/telegram/ui/ActionBar/AlertDialog$1;
.super Landroid/widget/LinearLayout;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private inLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ActionBar/AlertDialog;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 257
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1$2;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$1;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1202(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1200(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 272
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 159
    const/4 v12, 0x1

    iput-boolean v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->inLayout:Z

    .line 160
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 161
    .local v11, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 163
    .local v8, "height":I
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1;->getPaddingTop()I

    move-result v12

    sub-int v12, v8, v12

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1;->getPaddingBottom()I

    move-result v13

    sub-int v10, v12, v13

    .local v10, "maxContentHeight":I
    move v2, v10

    .line 164
    .local v2, "availableHeight":I
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1;->getPaddingLeft()I

    move-result v12

    sub-int v12, v11, v12

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1;->getPaddingRight()I

    move-result v13

    sub-int v3, v12, v13

    .line 166
    .local v3, "availableWidth":I
    const/high16 v12, 0x42400000    # 48.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v12, v3, v12

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 167
    .local v6, "childWidthMeasureSpec":I
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 170
    .local v5, "childFullWidthMeasureSpec":I
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 171
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    .line 172
    .local v7, "count":I
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 173
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 174
    .local v4, "button":Landroid/widget/TextView;
    const/high16 v12, 0x41c00000    # 24.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v4    # "button":Landroid/widget/TextView;
    :cond_0
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v5, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 177
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 178
    .local v9, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    sub-int/2addr v2, v12

    .line 180
    .end local v1    # "a":I
    .end local v7    # "count":I
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 181
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v6, v0}, Landroid/widget/TextView;->measure(II)V

    .line 182
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    .restart local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    sub-int/2addr v2, v12

    .line 185
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$200(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v12

    if-nez v12, :cond_c

    .line 186
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 188
    .restart local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$400(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 189
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    if-nez v12, :cond_6

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$600(Lorg/telegram/ui/ActionBar/AlertDialog;)[Ljava/lang/CharSequence;

    move-result-object v12

    if-nez v12, :cond_6

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    :goto_1
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 190
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$000(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-nez v12, :cond_7

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    :goto_2
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 199
    :cond_3
    :goto_3
    iget v12, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    sub-int/2addr v2, v12

    .line 200
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v12

    const/high16 v13, -0x80000000

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v12, v5, v13}, Landroid/widget/ScrollView;->measure(II)V

    .line 201
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$300(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/ScrollView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v2, v12

    .line 225
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :goto_4
    sub-int v12, v10, v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0, v11, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$1;->setMeasuredDimension(II)V

    .line 226
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->inLayout:Z

    .line 228
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1000(Lorg/telegram/ui/ActionBar/AlertDialog;)I

    move-result v12

    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    if-eq v12, v13, :cond_5

    .line 229
    new-instance v12, Lorg/telegram/ui/ActionBar/AlertDialog$1$1;

    invoke-direct {v12, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$1$1;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$1;)V

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 253
    :cond_5
    return-void

    .line 189
    .restart local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 190
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 191
    :cond_8
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$600(Lorg/telegram/ui/ActionBar/AlertDialog;)[Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 192
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    if-nez v12, :cond_9

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_9

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    :goto_5
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 193
    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 192
    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    .line 194
    :cond_a
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-nez v12, :cond_3

    .line 195
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$100(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    if-nez v12, :cond_b

    const/high16 v12, 0x41980000    # 19.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    :goto_6
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 196
    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_3

    .line 195
    :cond_b
    const/4 v12, 0x0

    goto :goto_6

    .line 203
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$700(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 204
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$700(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    const/high16 v13, -0x80000000

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/widget/FrameLayout;->measure(II)V

    .line 205
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$700(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    .restart local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$700(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    sub-int/2addr v2, v12

    .line 214
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    :goto_7
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$800(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 215
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$800(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object v12

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v12, v6, v13}, Lorg/telegram/ui/Components/LineProgressView;->measure(II)V

    .line 216
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$800(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/LineProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 217
    .restart local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$800(Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/Components/LineProgressView;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/Components/LineProgressView;->getMeasuredHeight()I

    move-result v12

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    sub-int/2addr v2, v12

    .line 219
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    const/high16 v13, -0x80000000

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/widget/TextView;->measure(II)V

    .line 220
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 221
    .restart local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$900(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    sub-int/2addr v2, v12

    goto/16 :goto_4

    .line 207
    .end local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_e
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 208
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    const/high16 v13, -0x80000000

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/widget/TextView;->measure(II)V

    .line 209
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_d

    .line 210
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    .restart local v9    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v12, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$500(Lorg/telegram/ui/ActionBar/AlertDialog;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    sub-int/2addr v2, v12

    goto/16 :goto_7
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$1;->inLayout:Z

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0
.end method
