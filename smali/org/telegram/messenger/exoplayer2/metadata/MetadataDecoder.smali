.class public interface abstract Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoder;
.super Ljava/lang/Object;
.source "MetadataDecoder.java"


# virtual methods
.method public abstract canDecode(Ljava/lang/String;)Z
.end method

.method public abstract decode([BI)Lorg/telegram/messenger/exoplayer2/metadata/Metadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer2/metadata/MetadataDecoderException;
        }
    .end annotation
.end method
