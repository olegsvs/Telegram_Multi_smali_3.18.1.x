.class Lorg/telegram/ui/ChatActivity$71;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openVideoEditor(Ljava/lang/String;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 5584
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didFinishEditVideo(Ljava/lang/String;JJIIIIIIJJLjava/lang/String;)V
    .locals 16
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
    .line 5587
    new-instance v10, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v10}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    .line 5588
    .local v10, "videoEditedInfo":Lorg/telegram/messenger/VideoEditedInfo;
    move-wide/from16 v0, p2

    iput-wide v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    .line 5589
    move-wide/from16 v0, p4

    iput-wide v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    .line 5590
    move/from16 v0, p8

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    .line 5591
    move/from16 v0, p9

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    .line 5592
    move/from16 v0, p10

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    .line 5593
    move/from16 v0, p11

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    .line 5594
    move/from16 v0, p6

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    .line 5595
    move/from16 v0, p7

    iput v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    .line 5596
    move-object/from16 v0, p1

    iput-object v0, v10, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    .line 5597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    move-object/from16 v3, p1

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v14, p16

    invoke-static/range {v3 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 5598
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 5599
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$71;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 5600
    return-void
.end method
