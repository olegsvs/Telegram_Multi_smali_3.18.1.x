.class public Lorg/telegram/ui/Components/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;,
        Lorg/telegram/ui/Components/NumberPicker$Formatter;,
        Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;,
        Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x0

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Lorg/telegram/ui/Components/Scroller;

.field private mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mInputText:Landroid/widget/TextView;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMinHeight:I

.field private mMinValue:I

.field private mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

.field private mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectionDivider:Landroid/graphics/Paint;

.field private mSelectionDividerHeight:I

.field private mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSolidColor:I

.field private mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 80
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 185
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->init()V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 80
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 190
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->init()V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 80
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 195
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->init()V

    .line 196
    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/NumberPicker;

    .prologue
    .line 45
    iget-wide v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 764
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z

    .line 768
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 769
    if-eqz p1, :cond_1

    .line 770
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    .line 774
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    .line 775
    return-void

    .line 772
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 4
    .param p1, "selectorIndices"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 851
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    aget v1, p1, v3

    add-int/lit8 v0, v1, -0x1

    .line 853
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_0

    .line 854
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    .line 856
    :cond_0
    aput v0, p1, v2

    .line 857
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 858
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 862
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 863
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 877
    :goto_0
    return-void

    .line 866
    :cond_0
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 867
    :cond_1
    const-string/jumbo v2, ""

    .line 876
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 869
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 870
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 871
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 872
    goto :goto_1

    .line 873
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 952
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 953
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 954
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 955
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 956
    if-lez v4, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 958
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/Scroller;->startScroll(IIIII)V

    .line 959
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    .line 960
    const/4 v1, 0x1

    .line 962
    :cond_1
    return v1

    .line 956
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 820
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 822
    if-lez p1, :cond_0

    .line 823
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    .line 828
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    .line 829
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 880
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 1061
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 922
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 924
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 947
    :goto_0
    return v1

    .line 929
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 931
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 932
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 929
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 942
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 925
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 947
    :goto_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 943
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 832
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 833
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 837
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 834
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 835
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private incrementSelectorIndices([I)V
    .locals 4
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 841
    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 842
    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget v1, p1, v1

    add-int/lit8 v0, v1, 0x1

    .line 843
    .local v0, "nextScrollSelectorIndex":I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_0

    .line 844
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    .line 846
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 847
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 848
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, -0x1

    .line 124
    iput v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSolidColor:I

    .line 125
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    .line 126
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    const-string/jumbo v7, "dialogButton"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    .line 131
    const/high16 v4, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividersDistance:I

    .line 133
    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    .line 135
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    .line 136
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    if-eq v4, v8, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    if-eq v4, v8, :cond_1

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    iget v7, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    if-le v4, v7, :cond_1

    .line 137
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "minHeight > maxHeight"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_1
    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v5, v4, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    .line 142
    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    .line 143
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    if-eq v4, v8, :cond_2

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-eq v4, v8, :cond_2

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    iget v7, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-le v4, v7, :cond_2

    .line 144
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "minWidth > maxWidth"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-ne v4, v8, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mComputeMaxWidth:Z

    .line 149
    new-instance v4, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;-><init>(Lorg/telegram/ui/Components/NumberPicker;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    .line 151
    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/NumberPicker;->setWillNotDraw(Z)V

    .line 153
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    .line 154
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 156
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const-string/jumbo v7, "dialogTextBlack"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 158
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v6}, Lorg/telegram/ui/Components/NumberPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 162
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    .line 163
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinimumFlingVelocity:I

    .line 164
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaximumFlingVelocity:I

    .line 165
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    .line 167
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 168
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 170
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 172
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 173
    .local v1, "colors":Landroid/content/res/ColorStateList;
    sget-object v4, Lorg/telegram/ui/Components/NumberPicker;->ENABLED_STATE_SET:[I

    invoke-virtual {v1, v4, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 174
    .local v0, "color":I
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iput-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 177
    new-instance v4, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    .line 178
    new-instance v4, Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x40200000    # 2.5f

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v4, v5, v6}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    .line 180
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 181
    return-void

    .end local v0    # "color":I
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    .end local v2    # "configuration":Landroid/view/ViewConfiguration;
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_3
    move v4, v6

    .line 147
    goto/16 :goto_0
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 792
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 793
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setFadingEdgeLength(I)V

    .line 794
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 778
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 779
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 780
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 781
    .local v4, "totalTextHeight":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 782
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 783
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    .line 784
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mTextSize:I

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    .line 785
    iget-object v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 786
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    .line 787
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 788
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 789
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 730
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 731
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 732
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v0

    .line 733
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 734
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 735
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 736
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 738
    :cond_0
    aput v2, v3, v1

    .line 739
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 680
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 691
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 683
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 684
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 685
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 693
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 689
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 691
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 685
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Lorg/telegram/ui/Components/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Lorg/telegram/ui/Components/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 230
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 231
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 232
    .local v0, "amountToScroll":I
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 233
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 234
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 235
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 236
    if-lez v2, :cond_1

    .line 237
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 242
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 243
    invoke-virtual {p0, v4, v0}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    .line 246
    :goto_1
    return v3

    .line 239
    :cond_1
    iget v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 246
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;->onValueChange(Lorg/telegram/ui/Components/NumberPicker;II)V

    .line 896
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 810
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    .line 814
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;->onScrollStateChange(Lorg/telegram/ui/Components/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Lorg/telegram/ui/Components/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Lorg/telegram/ui/Components/Scroller;

    .prologue
    .line 797
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    if-ne p1, v0, :cond_2

    .line 798
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 801
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    .line 807
    :cond_1
    :goto_0
    return-void

    .line 803
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 804
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 899
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 900
    new-instance v0, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lorg/telegram/ui/Components/NumberPicker;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 904
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lorg/telegram/ui/Components/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 906
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 918
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    .line 919
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lorg/telegram/ui/Components/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 912
    :cond_0
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I

    .prologue
    .line 708
    move v0, p0

    .line 709
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 710
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 711
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 726
    :goto_0
    const/high16 v3, -0x1000000

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 713
    :sswitch_0
    move v0, p0

    .line 714
    goto :goto_0

    .line 716
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 717
    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    goto :goto_0

    .line 719
    :cond_0
    move v0, p0

    .line 721
    goto :goto_0

    .line 723
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 711
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 699
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 700
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 701
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 703
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 744
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 761
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 748
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 753
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 754
    .local v0, "previous":I
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 755
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 756
    if-eqz p2, :cond_1

    .line 757
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/NumberPicker;->notifyChange(II)V

    .line 759
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 760
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_0

    .line 750
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 751
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private tryComputeMaxWidth()V
    .locals 12

    .prologue
    .line 516
    iget-boolean v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    const/4 v5, 0x0

    .line 520
    .local v5, "maxTextWidth":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 521
    const/4 v4, 0x0

    .line 522
    .local v4, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 523
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/ui/Components/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 524
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v4

    if-lez v8, :cond_2

    .line 525
    move v4, v1

    .line 522
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 528
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v6, 0x0

    .line 529
    .local v6, "numberOfDigits":I
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    .line 530
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 531
    add-int/lit8 v6, v6, 0x1

    .line 532
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 534
    :cond_4
    int-to-float v8, v6

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 543
    .end local v0    # "current":I
    .end local v2    # "i":I
    .end local v4    # "maxDigitWidth":F
    .end local v6    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 544
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    if-eq v8, v5, :cond_0

    .line 545
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    if-le v5, v8, :cond_8

    .line 546
    iput v5, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    .line 550
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_0

    .line 536
    :cond_6
    iget-object v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v10, :cond_5

    aget-object v3, v9, v8

    .line 537
    .local v3, "mDisplayedValue":Ljava/lang/String;
    iget-object v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 538
    .local v7, "textWidth":F
    int-to-float v11, v5

    cmpl-float v11, v7, v11

    if-lez v11, :cond_7

    .line 539
    float-to-int v5, v7

    .line 536
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 548
    .end local v3    # "mDisplayedValue":Ljava/lang/String;
    .end local v7    # "textWidth":F
    :cond_8
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 884
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 886
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    const/4 v1, 0x1

    .line 889
    :goto_1
    return v1

    .line 884
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 889
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 417
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    .line 418
    .local v1, "scroller":Lorg/telegram/ui/Components/Scroller;
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    .line 420
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    .line 425
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v0

    .line 426
    .local v0, "currentScrollerY":I
    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 427
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 429
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    .line 430
    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mPreviousScrollerY:I

    .line 431
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 432
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->onScrollerFinished(Lorg/telegram/ui/Components/Scroller;)V

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 481
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 371
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 372
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 400
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 375
    :sswitch_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 379
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 381
    :pswitch_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    .line 382
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 383
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->requestFocus()Z

    .line 384
    iput v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 385
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 386
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    .line 382
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 387
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 393
    :pswitch_1
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 394
    const/4 v1, -0x1

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 372
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 360
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 366
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 363
    :pswitch_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 406
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 412
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 409
    :pswitch_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 640
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 635
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 645
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 646
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 647
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 651
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    move/from16 v17, v0

    .line 652
    .local v17, "x":F
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v0, v3

    move/from16 v18, v0

    .line 655
    .local v18, "y":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 656
    .local v14, "selectorIndices":[I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v3, v14

    if-ge v11, v3, :cond_2

    .line 657
    aget v13, v14, v11

    .line 658
    .local v13, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 664
    .local v12, "scrollSelectorValue":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v11, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 665
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 667
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    int-to-float v3, v3

    add-float v18, v18, v3

    .line 656
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 670
    .end local v12    # "scrollSelectorValue":Ljava/lang/String;
    .end local v13    # "selectorIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v16, v0

    .line 671
    .local v16, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    add-int v10, v16, v3

    .line 672
    .local v10, "bottomOfTopDivider":I
    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 674
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 675
    .local v9, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    sub-int v15, v9, v3

    .line 676
    .local v15, "topOfBottomDivider":I
    const/4 v4, 0x0

    int-to-float v5, v15

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/NumberPicker;->getRight()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v9

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDivider:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 677
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 251
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    :goto_0
    return v1

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 255
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 257
    :pswitch_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 258
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventTime:J

    .line 261
    iput-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mIngonreMoveEvents:Z

    .line 262
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 263
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez v3, :cond_1

    .line 264
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 271
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 272
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 273
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 274
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 275
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    :cond_2
    :goto_2
    move v1, v2

    .line 284
    goto :goto_0

    .line 266
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 267
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    if-nez v3, :cond_1

    .line 268
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 276
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFlingScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    .line 278
    iget-object v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mAdjustScroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Scroller;->forceFinished(Z)V

    goto :goto_2

    .line 279
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 280
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v1, v4, v5}, Lorg/telegram/ui/Components/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_2

    .line 281
    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 282
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {p0, v2, v4, v5}, Lorg/telegram/ui/Components/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_2

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 201
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 203
    .local v6, "msrdHght":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 204
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 205
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 206
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 207
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 208
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 209
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheel()V

    .line 213
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeFadingEdges()V

    .line 214
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    .line 215
    iget v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Components/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 217
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 221
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lorg/telegram/ui/Components/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 222
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lorg/telegram/ui/Components/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 223
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 224
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 225
    .local v3, "widthSize":I
    iget v4, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lorg/telegram/ui/Components/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 226
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMeasuredDimension(II)V

    .line 227
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 293
    const/4 v10, 0x0

    .line 354
    :goto_0
    return v10

    .line 295
    :cond_0
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 296
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 298
    :cond_1
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 300
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 354
    :cond_2
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 302
    :pswitch_0
    iget-boolean v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mIngonreMoveEvents:Z

    if-nez v10, :cond_2

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 306
    .local v1, "currentMoveY":F
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 307
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 308
    .local v2, "deltaDownY":I
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_3

    .line 309
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeAllCallbacks()V

    .line 310
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    .line 317
    .end local v2    # "deltaDownY":I
    :cond_3
    :goto_2
    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 313
    :cond_4
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 314
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Lorg/telegram/ui/Components/NumberPicker;->scrollBy(II)V

    .line 315
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_2

    .line 321
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 322
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->cancel()V

    .line 323
    iget-object v9, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 324
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 325
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 326
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_5

    .line 327
    invoke-direct {p0, v7}, Lorg/telegram/ui/Components/NumberPicker;->fling(I)V

    .line 328
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    .line 349
    :goto_3
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 350
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 330
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 331
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 332
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lorg/telegram/ui/Components/NumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 333
    .local v4, "deltaTime":J
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_8

    .line 334
    iget v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x1

    .line 335
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_7

    .line 336
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    .line 337
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    .line 347
    .end local v8    # "selectorIndexOffset":I
    :cond_6
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 339
    .restart local v8    # "selectorIndexOffset":I
    :cond_7
    if-gez v8, :cond_6

    .line 340
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/NumberPicker;->changeValueByOne(Z)V

    .line 341
    iget-object v10, p0, Lorg/telegram/ui/Components/NumberPicker;->mPressedStateHelper:Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 345
    .end local v8    # "selectorIndexOffset":I
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    .line 447
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 448
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 452
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 455
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 456
    :cond_3
    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 457
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 458
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->decrementSelectorIndices([I)V

    .line 459
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    .line 460
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 461
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 464
    :cond_4
    :goto_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 465
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    .line 466
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->incrementSelectorIndices([I)V

    .line 467
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    .line 468
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 469
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 631
    :goto_0
    return-void

    .line 627
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 628
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 629
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 630
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 442
    return-void
.end method

.method public setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lorg/telegram/ui/Components/NumberPicker$Formatter;

    .prologue
    .line 503
    iget-object v0, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 506
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mFormatter:Lorg/telegram/ui/Components/NumberPicker$Formatter;

    .line 507
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 508
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 601
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 617
    :goto_0
    return-void

    .line 604
    :cond_0
    if-gez p1, :cond_1

    .line 605
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 607
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    .line 608
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 609
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 611
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 612
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 613
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 614
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 615
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    .line 616
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_0

    .line 611
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 578
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 594
    :goto_0
    return-void

    .line 581
    :cond_0
    if-gez p1, :cond_1

    .line 582
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    .line 585
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 586
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    iput v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mValue:I

    .line 588
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 589
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 590
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->initializeSelectorWheelIndices()V

    .line 591
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->updateInputTextView()Z

    .line 592
    invoke-direct {p0}, Lorg/telegram/ui/Components/NumberPicker;->tryComputeMaxWidth()V

    .line 593
    invoke-virtual {p0}, Lorg/telegram/ui/Components/NumberPicker;->invalidate()V

    goto :goto_0

    .line 588
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 566
    iput-wide p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mLongPressUpdateInterval:J

    .line 567
    return-void
.end method

.method public setOnScrollListener(Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    .prologue
    .line 499
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnScrollListener:Lorg/telegram/ui/Components/NumberPicker$OnScrollListener;

    .line 500
    return-void
.end method

.method public setOnValueChangedListener(Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    .prologue
    .line 495
    iput-object p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mOnValueChangeListener:Lorg/telegram/ui/Components/NumberPicker$OnValueChangeListener;

    .line 496
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setValueInternal(IZ)V

    .line 513
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 559
    iget v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 560
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 561
    iput-boolean p1, p0, Lorg/telegram/ui/Components/NumberPicker;->mWrapSelectorWheel:Z

    .line 563
    :cond_1
    return-void

    .line 559
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
