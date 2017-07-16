.class Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PlusPagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 781
    new-instance v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState$1;

    invoke-direct {v0}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState$1;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 771
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 773
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$1;

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 767
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 768
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 777
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 778
    iget v0, p0, Lorg/telegram/ui/Components/PlusPagerSlidingTabStrip$SavedState;->currentPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    return-void
.end method
