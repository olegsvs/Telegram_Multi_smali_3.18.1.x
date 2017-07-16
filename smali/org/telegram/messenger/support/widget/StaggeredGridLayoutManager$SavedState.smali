.class public Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorPosition:I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field

.field mLastLayoutRTL:Z

.field mReverseLayout:Z

.field mSpanLookup:[I

.field mSpanLookupSize:I

.field mSpanOffsets:[I

.field mSpanOffsetsSize:I

.field mVisibleAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3081
    new-instance v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState$1;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3006
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3009
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 3010
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 3011
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 3012
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_0

    .line 3013
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 3014
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3017
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 3018
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    if-lez v0, :cond_1

    .line 3019
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 3020
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3022
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 3023
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 3024
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 3026
    const-class v0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3027
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3026
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 3028
    return-void

    :cond_2
    move v0, v2

    .line 3022
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3023
    goto :goto_1

    :cond_4
    move v1, v2

    .line 3024
    goto :goto_2
.end method

.method public constructor <init>(Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;)V
    .locals 1
    .param p1, "other"    # Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;

    .prologue
    .line 3030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3031
    iget v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 3032
    iget v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 3033
    iget v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 3034
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 3035
    iget v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 3036
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 3037
    iget-boolean v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 3038
    iget-boolean v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 3039
    iget-boolean v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 3040
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 3041
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3060
    const/4 v0, 0x0

    return v0
.end method

.method invalidateAnchorPositionInfo()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3052
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 3053
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 3054
    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 3055
    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 3056
    return-void
.end method

.method invalidateSpanInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3044
    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 3045
    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 3046
    iput v1, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 3047
    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 3048
    iput-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    .line 3049
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3065
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3066
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3067
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3068
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_0

    .line 3069
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3071
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3072
    iget v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    if-lez v0, :cond_1

    .line 3073
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3075
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3076
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3077
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3078
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3079
    return-void

    :cond_2
    move v0, v2

    .line 3075
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3076
    goto :goto_1

    :cond_4
    move v1, v2

    .line 3077
    goto :goto_2
.end method
