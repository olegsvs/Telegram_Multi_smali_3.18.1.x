.class Lorg/telegram/ui/PhotoPickerActivity$5$1;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity$5;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoPickerActivity$5;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PhotoPickerActivity$5;

    .prologue
    .line 315
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$5$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didFinishEditVideo(Ljava/lang/String;JJIIIIIIJJLjava/lang/String;)V
    .locals 12
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "resultWidth"    # I
    .param p7, "resultHeight"    # I
    .param p8, "rotationValue"    # I
    .param p9, "originalWidth"    # I
    .param p10, "originalHeight"    # I
    .param p11, "bitrate"    # I
    .param p12, "estimatedSize"    # J
    .param p14, "estimatedDuration"    # J
    .param p16, "caption"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$5$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoPickerActivity;->removeSelfFromStack()V

    .line 319
    new-instance v5, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v5}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    .line 320
    .local v5, "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    iput-wide p2, v5, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 321
    move-wide/from16 v0, p4

    iput-wide v0, v5, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 322
    move/from16 v0, p8

    iput v0, v5, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 323
    move/from16 v0, p9

    iput v0, v5, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 324
    move/from16 v0, p10

    iput v0, v5, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 325
    move/from16 v0, p11

    iput v0, v5, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 326
    move/from16 v0, p6

    iput v0, v5, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 327
    move/from16 v0, p7

    iput v0, v5, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 328
    iput-object p1, v5, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 329
    iget-object v2, p0, Lorg/telegram/ui/PhotoPickerActivity$5$1;->this$1:Lorg/telegram/ui/PhotoPickerActivity$5;

    iget-object v2, v2, Lorg/telegram/ui/PhotoPickerActivity$5;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-static {v2}, Lorg/telegram/ui/PhotoPickerActivity;->access$1600(Lorg/telegram/ui/PhotoPickerActivity;)Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;

    move-result-object v3

    move-object v4, p1

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    move-object/from16 v10, p16

    invoke-interface/range {v3 .. v10}, Lorg/telegram/ui/PhotoPickerActivity$PhotoPickerActivityDelegate;->didSelectVideo(Ljava/lang/String;Lorg/telegram/messenger/VideoEditedInfo;JJLjava/lang/String;)V

    .line 330
    return-void
.end method
