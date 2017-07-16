.class public Lorg/telegram/ui/Components/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final ANDROIDNS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final DEFAULT_VALUE:I = 0x32

.field private static final ROBOBUNNYNS:Ljava/lang/String; = "http://robobunny.com"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private layout:Landroid/widget/RelativeLayout;

.field private mCurrentValue:I

.field private mInterval:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnitsLeft:Ljava/lang/String;

.field private mUnitsRight:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->TAG:Ljava/lang/String;

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMaxValue:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMinValue:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mInterval:I

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->layout:Landroid/widget/RelativeLayout;

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->TAG:Ljava/lang/String;

    .line 31
    const/16 v0, 0x64

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMaxValue:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMinValue:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mInterval:I

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->layout:Landroid/widget/RelativeLayout;

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 82
    move-object v0, p4

    .line 84
    :cond_0
    return-object v0
.end method

.method private initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SeekBarPreference;->setValuesFromXml(Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMaxValue:I

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 58
    return-void
.end method

.method private setValuesFromXml(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const-string/jumbo v3, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v4, "max"

    const/16 v5, 0x64

    invoke-interface {p1, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMaxValue:I

    .line 62
    const-string/jumbo v3, "http://robobunny.com"

    const-string/jumbo v4, "min"

    const/4 v5, 0x0

    invoke-interface {p1, v3, v4, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMinValue:I

    .line 64
    const-string/jumbo v3, "http://robobunny.com"

    const-string/jumbo v4, "unitsLeft"

    const-string/jumbo v5, ""

    invoke-direct {p0, p1, v3, v4, v5}, Lorg/telegram/ui/Components/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 65
    const-string/jumbo v3, "http://robobunny.com"

    const-string/jumbo v4, "units"

    const-string/jumbo v5, ""

    invoke-direct {p0, p1, v3, v4, v5}, Lorg/telegram/ui/Components/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "units":Ljava/lang/String;
    const-string/jumbo v3, "http://robobunny.com"

    const-string/jumbo v4, "unitsRight"

    invoke-direct {p0, p1, v3, v4, v2}, Lorg/telegram/ui/Components/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 69
    :try_start_0
    const-string/jumbo v3, "http://robobunny.com"

    const-string/jumbo v4, "interval"

    invoke-interface {p1, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "newInterval":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "newInterval":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid interval value"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    :try_start_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 113
    .local v2, "oldContainer":Landroid/view/ViewParent;
    const v3, 0x7f0c005f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 115
    .local v1, "newContainer":Landroid/view/ViewGroup;
    if-eq v2, v1, :cond_1

    .line 117
    if-eqz v2, :cond_0

    .line 118
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "oldContainer":Landroid/view/ViewParent;
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 121
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 125
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    .end local v1    # "newContainer":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->layout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 135
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 138
    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SeekBarPreference;->updateView(Landroid/view/View;)V

    .line 142
    :goto_1
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error binding view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 139
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 93
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030015

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->layout:Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->layout:Landroid/widget/RelativeLayout;

    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error creating seek bar preference"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 4
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->layout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 214
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    if-nez p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 217
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 214
    goto :goto_0

    :cond_2
    move v1, v2

    .line 215
    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "ta"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 238
    const/16 v1, 0x32

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 239
    .local v0, "defaultValue":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 176
    :try_start_0
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMinValue:I

    add-int v1, p2, v2

    .line 178
    .local v1, "newValue":I
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 179
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMaxValue:I

    .line 186
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 187
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mCurrentValue:I

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMinValue:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 198
    .end local v1    # "newValue":I
    :goto_1
    return-void

    .line 180
    .restart local v1    # "newValue":I
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMinValue:I

    if-ge v1, v2, :cond_2

    .line 181
    iget v1, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMinValue:I

    goto :goto_0

    .line 182
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mInterval:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mInterval:I

    rem-int v2, v1, v2

    if-eqz v2, :cond_0

    .line 183
    int-to-float v2, v1

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mInterval:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mInterval:I

    mul-int v1, v2, v3

    goto :goto_0

    .line 192
    :cond_3
    iput v1, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mCurrentValue:I

    .line 193
    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SeekBarPreference;->persistInt(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    .end local v1    # "newValue":I
    :catch_0
    move-exception v0

    .line 196
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 6
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mCurrentValue:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/SeekBarPreference;->getPersistedInt(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mCurrentValue:I

    .line 262
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v2, 0x0

    .line 252
    .local v2, "temp":I
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 258
    :goto_1
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/SeekBarPreference;->persistInt(I)Z

    .line 259
    iput v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mCurrentValue:I

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/telegram/ui/Components/SeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid default value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 221
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SeekBarPreference;->notifyChanged()V

    .line 226
    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    const-string/jumbo v3, "Mb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "theme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 228
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "need_reboot"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 205
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 152
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v2, v0

    .line 154
    .local v2, "layout":Landroid/widget/RelativeLayout;
    const v5, 0x7f0c005e

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    .line 155
    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    iget v6, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mCurrentValue:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 158
    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mCurrentValue:I

    iget v7, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mMinValue:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 160
    const v5, 0x7f0c005d

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 161
    .local v4, "unitsRight":Landroid/widget/TextView;
    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v5, 0x7f0c005c

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 164
    .local v3, "unitsLeft":Landroid/widget/TextView;
    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v2    # "layout":Landroid/widget/RelativeLayout;
    .end local v3    # "unitsLeft":Landroid/widget/TextView;
    .end local v4    # "unitsRight":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/telegram/ui/Components/SeekBarPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error updating seek bar preference"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
